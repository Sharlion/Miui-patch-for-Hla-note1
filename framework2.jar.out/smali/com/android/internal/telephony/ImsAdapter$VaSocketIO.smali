.class public Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
.super Ljava/lang/Thread;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VaSocketIO"
.end annotation


# instance fields
.field private IS_ENG_BUILD:Z

.field private IS_USER_BUILD:Z

.field private buf:[B

.field private mDin:Ljava/io/DataInputStream;

.field private mId:I

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field private mTyp:I

.field final synthetic this$0:Lcom/android/internal/telephony/ImsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ImsAdapter;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "socket_name"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mTyp:I

    .line 208
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mId:I

    .line 209
    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 211
    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 212
    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 213
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    .line 214
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->IS_ENG_BUILD:Z

    .line 217
    iput-object p2, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 219
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    .line 220
    const-string v0, "ImsAdapter"

    const-string v1, "VaSocketIO(): Enter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method private dumpEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 366
    const-string v0, "ImsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpEvent: reqiest_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private readEvent()Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v4, "ImsAdapter"

    const-string v5, "readEvent Enter"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->readInt()I

    move-result v3

    .line 354
    .local v3, request_id:I
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->readInt()I

    move-result v1

    .line 355
    .local v1, data_len:I
    new-array v0, v1, [B

    .line 356
    .local v0, buf:[B
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->readFully([BII)V

    .line 358
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 359
    .local v2, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 361
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 362
    return-object v2
.end method

.method private readFully([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 344
    return-void
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private writeBytes([BI)V
    .locals 2
    .parameter "value"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 303
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public connectSocket()Z
    .locals 6

    .prologue
    .line 259
    const-string v3, "ImsAdapter"

    const-string v4, "connectSocket() Enter"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 262
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 266
    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 267
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 269
    .local v0, addr:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 271
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 272
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, sendBufferSize:I
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v2

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 277
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v3, 0x1

    .end local v0           #addr:Landroid/net/LocalSocketAddress;
    .end local v2           #sendBufferSize:I
    :goto_0
    return v3

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 281
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public disconnectSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    const-string v1, "ImsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectSocket() Enter, mOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 296
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 297
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 299
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 296
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    goto :goto_0

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 296
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 297
    iput-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 295
    throw v1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 224
    const-string v3, "ImsAdapter"

    const-string v4, "VaSocketIO(): Run"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v3, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->readEvent()Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v1

    .line 233
    .local v1, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    if-eqz v1, :cond_0

    .line 234
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 235
    .local v2, msg:Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->access$100()Lcom/android/internal/telephony/ImsEventDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 239
    .end local v1           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/InterruptedIOException;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 241
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    #getter for: Lcom/android/internal/telephony/ImsAdapter;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/ImsAdapter;->access$200(Lcom/android/internal/telephony/ImsAdapter;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V

    .line 245
    const-string v3, "ImsAdapter"

    const-string v4, "VaSocketIO(): InterruptedIOException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    #getter for: Lcom/android/internal/telephony/ImsAdapter;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v3}, Lcom/android/internal/telephony/ImsAdapter;->access$200(Lcom/android/internal/telephony/ImsAdapter;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    .line 252
    :cond_2
    const-string v3, "ImsAdapter"

    const-string v4, "VaSocketIO(): Exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I
    .locals 4
    .parameter "event"

    .prologue
    .line 312
    const-string v2, "ImsAdapter"

    const-string v3, "writeEvent Enter"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, -0x1

    .line 315
    .local v1, ret:I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 319
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 320
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeBytes([BI)V

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 323
    const/4 v1, 0x0

    .line 328
    :goto_0
    monitor-exit p0

    move v2, v1

    .line 334
    :goto_1
    return v2

    .line 326
    :cond_0
    const-string v2, "ImsAdapter"

    const-string v3, "mOut is null, socket is not setup"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const/4 v2, -0x1

    goto :goto_1
.end method
