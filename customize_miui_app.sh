#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
apkBaseName=$1
tempSmaliDir=$2

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name *.patch`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}


if [ $1 = "MiuiHome" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	patch $tempSmaliDir/res/xml/settings_headers.xml < patch/settings_headers.patch
	rm -rf $tempSmaliDir/res/xml/*.orig
fi

