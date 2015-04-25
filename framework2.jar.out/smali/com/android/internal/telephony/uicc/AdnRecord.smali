.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xff

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"


# instance fields
.field aas:I

.field additionalNumber:Ljava/lang/String;

.field additionalNumber2:Ljava/lang/String;

.field additionalNumber3:Ljava/lang/String;

.field grpIds:Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I

.field result:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 166
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 167
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 178
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 179
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 180
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 183
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "emails"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 204
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 205
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 206
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 208
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 210
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 211
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 212
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"
    .parameter "emails"
    .parameter "grps"

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 191
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 196
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 199
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 154
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 158
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 138
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 146
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 150
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 133
    return-void
.end method

.method private isContainChineseChar(Ljava/lang/String;)Z
    .locals 5
    .parameter "alphTag"

    .prologue
    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 545
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 546
    const-string v3, "[\u4e00-\u9fa5]"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    const/4 v2, 0x1

    .line 552
    :cond_0
    return v2

    .line 545
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPhoneNumberInvaild(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, tempPhoneNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    const-string v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const/4 v1, 0x1

    .line 564
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 497
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .local v2, numberLength:I
    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 521
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 523
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 524
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 525
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 526
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 527
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 530
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 532
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 533
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 534
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 535
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 536
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 537
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 327
    if-ne p0, p1, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 330
    :cond_0
    if-nez p0, :cond_1

    .line 331
    const-string p0, ""

    .line 333
    :cond_1
    if-nez p1, :cond_2

    .line 334
    const-string p1, ""

    .line 336
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 465
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 474
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .parameter "recordSize"

    .prologue
    .line 375
    const-string v10, "AdnRecord"

    const-string v11, "in BuildAdnString"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    add-int/lit8 v7, p1, -0xe

    .line 380
    .local v7, footerOffset:I
    const/4 v1, 0x0

    .line 383
    .local v1, alphaIdLength:I
    new-array v0, p1, [B

    .line 384
    .local v0, adnString:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, p1, :cond_0

    .line 385
    const/4 v10, -0x1

    aput-byte v10, v0, v9

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 387
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 388
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] invaild number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v10, -0xf

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 390
    const/4 v0, 0x0

    .line 453
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 392
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 393
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 421
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 422
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 423
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_0
    const-string v10, "AdnRecord"

    const-string v11, "call getBytes"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 427
    .local v3, byteTag:[B
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    const/4 v10, 0x1

    new-array v8, v10, [B

    .line 433
    .local v8, header:[B
    const/4 v10, 0x0

    const/16 v11, -0x80

    aput-byte v11, v8, v10

    .line 434
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    array-length v10, v3

    add-int/lit8 v1, v10, 0x1

    .line 437
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arrarString"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v3           #byteTag:[B
    .end local v8           #header:[B
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v10, :cond_1

    if-le v1, v7, :cond_1

    .line 447
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 448
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",alphaIdLength:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 396
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x14

    if-le v10, v11, :cond_5

    .line 398
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 399
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 403
    :cond_5
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 405
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 410
    .local v2, bcdNumber:[B
    const/4 v10, 0x0

    add-int/lit8 v11, v7, 0x1

    array-length v12, v2

    invoke-static {v2, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    add-int/lit8 v10, v7, 0x0

    array-length v11, v2

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 415
    add-int/lit8 v10, v7, 0xc

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 417
    add-int/lit8 v10, v7, 0xd

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    goto/16 :goto_2

    .line 406
    .end local v2           #bcdNumber:[B
    :catch_0
    move-exception v6

    .line 407
    .local v6, exc:Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 408
    .local v4, cmdEx:Lcom/android/internal/telephony/CommandException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid number for BCD "

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 428
    .end local v4           #cmdEx:Lcom/android/internal/telephony/CommandException;
    .end local v6           #exc:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 429
    .local v5, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] getBytes exception"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 439
    .end local v5           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_6
    const-string v10, "AdnRecord"

    const-string v11, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 441
    .restart local v3       #byteTag:[B
    array-length v1, v3

    .line 442
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public getAasIndex()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, number:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 243
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_2
    const-string v1, "AdnRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdditionalNumber Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNumber()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    return v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAasIndex(I)V
    .locals 0
    .parameter "aas"

    .prologue
    .line 283
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 284
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setAnr(Ljava/lang/String;I)V
    .locals 3
    .parameter "anr"
    .parameter "index"

    .prologue
    .line 271
    if-nez p2, :cond_0

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 274
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 276
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_2
    const-string v0, "AdnRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnr Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .locals 0
    .parameter "grps"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 300
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .parameter "sne"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",anr3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",emails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",grpIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 353
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    return-void
.end method
