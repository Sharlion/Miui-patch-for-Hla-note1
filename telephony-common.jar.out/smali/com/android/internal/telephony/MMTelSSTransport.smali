.class public final Lcom/android/internal/telephony/MMTelSSTransport;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final DISABLE_MODE_ADD_RULE_DEACTIVATED_TAG:I = 0x2

.field static final DISABLE_MODE_CHANGE_CB_ALLOW:I = 0x3

.field static final DISABLE_MODE_DELETE_RULE:I = 0x1

.field static final EVENT_RADIO_AVAILABLE:I = 0x4

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field static final EVENT_RADIO_ON:I = 0x5

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport; = null

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSS"

.field static final MMTELSS_MAX_COMMAND_BYTES:I = 0x2000

.field static final MMTELSS_REQ_GET_CB:I = 0x7

.field static final MMTELSS_REQ_GET_CF:I = 0x9

.field static final MMTELSS_REQ_GET_CLIP:I = 0x3

.field static final MMTELSS_REQ_GET_CLIR:I = 0x2

.field static final MMTELSS_REQ_GET_COLP:I = 0x4

.field static final MMTELSS_REQ_GET_COLR:I = 0x5

.field static final MMTELSS_REQ_GET_CW:I = 0xb

.field static final MMTELSS_REQ_SET_CB:I = 0x6

.field static final MMTELSS_REQ_SET_CF:I = 0x8

.field static final MMTELSS_REQ_SET_CLIP:I = 0xc

.field static final MMTELSS_REQ_SET_CLIR:I = 0x1

.field static final MMTELSS_REQ_SET_COLP:I = 0xd

.field static final MMTELSS_REQ_SET_COLR:I = 0xe

.field static final MMTELSS_REQ_SET_CW:I = 0xa

.field static final RADIO_TEMPSTATE_AVAILABLE:I = 0x0

.field static final RADIO_TEMPSTATE_UNAVAILABLE:I = 0x1

.field private static final TEST_DOC:Ljava/lang/String; = "simservs"

.field private static final TEST_USER:Ljava/lang/String; = "sip:user@anritsu-cscf.com"

.field private static final XCAP_ROOT:Ljava/lang/String; = "http://192.168.1.2:8080/"

.field private static final mSimservs:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field mContext:Landroid/content/Context;

.field mDisableRuleMode:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMCC:Ljava/lang/String;

.field mMNC:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMTelSSRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

.field mSenderThread:Landroid/os/HandlerThread;

.field mUserName:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field mXIntendedId:Ljava/lang/String;

.field mXcapRoot:Ljava/lang/String;

.field mXui:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private radioTemporarilyUnavailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {v0}, Lcom/android/internal/telephony/MMTelSSTransport;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 327
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 258
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMCC:Ljava/lang/String;

    .line 259
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMNC:Ljava/lang/String;

    .line 260
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 261
    const-string v1, "http://192.168.1.2:8080/"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 262
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 263
    const-string v1, "sip:user@anritsu-cscf.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 266
    const-string v1, "password"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 318
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 336
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MMTelSSTransport$1;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MMTelSSTransmitter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 377
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 378
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    .line 379
    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MMTelSSTransport;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/MMTelSSTransport;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2856
    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2857
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2858
    iget v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2860
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 2861
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2862
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2863
    monitor-exit v2

    .line 2864
    return-void

    .line 2863
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .parameter "error"
    .parameter "loggable"

    .prologue
    .line 2888
    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2889
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2890
    .local v0, count:I
    if-eqz p2, :cond_0

    .line 2891
    const-string v3, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[clearRequestsList]WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2897
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2898
    .local v2, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    if-eqz p2, :cond_1

    .line 2899
    const-string v3, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 2903
    invoke-virtual {v2}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V

    .line 2896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2905
    .end local v2           #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2906
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 2907
    monitor-exit v4

    .line 2908
    return-void

    .line 2907
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 5
    .parameter "serial"

    .prologue
    .line 2911
    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2912
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2913
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2915
    .local v1, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget v3, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 2916
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2917
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 2918
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 2919
    :cond_0
    monitor-exit v4

    .line 2924
    .end local v1           #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :goto_1
    return-object v1

    .line 2912
    .restart local v1       #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2922
    .end local v1           #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    monitor-exit v4

    .line 2924
    const/4 v1, 0x0

    goto :goto_1

    .line 2922
    .end local v2           #s:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getInstance()Lcom/android/internal/telephony/MMTelSSTransport;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    return-object v0
.end method

.method public static getSimServs()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private handleRadioAvailable()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 443
    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 435
    iput v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 436
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, v2, v2}, Lcom/android/internal/telephony/MMTelSSTransport;->clearRequestsList(IZ)V

    .line 438
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 2868
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2869
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 2875
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2877
    :cond_0
    monitor-exit v1

    .line 2878
    return-void

    .line 2877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 2929
    packed-switch p0, :pswitch_data_0

    .line 2941
    const-string v0, "UNKNOWN MMTELSS REQ"

    :goto_0
    return-object v0

    .line 2930
    :pswitch_0
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 2931
    :pswitch_1
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 2932
    :pswitch_2
    const-string v0, "GET_CLIP"

    goto :goto_0

    .line 2933
    :pswitch_3
    const-string v0, "GET_COLP"

    goto :goto_0

    .line 2934
    :pswitch_4
    const-string v0, "GET_COLR"

    goto :goto_0

    .line 2935
    :pswitch_5
    const-string v0, "SET_CW"

    goto :goto_0

    .line 2936
    :pswitch_6
    const-string v0, "GET_CW"

    goto :goto_0

    .line 2937
    :pswitch_7
    const-string v0, "SET_CB"

    goto :goto_0

    .line 2938
    :pswitch_8
    const-string v0, "GET_CB"

    goto :goto_0

    .line 2939
    :pswitch_9
    const-string v0, "SET_CF"

    goto :goto_0

    .line 2940
    :pswitch_a
    const-string v0, "GET_CF"

    goto :goto_0

    .line 2929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private send(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 3
    .parameter "rr"

    .prologue
    .line 3000
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3001
    .local v0, msg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->acquireWakeLock()V

    .line 3002
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3004
    return-void
.end method


# virtual methods
.method public dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 8
    .parameter "rule"

    .prologue
    .line 2974
    const/4 v1, 0x0

    .line 2975
    .local v1, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 2977
    .local v0, action:Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz p1, :cond_0

    .line 2978
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2979
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2980
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 2985
    :cond_1
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule: international="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",roaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v3

    .line 2987
    .local v3, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 2988
    .local v4, mediaTypeList:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2989
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2989
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2992
    :cond_2
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule:mediaTypeList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 9
    .parameter "rule"

    .prologue
    .line 2949
    const/4 v1, 0x0

    .line 2950
    .local v1, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 2951
    .local v0, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v2, 0x0

    .line 2953
    .local v2, forward:Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz p1, :cond_0

    .line 2954
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2955
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2956
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2961
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    .line 2962
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:busy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noAns="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noReachable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",forward_to_Target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isNotifyCaller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v4

    .line 2964
    .local v4, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, ""

    .line 2965
    .local v5, mediaTypeList:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2966
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 2967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2966
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2969
    :cond_2
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:mediaTypeList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2622
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2623
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2624
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2648
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2650
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2651
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2663
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2665
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2666
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 424
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioOffOrNotAvailable()V

    goto :goto_0

    .line 427
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioAvailable()V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2635
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2636
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2637
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    const/4 v10, 0x1

    .line 2814
    const/4 v0, 0x0

    .line 2816
    .local v0, cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    if-ne p1, v10, :cond_0

    .line 2819
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    .end local v0           #cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v4, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v4}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v5, "http://"

    const-string v6, "intendedId"

    new-instance v7, Lcom/android/internal/telephony/GbaCredentials;

    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 2820
    .restart local v0       #cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2821
    .local v2, cfcond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2822
    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2824
    .local v1, cfaction:Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {v1, p3, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2825
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2829
    .end local v1           #cfaction:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v2           #cfcond:Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_0
    const/16 v4, 0x9

    invoke-static {v4, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v3

    .line 2831
    .local v3, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2835
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    if-eqz p3, :cond_2

    .line 2837
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2843
    :goto_0
    if-ne p1, v10, :cond_1

    .line 2845
    iput-object v0, v3, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    .line 2848
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2850
    return-void

    .line 2839
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 2
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2679
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2680
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2681
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2682
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2748
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2749
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2750
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2752
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 5
    .parameter "phone"
    .parameter "context"
    .parameter "simID"

    .prologue
    const/4 v4, 0x0

    .line 390
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 391
    iput-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 392
    const-string v1, "MMTelSS"

    const-string v2, "SIPPhone is not allowed to register for MMTelSS"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    if-eqz p3, :cond_2

    .line 398
    const-string v1, "MMTelSS"

    const-string v2, "Only support single SIM for MMTelSS currently"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 402
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone with instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "MMTelSS"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 407
    const-string v1, "ro.ril.wake_lock_timeout"

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 2
    .parameter "clipEnable"
    .parameter "result"

    .prologue
    .line 2628
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2629
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2630
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2631
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 2
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 2614
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2616
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2618
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 2
    .parameter "colpEnable"
    .parameter "result"

    .prologue
    .line 2641
    const/16 v1, 0xd

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2642
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2644
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 2
    .parameter "colrMode"
    .parameter "result"

    .prologue
    .line 2656
    const/16 v1, 0xe

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2657
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2658
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2659
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 2767
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    new-instance v5, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v5}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v6, "http://"

    const-string v7, "intendedId"

    new-instance v8, Lcom/android/internal/telephony/GbaCredentials;

    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 2768
    .local v1, cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2769
    .local v3, cfcond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2773
    .local v2, cfaction:Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 2774
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2784
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne p3, v5, :cond_5

    .line 2785
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2792
    :cond_1
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v2, p4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2795
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2797
    const/16 v5, 0x8

    move-object/from16 v0, p6

    invoke-static {v5, v0}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v4

    .line 2800
    .local v4, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    iget-object v5, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    iget-object v5, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    iget-object v5, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2804
    iget-object v5, v4, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    iput-object v1, v4, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    .line 2806
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2807
    return-void

    .line 2775
    .end local v4           #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 2776
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_0

    .line 2777
    :cond_3
    const/4 v5, 0x3

    if-ne p2, v5, :cond_4

    .line 2778
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_0

    .line 2779
    :cond_4
    const/4 v5, 0x6

    if-ne p2, v5, :cond_0

    .line 2780
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_0

    .line 2786
    :cond_5
    const/16 v5, 0x200

    if-ne p3, v5, :cond_1

    .line 2787
    const-string v5, "video"

    invoke-virtual {v3, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 2671
    const/16 v2, 0xa

    invoke-static {v2, p3}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2672
    .local v0, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2673
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2675
    return-void

    .line 2672
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2694
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    new-instance v4, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v4}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v5, "http://"

    const-string v6, "intendedId"

    new-instance v7, Lcom/android/internal/telephony/GbaCredentials;

    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 2695
    .local v0, cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2696
    .local v2, cbcond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2706
    .local v1, cbaction:Lcom/mediatek/simservs/client/policy/Actions;
    const-string v4, "OI"

    if-ne p1, v4, :cond_2

    .line 2709
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2719
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne p4, v4, :cond_4

    .line 2720
    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2725
    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_5

    .line 2727
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2733
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2735
    const/4 v4, 0x6

    invoke-static {v4, p5}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v3

    .line 2736
    .local v3, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2737
    iget-object v5, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget-object v4, v3, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2739
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2740
    return-void

    .line 2710
    .end local v3           #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    const-string v4, "OX"

    if-ne p1, v4, :cond_3

    .line 2713
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    goto :goto_0

    .line 2714
    :cond_3
    const-string v4, "IR"

    if-ne p1, v4, :cond_0

    .line 2716
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    goto :goto_0

    .line 2721
    :cond_4
    const/16 v4, 0x200

    if-ne p4, v4, :cond_1

    .line 2722
    const-string v4, "video"

    invoke-virtual {v2, v4}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1

    .line 2730
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 2737
    .restart local v3       #rr:Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "XUI"
    .parameter "XcapRoot"
    .parameter "IntendedId"
    .parameter "UserName"
    .parameter "Password"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 447
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 448
    iput-object p3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 449
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 450
    iput-object p5, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 451
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 452
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p2}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 453
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p3}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 456
    const-string v1, "ril.ss.tcname"

    const-string v2, "Empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, tc_name:Ljava/lang/String;
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSimservsInitParameters():tc_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", passed UserName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz v0, :cond_0

    const-string v1, "Single_TC_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    move-object p4, v0

    .line 460
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 465
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p4, p5}, Lcom/mediatek/simservs/client/SimServs;->setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    new-instance v2, Lcom/android/internal/telephony/GbaCredentials;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/android/internal/telephony/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setGbaCredential(Lorg/apache/http/auth/Credentials;)V

    .line 467
    return-void
.end method
