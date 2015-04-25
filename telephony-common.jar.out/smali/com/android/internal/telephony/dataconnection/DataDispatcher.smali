.class public Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.super Ljava/lang/Object;
.source "DataDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    }
.end annotation


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static EMERGENCY_APN:Ljava/lang/String; = null

.field private static final IMC_CONCATENATED_MSG_TYPE_ACTIVATION:I = 0x1

.field private static final IMC_CONCATENATED_MSG_TYPE_MODIFICATION:I = 0x2

.field private static final IMC_CONCATENATED_MSG_TYPE_NONE:I = 0x0

.field private static IMS_APN:Ljava/lang/String; = null

.field private static final INVALID_CID:I = -0x1

.field private static final MSG_ON_DEDICATE_CONNECTION_STATE_CHANGED:I = 0xfa0

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_CHANGED:I = 0x1770

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_FAILED:I = 0x17d4

.field private static final MSG_ON_NOTIFY_GLOBAL_IP_ADDR:I = 0x1b58

.field private static final MSG_PCSCF_DISCOVERY_PCO_DONE:I = 0x1388

.field private static final PDP_ADDR_MASK_IPV4:I = 0x1

.field private static final PDP_ADDR_MASK_IPV4v6:I = 0x3

.field private static final PDP_ADDR_MASK_IPV6:I = 0x2

.field private static final PDP_ADDR_MASK_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_IPV4:I = 0x21

.field private static final PDP_ADDR_TYPE_IPV4v6:I = 0x8d

.field private static final PDP_ADDR_TYPE_IPV6:I = 0x57

.field private static final PDP_ADDR_TYPE_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_NULL:I = 0x3

.field public static final PROPERTY_MANUAL_PCSCF_ADDRESS:Ljava/lang/String; = "ril.pcscf.addr"

.field public static final PROPERTY_MANUAL_PCSCF_PORT:Ljava/lang/String; = "ril.pcscf.port"

.field private static final SIZE_DEFAULT_BEARER_RESPONSE:I = 0x9470

.field private static final SIZE_NOTIFY_DEDICATE_BEARER_ACTIVATED:I = 0x5000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static mImsNetworkInterface:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

.field private mEmergencyCid:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mIsBroadcastReceiverRegistered:Z

.field private mIsEnable:Z

.field private mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

.field private mTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "ims"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    .line 61
    const-string v0, "emergency"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 2
    .parameter "context"
    .parameter "IO"

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    .line 109
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher created and use apn type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] as IMS APN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 242
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    .line 243
    sput-object p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 245
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onNotifyGlobalIpAddr(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isMsgAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleBearerDeactivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerModificationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method private delayForSeconds(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 1668
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    return-object v0
.end method

.method private handleBearerDeactivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->extractPdnDeactInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    move-result-object v1

    .line 528
    .local v1, pdnDeactInd:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->isDedicateBearer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    .line 546
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-nez v2, :cond_3

    .line 531
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 532
    .local v0, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    if-eqz v0, :cond_2

    .line 533
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    const v3, 0x187dc

    if-ne v2, v3, :cond_1

    .line 534
    const-string v2, "handleBearerDeactivationRequest to default bearer activation"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    goto :goto_0

    .line 537
    :cond_1
    const-string v2, "handleBearerDeactivationRequest to abort dedicate bearer activation"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    goto :goto_0

    .line 541
    :cond_2
    const-string v2, "handleBearerDeactivationRequest to abort bearer activation but no transaction found"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v0           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    goto :goto_0
.end method

.method private handleDedicateBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 504
    .local v6, transactionId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    .line 505
    .local v2, primaryCid:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v4, 0x1

    .line 506
    .local v4, signalingFlag:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 507
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v3

    .line 508
    .local v3, qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v5

    .line 509
    .local v5, tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] primaryCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", signalingFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Qos"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Tft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 511
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-interface {v7, v8, v4, v3, v5}, Lcom/android/internal/telephony/Phone;->enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    .line 512
    .local v0, ddcId:I
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v7

    invoke-direct {v1, p0, v6, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 513
    .local v1, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 514
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 516
    if-gez v0, :cond_0

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] but no ddcId is assigned"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 518
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 520
    :cond_0
    return-void

    .line 505
    .end local v0           #ddcId:I
    .end local v1           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v3           #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    .end local v4           #signalingFlag:Z
    .end local v5           #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V
    .locals 6
    .parameter "requestId"
    .parameter "pdnDeactInd"

    .prologue
    .line 549
    const/4 v0, -0x1

    .line 550
    .local v0, ddcId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest PdnDeactInd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {v1, p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 552
    .local v1, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "deactivation"

    iget v5, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    .line 566
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 568
    if-ltz v0, :cond_3

    .line 569
    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_2

    .line 570
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 574
    :goto_1
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 579
    :goto_2
    return-void

    .line 556
    :cond_0
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 557
    .local v2, transaction:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    if-nez v2, :cond_1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort but no transaction found with transactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort with ddcId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "abort"

    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 572
    .end local v2           #transaction:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_2
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    goto :goto_1

    .line 576
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest but no corresponding ddcId is found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 577
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_2
.end method

.method private handleDedicateBearerModificationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 590
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 591
    .local v7, transactionId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 592
    .local v0, cid:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    if-ne v11, v8, :cond_1

    move v2, v8

    .line 593
    .local v2, isQosModify:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 594
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v5

    .line 595
    .local v5, qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    if-ne v11, v8, :cond_2

    move v3, v8

    .line 596
    .local v3, isTftModify:Z
    :goto_1
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 597
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v6

    .line 599
    .local v6, tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDedicateBearerModificationRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Qos"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Tft"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 602
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_5

    .end local v5           #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :goto_4
    if-eqz v3, :cond_6

    .end local v6           #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :goto_5
    invoke-interface {v8, v0, v5, v6}, Lcom/android/internal/telephony/Phone;->modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v1

    .line 603
    .local v1, ddcId:I
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    invoke-direct {v4, p0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 604
    .local v4, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput v0, v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 605
    iput v1, v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 607
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 609
    if-gez v1, :cond_0

    .line 610
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v8

    invoke-direct {p0, v4, v8, v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 611
    :cond_0
    return-void

    .end local v1           #ddcId:I
    .end local v2           #isQosModify:Z
    .end local v3           #isTftModify:Z
    .end local v4           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_1
    move v2, v9

    .line 592
    goto/16 :goto_0

    .restart local v2       #isQosModify:Z
    .restart local v5       #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_2
    move v3, v9

    .line 595
    goto/16 :goto_1

    .line 599
    .restart local v3       #isTftModify:Z
    .restart local v6       #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_3
    const-string v8, ""

    goto :goto_2

    :cond_4
    const-string v8, ""

    goto :goto_3

    :cond_5
    move-object v5, v10

    .line 602
    goto :goto_4

    .end local v5           #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_6
    move-object v6, v10

    goto :goto_5
.end method

.method private handleDefaultBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 337
    const/4 v9, -0x1

    .line 338
    .local v9, result:I
    const/4 v1, 0x1

    .line 339
    .local v1, isValid:I
    const/4 v3, 0x0

    .line 340
    .local v3, isEmergencyInd:I
    const/16 v7, 0xb

    .line 341
    .local v7, nNetworkType:I
    const-string v10, "enableIMS"

    .line 342
    .local v10, userFeature:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->extractDefaultPdnActInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;

    move-result-object v6

    .line 343
    .local v6, defaultPdnActInd:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    new-instance v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    invoke-direct {v8, p0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 344
    .local v8, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 346
    const-string v2, "handleDefaultBearerActivationRequest"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 349
    iget v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    packed-switch v2, :pswitch_data_0

    .line 359
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 388
    :goto_0
    return-void

    .line 353
    :pswitch_0
    const/4 v3, 0x1

    .line 354
    const/16 v7, 0x2a

    .line 355
    const-string v10, "enableEMERGENCY"

    .line 356
    iput-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 364
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    iget-object v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iget v4, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    iget v5, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;-><init>(ILcom/android/internal/telephony/dataconnection/QosStatus;III)V

    .line 366
    .local v0, defaultBearerConfig:Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/Phone;->setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v10}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v9

    .line 378
    if-ne v9, v11, :cond_0

    .line 379
    const-string v2, "handleDefaultBearerActivationRequest APN request started"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_0
    if-nez v9, :cond_1

    .line 381
    const-string v2, "handleDefaultBearerActivationRequest APN already active"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 383
    iget v2, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_0

    .line 385
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDefaultBearerActivationRequest startUsingNetworkFeature failed!!, result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 386
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDefaultBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V
    .locals 11
    .parameter "requestId"
    .parameter "pdnDeactInd"

    .prologue
    .line 411
    const/4 v7, -0x1

    .line 412
    .local v7, result:I
    const-string v3, "enableIMS"

    .line 413
    .local v3, networkFeature:Ljava/lang/String;
    const/16 v5, 0xb

    .line 414
    .local v5, networkType:I
    const/4 v1, 0x0

    .line 418
    .local v1, bIsEmergency:Z
    iget-boolean v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v8, :cond_4

    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDefaultBearerDeactivationRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] deactivate cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", networkFeature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 421
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    iget v9, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v1, 0x1

    .line 433
    :goto_0
    if-eqz v1, :cond_0

    .line 434
    const-string v8, "handleDefaultBearerDeactivationRequest the bearer is emergency bearer"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 435
    const/16 v5, 0x2a

    .line 436
    const-string v3, "enableEMERGENCY"

    .line 438
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    .line 440
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {v6, p0, v8, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 441
    .local v6, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput-boolean v1, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 442
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 444
    if-ltz v7, :cond_8

    .line 445
    iget-boolean v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v8, :cond_7

    .line 446
    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    iput v8, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 450
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 451
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 452
    .local v2, currState:Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v8, :cond_1

    .line 453
    const-string v8, "curr network state is DISCONNECTED, skip put transaction!!"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 457
    :cond_1
    if-eqz v1, :cond_2

    .line 458
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V

    .line 464
    .end local v2           #currState:Landroid/net/NetworkInfo$State;
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_2
    return-void

    .line 421
    .end local v6           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDedicateBearerDeactivationRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] abort transactionId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", cid="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 426
    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 427
    .local v0, abortParam:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    if-nez v0, :cond_6

    .line 428
    const-string v8, "handleDefaultBearerDeactivationRequest to do abort but no transaction is found"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v0           #abortParam:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", abortTransactionId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 430
    .restart local v0       #abortParam:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_6
    iget-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    goto/16 :goto_0

    .line 448
    .end local v0           #abortParam:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v6       #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_7
    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    iput v8, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    goto/16 :goto_1

    .line 461
    :cond_8
    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto :goto_2
.end method

.method private handlePcscfDiscoveryRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 620
    .local v7, transactionId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 621
    .local v0, cid:I
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 623
    const/16 v8, 0x64

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 624
    .local v2, interfaceBytes:[B
    const/4 v3, 0x0

    .line 626
    .local v3, interfaceName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v4, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v3           #interfaceName:Ljava/lang/String;
    .local v4, interfaceName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 632
    .end local v4           #interfaceName:Ljava/lang/String;
    .restart local v3       #interfaceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 634
    .local v5, method:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePcscfDiscoveryRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 635
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 636
    .local v6, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput v0, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 637
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 639
    packed-switch v5, :pswitch_data_0

    .line 661
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePcscfDiscoveryRequest receive unknown method ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 663
    :goto_1
    return-void

    .line 628
    .end local v5           #method:I
    .end local v6           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :catch_0
    move-exception v1

    .line 629
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #method:I
    .restart local v6       #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :pswitch_0
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_1

    .line 645
    :pswitch_1
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByISim(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 648
    :pswitch_2
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByMo(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 651
    :pswitch_3
    invoke-direct {p0, v7, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByPco(IILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 655
    :pswitch_4
    invoke-direct {p0, v7, v3, v5, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 658
    :pswitch_5
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByManual(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 628
    .end local v3           #interfaceName:Ljava/lang/String;
    .end local v5           #method:I
    .end local v6           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v4       #interfaceName:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #interfaceName:Ljava/lang/String;
    .restart local v3       #interfaceName:Ljava/lang/String;
    goto :goto_2

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .parameter "transactionId"
    .parameter "interfaceName"
    .parameter "method"
    .parameter "event"

    .prologue
    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByDhcp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 676
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILjava/lang/String;Lcom/android/internal/telephony/ImsAdapter$VaEvent;I)V

    .line 678
    .local v0, thread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->start()V

    .line 679
    return-void

    .line 676
    .end local v0           #thread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByISim(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .parameter "transactionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 682
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 683
    .local v3, uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    if-nez v3, :cond_0

    .line 684
    const-string v4, "handlePcscfDiscoveryRequestByPco but no UiccController found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 702
    :goto_0
    return-void

    .line 687
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 688
    .local v0, iccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_1

    .line 689
    const-string v4, "handlePcscfDiscoveryRequestByPco but no IccRecords found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 690
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPcscf()[B

    move-result-object v1

    .line 693
    .local v1, pcscfBytes:[B
    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_3

    .line 694
    :cond_2
    const-string v4, "handlePcscfDiscoveryRequestByPco but no P-CSCF found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 697
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v5, v1, v4}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>(I[BI)V

    .line 698
    .local v2, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByManual(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 5
    .parameter "transactionId"
    .parameter "event"

    .prologue
    .line 749
    const-string v3, "ril.pcscf.addr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, pcscf:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 751
    :cond_0
    const-string v3, "handlePcscfDiscoveryRequest (manual) invalid P-CSCF system property"

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 752
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 763
    :goto_0
    return-void

    .line 754
    :cond_1
    const-string v3, "ril.pcscf.port"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 755
    .local v2, port:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePcscfDiscoveryRequest (manual) P-CSCF system property [address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 757
    new-instance v1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 758
    .local v1, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    const/4 v3, 0x6

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 759
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 761
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByMo(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 13
    .parameter "transactionId"
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    .line 705
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->getImsService()Lcom/mediatek/common/ims/IImsManagerService;

    move-result-object v9

    .line 706
    .local v9, service:Lcom/mediatek/common/ims/IImsManagerService;
    if-nez v9, :cond_0

    .line 707
    const-string v10, "handlePcscfDiscoveryRequestByMo but cannot get ImsManager for MO"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 746
    :goto_0
    return-void

    .line 710
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 711
    .local v8, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 714
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v9, v10}, Lcom/mediatek/common/ims/IImsManagerService;->readImsMoString(I)Ljava/lang/String;

    move-result-object v7

    .line 715
    .local v7, moPcscf:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 716
    :cond_1
    const-string v10, "handlePcscfDiscoveryRequestByMo and no MO P-CSCF is found (continue check LBO P-CSCF"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 722
    :goto_1
    invoke-interface {v9}, Lcom/mediatek/common/ims/IImsManagerService;->readImsLboPcscfMo()[Lcom/mediatek/common/ims/mo/ImsLboPcscf;

    move-result-object v4

    .line 723
    .local v4, imsLboPcscfArray:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    if-nez v4, :cond_4

    .line 724
    const-string v10, "handlePcscfDiscoveryRequestByMo and no LBO P-CSCF is found"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v4           #imsLboPcscfArray:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v7           #moPcscf:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->getPcscfAddressCount()I

    move-result v10

    if-nez v10, :cond_6

    .line 739
    const-string v10, "handlePcscfDiscoveryRequestByMo but no any P-CSCF is found"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 718
    .restart local v7       #moPcscf:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePcscfDiscoveryRequestByMo and MO P-CSCF is found ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 719
    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 734
    .end local v7           #moPcscf:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 735
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 726
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #imsLboPcscfArray:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .restart local v7       #moPcscf:Ljava/lang/String;
    :cond_4
    move-object v0, v4

    .local v0, arr$:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    :try_start_2
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v3, v0, v2

    .line 727
    .local v3, imsLboPcscf:Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    invoke-virtual {v3}, Lcom/mediatek/common/ims/mo/ImsLboPcscf;->getLboPcscfAddress()Ljava/lang/String;

    move-result-object v5

    .line 728
    .local v5, lboPcscf:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 729
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePcscfDiscoveryRequestByMo and LBO P-CSCF is found ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 730
    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 726
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 742
    .end local v0           #arr$:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v2           #i$:I
    .end local v3           #imsLboPcscf:Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v4           #imsLboPcscfArray:[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v5           #lboPcscf:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #moPcscf:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto/16 :goto_0
.end method

.method private handlePcscfDiscoveryRequestByPco(IILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 5
    .parameter "transactionId"
    .parameter "cid"
    .parameter "event"

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByPco ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/telephony/Phone;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v0

    .line 668
    .local v0, result:I
    if-gez v0, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByPco failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 672
    :cond_0
    return-void
.end method

.method private isApnIMSorEmergency(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1675
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMsgAllowed(Ljava/lang/String;I)Z
    .locals 2
    .parameter "apnType"
    .parameter "changed"

    .prologue
    const/4 v0, 0x1

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1488
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1492
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return-void
.end method

.method private makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .locals 3
    .parameter "param"
    .parameter "failCause"

    .prologue
    .line 485
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187de

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 486
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectDefaultBearerDataConnActivation param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 488
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 489
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 490
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 492
    return-object v0
.end method

.method private notifyDataConnectionDeactivated(II)V
    .locals 3
    .parameter "cid"
    .parameter "cause"

    .prologue
    .line 1303
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1304
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDedicateDataConnectionDeactivated cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1309
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1310
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1312
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1313
    return-void
.end method

.method private notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 6
    .parameter "property"
    .parameter "type"

    .prologue
    const/4 v5, 0x3

    .line 1195
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v3

    .line 1196
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDedicateDataConnection but default bearer does not existed, type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1198
    monitor-exit v3

    .line 1229
    :goto_0
    return-void

    .line 1200
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    const/4 v0, 0x0

    .line 1203
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1204
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1208
    .restart local v0       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDedicateDataConnection type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1215
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1216
    new-array v2, v5, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1217
    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1218
    new-array v2, v5, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v2, 0xb

    if-ge v1, v2, :cond_3

    .line 1220
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1221
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v0, p2, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1219
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1200
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1206
    .restart local v0       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187ea

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v0       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_1

    .line 1223
    .restart local v1       #i:I
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p2, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_3

    .line 1227
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDispatcher send event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    goto/16 :goto_0
.end method

.method private notifyDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "property"

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnectionActivated property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1192
    return-void
.end method

.method private notifyDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "property"

    .prologue
    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnectionModified ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1343
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1344
    return-void
.end method

.method private notifyDefaultBearerDataConnDeactivated(II)V
    .locals 3
    .parameter "cid"
    .parameter "cause"

    .prologue
    .line 1028
    const-string v0, "notifyDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1029
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v1

    .line 1030
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDataConnectionDeactivated(II)V

    .line 1033
    return-void

    .line 1031
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    .locals 8
    .parameter "ddcId"
    .parameter "state"
    .parameter "property"
    .parameter "failCause"
    .parameter "reason"

    .prologue
    .line 1039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDedicateDataConnectionStateChanged ddcId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", failCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", properties="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, hasTransaction:Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v4, waitRemoveTransactions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v6

    .line 1044
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1045
    .local v3, transactionId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 1046
    .local v2, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    if-ne v5, p1, :cond_0

    .line 1047
    const/4 v0, 0x1

    .line 1048
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    sparse-switch v5, :sswitch_data_0

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDedicateDataConnectionStateChanged received unhandled state change event ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1116
    :cond_1
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1122
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v3           #transactionId:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1050
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v3       #transactionId:Ljava/lang/Integer;
    :sswitch_0
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_3

    .line 1051
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p4, v5, :cond_2

    .line 1053
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 1056
    :cond_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 1058
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p2, v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_1

    .line 1060
    :cond_4
    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 1064
    :sswitch_1
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    iget v7, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    if-ne v5, v7, :cond_8

    .line 1065
    const-string v5, "abort"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1067
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p4, v5, :cond_5

    .line 1068
    const-string v5, "onDedicateDataConnectionStateChanged to response abort success"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 1071
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDedicateDataConnectionStateChanged to response abort fail failcause="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_1

    .line 1075
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_7

    .line 1077
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 1080
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_1

    .line 1084
    :cond_8
    iget v5, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_9

    .line 1087
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is already deactivated (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto/16 :goto_1

    .line 1091
    :cond_9
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1096
    :sswitch_2
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    iget v7, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    if-ne v5, v7, :cond_b

    .line 1097
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_a

    .line 1099
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1102
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1106
    :cond_b
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_MODIFICATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1120
    .end local v2           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v3           #transactionId:Ljava/lang/Integer;
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1121
    .restart local v3       #transactionId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_2

    .line 1122
    .end local v3           #transactionId:Ljava/lang/Integer;
    :cond_d
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    if-nez v0, :cond_e

    .line 1126
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1140
    const-string v5, "onDedicateDataConnectionStateChanged not matched to any case"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1143
    :cond_e
    :goto_3
    return-void

    .line 1128
    :pswitch_0
    iget v5, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDataConnectionDeactivated(II)V

    goto :goto_3

    .line 1131
    :pswitch_1
    const-string v5, "onDedicateDataConnectionStateChanged no matched transaction but receive state FAIL"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1134
    :pswitch_2
    const-string v5, "modification"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1135
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_3

    .line 1137
    :cond_f
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_3

    .line 1048
    :sswitch_data_0
    .sparse-switch
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_1
        0x187e7 -> :sswitch_2
    .end sparse-switch

    .line 1126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "apnType"

    .prologue
    .line 767
    const-string v8, "onDefaultBearerDataConnFail"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 768
    const/4 v5, 0x0

    .line 770
    .local v5, simId:I
    const/4 v1, 0x0

    .line 771
    .local v1, hasTransaction:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v7, waitRemoveTransactions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v8, "reason"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, reason:Ljava/lang/String;
    const-string v8, "simId"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 778
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v9

    .line 779
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 780
    .local v6, transactionId:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v3

    .line 781
    .local v3, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    const v8, 0x187dc

    iget v10, v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    if-ne v8, v10, :cond_0

    .line 782
    const/4 v1, 0x1

    .line 783
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, p2}, Lcom/android/internal/telephony/Phone;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    .line 784
    .local v0, failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 785
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 791
    .end local v0           #failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v6           #transactionId:Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 789
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 790
    .restart local v6       #transactionId:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_1

    .line 791
    .end local v6           #transactionId:Ljava/lang/Integer;
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    if-nez v1, :cond_3

    .line 795
    const-string v8, "onDefaultBearerDataConnFail but no transaction found"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 797
    :cond_3
    return-void
.end method

.method private onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 17
    .parameter "intent"
    .parameter "apnType"

    .prologue
    .line 800
    const/4 v10, 0x0

    .line 801
    .local v10, simId:I
    const-class v14, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v15, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 802
    .local v11, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v14, "reason"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    .local v9, reason:Ljava/lang/String;
    const-string v14, "simId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 809
    const/4 v4, 0x0

    .line 810
    .local v4, hasTransaction:Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v13, waitRemoveTransactions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDefaultBearerDataConnStateChanged, state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", reason: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", apnType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v15

    .line 813
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 814
    .local v12, transactionId:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    move-result-object v8

    .line 815
    .local v8, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-boolean v14, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    :cond_1
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    iget-boolean v14, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 817
    :cond_2
    iget v14, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    sparse-switch v14, :sswitch_data_0

    .line 850
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onDefaultBearerDataConnStateChanged received unhandled state change event ["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 859
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v12           #transactionId:Ljava/lang/Integer;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 820
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v12       #transactionId:Ljava/lang/Integer;
    :sswitch_0
    :try_start_1
    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v11, v14, :cond_3

    .line 821
    const/4 v4, 0x1

    .line 822
    const-string v14, "linkProperties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 823
    .local v7, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)V

    .line 824
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 825
    .end local v7           #lp:Landroid/net/LinkProperties;
    :cond_3
    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v11, v14, :cond_0

    .line 826
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 827
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 831
    :sswitch_1
    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v11, v14, :cond_0

    .line 832
    const/4 v4, 0x1

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/Phone;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 834
    .local v2, cidArray:[I
    if-eqz v2, :cond_4

    const/4 v14, 0x0

    aget v14, v2, v14

    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    .line 835
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 836
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v14, :cond_0

    .line 839
    const-string v14, "IMS PDN is deactivated and to interrupt P-CSCF discovery thread"

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 841
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    goto/16 :goto_0

    .line 843
    :cond_4
    if-nez v2, :cond_0

    .line 844
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 845
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 857
    .end local v2           #cidArray:[I
    .end local v8           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v12           #transactionId:Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 858
    .restart local v12       #transactionId:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_1

    .line 859
    .end local v12           #transactionId:Ljava/lang/Integer;
    :cond_6
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDefaultBearerDataConnStateChanged hasTrasaction: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 862
    if-nez v4, :cond_7

    .line 864
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 890
    :cond_7
    :goto_2
    return-void

    .line 867
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/Phone;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 868
    .restart local v2       #cidArray:[I
    if-eqz v2, :cond_7

    .line 869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/Phone;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    .line 870
    .local v3, failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deactivate cid size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 871
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v14, v2

    if-ge v5, v14, :cond_8

    .line 872
    aget v14, v2, v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDefaultBearerDataConnDeactivated(II)V

    .line 871
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 875
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v14, :cond_7

    .line 876
    const-string v14, "IMS PDN is deactivated and to interrupt P-CSCF discovery thread"

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 878
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    goto :goto_2

    .line 884
    .end local v2           #cidArray:[I
    .end local v3           #failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v5           #i:I
    :pswitch_1
    const-string v14, "Connected but currently no notify"

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 817
    :sswitch_data_0
    .sparse-switch
        0x187dc -> :sswitch_0
        0x187e3 -> :sswitch_1
    .end sparse-switch

    .line 864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNotifyGlobalIpAddr(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "intent"
    .parameter "apnType"
    .parameter "intfName"

    .prologue
    .line 1394
    const/4 v5, -0x1

    .line 1395
    .local v5, msgId:I
    const/4 v4, 0x0

    .line 1398
    .local v4, ipAddrByteArray:[B
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotifyGlobalIpAddr invalid apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1448
    :goto_0
    return-void

    .line 1403
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1404
    const-string v6, "onNotifyGlobalIpAddr interface name is empty"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_1
    const-string v6, "lte_global_ip_addr"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1409
    .local v3, inetAddr:Ljava/net/InetAddress;
    instance-of v6, v3, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2

    .line 1410
    const v5, 0x187ec

    .line 1422
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/Phone;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v1

    .line 1423
    .local v1, defaultBearerProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    if-nez v1, :cond_4

    .line 1424
    const-string v6, "onNotifyGlobalIpAddr default bearer properties is null, can\'t get cid"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1411
    .end local v1           #defaultBearerProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_2
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 1412
    const-string v6, "onNotifyGlobalIpAddr IPAddress Type ipV4"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1413
    const v5, 0x187eb

    goto :goto_1

    .line 1415
    :cond_3
    const-string v6, "onNotifyGlobalIpAddr unknown IPAddress Type (using IPV4)"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1417
    const v5, 0x187eb

    goto :goto_1

    .line 1428
    .restart local v1       #defaultBearerProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_4
    iget v0, v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 1431
    .local v0, cid:I
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 1432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotifyGlobalIpAddr intfName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", byte addr length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1434
    if-nez v4, :cond_5

    .line 1435
    const-string v6, "onNotifyGlobalIpAddr invalid ipAddrByteArray (null)"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v7

    .line 1440
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNotifyGlobalIpAddr invalid CID ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1442
    monitor-exit v7

    goto/16 :goto_0

    .line 1444
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_6
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v6, v5, v0, v4, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->composeGlobalIPAddrVaEvent(II[BLjava/lang/String;)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v2

    .line 1447
    .local v2, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto/16 :goto_0
.end method

.method private rejectDataConnectionDeactivation(II)V
    .locals 3
    .parameter "transactionId"
    .parameter "cause"

    .prologue
    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1318
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectBearerDeactivation transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1323
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1324
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1328
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1332
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 1330
    :cond_0
    const-string v1, "rejectDataConnectionDeactivation but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 5
    .parameter "param"
    .parameter "failCause"
    .parameter "property"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 1237
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 1240
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e1

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1244
    .restart local v0       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectDedicateDataConnection type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", failCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1251
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1252
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1253
    if-nez p3, :cond_2

    .line 1254
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1260
    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1262
    if-nez p3, :cond_3

    .line 1263
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1267
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/16 v2, 0xa

    if-ge v1, v2, :cond_5

    .line 1268
    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 1269
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1267
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1242
    .end local v1           #i:I
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e9

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v0       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1256
    :cond_2
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_1

    .line 1265
    :cond_3
    invoke-static {v0, p4, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_2

    .line 1271
    .restart local v1       #i:I
    :cond_4
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v0, p4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_4

    .line 1274
    :cond_5
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDispatcher send event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 1281
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v1           #i:I
    :goto_5
    return-void

    .line 1279
    :cond_6
    const-string v2, "rejectDedicateDataConnection but transactionId does not existed, ignore"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "param"
    .parameter "failCause"
    .parameter "property"

    .prologue
    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateBearerActivation param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1234
    return-void
.end method

.method private rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "param"
    .parameter "failCause"
    .parameter "property"

    .prologue
    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateDataConnectionModification param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1349
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1350
    return-void
.end method

.method private rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V
    .locals 3
    .parameter "param"
    .parameter "failCause"

    .prologue
    .line 391
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v1, :cond_0

    const-string v0, "enableEMERGENCY"

    .line 397
    .local v0, userFeature:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 400
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->delayForSeconds(I)V

    .line 402
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 408
    .end local v0           #userFeature:Ljava/lang/String;
    :goto_1
    return-void

    .line 395
    :cond_0
    const-string v0, "enableIMS"

    goto :goto_0

    .line 406
    :cond_1
    const-string v1, "rejectDefaultBearerDataConnActivation but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private rejectDefaultBearerDataConnDeactivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V
    .locals 1
    .parameter "param"
    .parameter "failCause"

    .prologue
    .line 467
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string v0, "rejectDefaultBearerDataConnDeactivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectPcscfDiscovery(II)V
    .locals 3
    .parameter "transactionId"
    .parameter "failCause"

    .prologue
    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187ef

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1375
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectPcscfDiscovery transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1380
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1381
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1389
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 1387
    :cond_0
    const-string v1, "rejectPcscfDiscovery but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1284
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1286
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseDataConnectionDeactivated param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1290
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1291
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1292
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1294
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1296
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1300
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 1298
    :cond_0
    const-string v1, "responseDataConnectionDeactivated but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 5
    .parameter "param"
    .parameter "property"
    .parameter "type"

    .prologue
    .line 1151
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1152
    const/4 v1, 0x0

    .line 1153
    .local v1, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 1154
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v1           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v3, 0x187e0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1158
    .restart local v1       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseDedicateDataConnection type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1159
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1167
    .local v0, concatenateBearersSize:I
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1168
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1169
    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1170
    invoke-static {v1, p3, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1171
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1172
    const/4 v3, 0x3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1173
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    .line 1174
    if-ge v2, v0, :cond_1

    .line 1175
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v1, p3, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1173
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1156
    .end local v0           #concatenateBearersSize:I
    .end local v2           #i:I
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v1           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v3, 0x187e8

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v1       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1177
    .restart local v0       #concatenateBearersSize:I
    .restart local v2       #i:I
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v1, p3, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_2

    .line 1181
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1183
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1187
    .end local v0           #concatenateBearersSize:I
    .end local v1           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v2           #i:I
    :goto_3
    return-void

    .line 1185
    :cond_3
    const-string v3, "responseDedicateDataConnection but transactionId does not existed, ignore"

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private responseDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "param"
    .parameter "property"

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionActivated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1147
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1148
    return-void
.end method

.method private responseDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .parameter "param"
    .parameter "property"

    .prologue
    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionModified param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1337
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1338
    return-void
.end method

.method private responseDefaultBearerDataConnActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)V
    .locals 21
    .parameter "param"
    .parameter "apnType"
    .parameter "lp"

    .prologue
    .line 893
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 894
    const/4 v4, 0x1

    .line 895
    .local v4, bResponse:Z
    new-instance v8, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v17, 0x187dd

    const v18, 0x9470

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(II)V

    .line 896
    .local v8, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v14, 0x0

    .line 898
    .local v14, pdnCnt:I
    const/4 v11, 0x0

    .line 900
    .local v11, ipMask:I
    const-string v17, "responseDefaultBearerDataConnActivated "

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 916
    const/16 v16, 0x0

    .line 917
    .local v16, pdp_addr_type:I
    if-eqz p3, :cond_2

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 919
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 920
    .local v3, addr:Ljava/net/InetAddress;
    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 921
    const-string v17, "ipv6 type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 922
    or-int/lit8 v11, v11, 0x2

    goto :goto_0

    .line 923
    :cond_0
    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 924
    const-string v17, "ipv4 type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 925
    or-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 927
    :cond_1
    const-string v17, "invalid address type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 928
    or-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 932
    .end local v3           #addr:Ljava/net/InetAddress;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    :cond_2
    const-string v17, "Error: get null link properties"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 935
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 952
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v6

    .line 953
    .local v6, defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "responseDefaultBearerDataConnActivated: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 954
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v7}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 955
    .local v7, defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    const/16 v17, 0x0

    aput-object v7, v15, v17

    const/16 v17, 0x1

    aput-object v7, v15, v17

    .line 956
    .local v15, pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 957
    .local v13, msgType:[I
    if-nez v6, :cond_4

    .line 959
    const/16 v17, 0x0

    aput-object v7, v15, v17

    .line 960
    const/4 v4, 0x0

    .line 961
    const-string v17, "error happenening , default breaer should not be null"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 990
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 991
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 992
    aget v17, v13, v9

    aget-object v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeAllBearersProperties(Lcom/android/internal/telephony/ImsAdapter$VaEvent;IILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 991
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 937
    .end local v6           #defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v7           #defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v9           #i:I
    .end local v13           #msgType:[I
    .end local v15           #pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :pswitch_0
    const/16 v16, 0x8d

    .line 938
    goto :goto_1

    .line 940
    :pswitch_1
    const/16 v16, 0x57

    .line 941
    goto :goto_1

    .line 943
    :pswitch_2
    const/16 v16, 0x21

    goto :goto_1

    .line 964
    .restart local v6       #defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v7       #defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v13       #msgType:[I
    .restart local v15       #pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_4
    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 965
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid defaultBearerProp, interface id("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), cid("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 968
    const/4 v4, 0x0

    .line 971
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 972
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 973
    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 974
    .local v5, bearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    move/from16 v17, v0

    iget v0, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 972
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 977
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 981
    .end local v5           #bearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_7
    invoke-virtual {v8, v14}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 982
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 983
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->dumpPdnAckRsp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 986
    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v18, v13, v17

    .line 987
    const/16 v17, 0x0

    aput-object v6, v15, v17

    goto/16 :goto_2

    .line 995
    :cond_8
    sget-object v18, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v18

    .line 996
    :try_start_0
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Update IMS network interface name: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v19, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 998
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1002
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1007
    .end local v9           #i:I
    :goto_6
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1008
    if-eqz v4, :cond_b

    .line 1009
    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V

    .line 1017
    .end local v4           #bResponse:Z
    .end local v6           #defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v7           #defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v8           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v11           #ipMask:I
    .end local v13           #msgType:[I
    .end local v14           #pdnCnt:I
    .end local v15           #pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v16           #pdp_addr_type:I
    :cond_9
    :goto_7
    return-void

    .line 998
    .restart local v4       #bResponse:Z
    .restart local v6       #defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v7       #defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v8       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .restart local v9       #i:I
    .restart local v11       #ipMask:I
    .restart local v13       #msgType:[I
    .restart local v14       #pdnCnt:I
    .restart local v15       #pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v16       #pdp_addr_type:I
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 1004
    .end local v9           #i:I
    :cond_a
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto :goto_6

    .line 1011
    :cond_b
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V

    goto :goto_7

    .line 1015
    .end local v4           #bResponse:Z
    .end local v6           #defaultBearerProp:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v7           #defaultBearerPropEmpty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v8           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v11           #ipMask:I
    .end local v13           #msgType:[I
    .end local v14           #pdnCnt:I
    .end local v15           #pdnContextsForVa:[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v16           #pdp_addr_type:I
    :cond_c
    const-string v17, "responseDefaultBearerDataConnActivated but transactionId does not existed, ignore"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 956
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1020
    const-string v0, "responseDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1021
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v1

    .line 1022
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 1025
    return-void

    .line 1023
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 3
    .parameter "transactionId"
    .parameter "pcscfInfo"

    .prologue
    .line 1353
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187ee

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1355
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responsePcscfDiscovery transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pcscf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1361
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1362
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1363
    invoke-static {v0, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 1365
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    .line 1366
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1370
    .end local v0           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 1368
    :cond_0
    const-string v1, "responsePcscfDiscovery but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 322
    return-void
.end method

.method private setEmergencyCid(I)V
    .locals 2
    .parameter "cid"

    .prologue
    .line 325
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mEmergencyCid to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 327
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 306
    const-string v0, "DataDispatcher receives get phone instance when handling event callback"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public disableRequest()V
    .locals 4

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 274
    :try_start_0
    const-string v0, "receive disableRequest"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsEnable:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 282
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    const-string v0, "disableRequest to clear interface and cid map"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mImsNetworkInterface:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :try_start_3
    const-string v0, "disableRequest to clear transactions"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 290
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 292
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "disableRequest to interrupt dhcp thread"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableIMS"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableEMERGENCY"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 300
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    return-void

    .line 285
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 300
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 290
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method protected dumpTransactions()V
    .locals 4

    .prologue
    .line 1477
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1478
    const-string v2, "====Start dump [transactions]===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1479
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 1480
    .local v1, param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1481
    .end local v1           #param:Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_0
    const-string v2, "====End dump [transactions]===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1485
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 1483
    :cond_1
    const-string v2, "====dump [transactions] but empty===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableRequest()V
    .locals 4

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 253
    :try_start_0
    const-string v1, "receive enableRequest"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsEnable:Z

    .line 255
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "receives get phone instance when enable dispatcher"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 260
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 269
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    monitor-exit v2

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getTransaction(I)Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .locals 3
    .parameter "transactionId"

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    monitor-exit v1

    return-object v0

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hasTransaction(I)Z
    .locals 3
    .parameter "transactionId"

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->dumpTransactions()V

    .line 1460
    monitor-exit v1

    .line 1461
    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeTransaction(I)V
    .locals 3
    .parameter "transactionId"

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->dumpTransactions()V

    .line 1467
    monitor-exit v1

    .line 1468
    return-void

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSocket(Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 317
    return-void
.end method
