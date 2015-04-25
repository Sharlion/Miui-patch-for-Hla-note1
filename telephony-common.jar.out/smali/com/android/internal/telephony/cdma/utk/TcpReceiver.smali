.class Lcom/android/internal/telephony/cdma/utk/TcpReceiver;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBufSize:I

.field private mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .parameter "socket"
    .parameter "bufSize"
    .parameter "ch"

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 910
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 911
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    .line 915
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TcpReceiver"

    const-string v2, " get input stream fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 923
    const-string v4, "TcpReceiver"

    const-string v5, " enter TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mRun:Z

    if-eqz v4, :cond_2

    .line 926
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    new-array v3, v4, [B

    .line 927
    .local v3, tmp:[B
    const/4 v2, 0x0

    .line 931
    .local v2, readLen:I
    :try_start_0
    const-string v4, "TcpReceiver"

    const-string v5, " wait data comming..."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 933
    const-string v4, "TcpReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " read data len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    if-lez v2, :cond_0

    .line 937
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    if-ge v2, v4, :cond_1

    .line 938
    new-array v0, v2, [B

    .line 939
    .local v0, buf:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 947
    .end local v0           #buf:[B
    :catch_0
    move-exception v1

    .line 948
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TcpReceiver"

    const-string v5, " catch IOException"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    move-object v0, v3

    .restart local v0       #buf:[B
    goto :goto_1

    .line 953
    .end local v0           #buf:[B
    .end local v2           #readLen:I
    .end local v3           #tmp:[B
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 958
    :goto_2
    const-string v4, "TcpReceiver"

    const-string v5, " exit TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    return-void

    .line 954
    :catch_1
    move-exception v4

    goto :goto_2
.end method
