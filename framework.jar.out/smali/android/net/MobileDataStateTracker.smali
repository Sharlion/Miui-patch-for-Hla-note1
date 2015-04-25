.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$2;,
        Landroid/net/MobileDataStateTracker$DhcpThread;,
        Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;,
        Landroid/net/MobileDataStateTracker$NetworkDataEntry;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static EMERGENCY_APN:Ljava/lang/String; = null

.field public static final EVENT_GET_GLOBAL_IP:I = 0x65

.field private static IMS_APN:Ljava/lang/String; = null

.field private static final IP_DHCP_NONE:I = 0x0

.field private static final IP_DHCP_V4:I = 0x1

.field private static final IP_DHCP_V6:I = 0x2

.field private static final RA_POLLING_TIMER:[I = null

.field private static final RESULT_RA_FAIL:Ljava/lang/String; = "RaFail"

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final UNKNOWN:I = 0x7fffffff

.field private static final VDBG:Z = true

.field private static mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

.field private static mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

.field private static mTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/MobileDataStateTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPDhcpStatus:I

.field private mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkInfoDt:[Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x3840

    const/16 v8, 0x1680

    const/16 v7, 0x9

    const v6, 0x7fffffff

    .line 75
    const-string v0, "ims"

    sput-object v0, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    .line 76
    const-string v0, "emergency"

    sput-object v0, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    .line 944
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x2

    const/16 v4, 0xed

    const/16 v5, 0x76

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0x30

    const/16 v3, 0x28

    invoke-direct {v1, v10, v2, v3, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v10

    const/4 v1, 0x2

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x3

    const/16 v4, 0x180

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v9, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    invoke-direct {v2, v7, v9, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v9, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xf

    const/16 v4, 0x5208

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v2, 0x5

    const/16 v3, 0x9a4

    const/16 v4, 0x99

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x6

    const/16 v4, 0xc00

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xc

    const/16 v4, 0x396c

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xd

    const v4, 0x186a0

    const v5, 0xc350

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .line 1172
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 79
    new-array v0, v2, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 85
    new-array v0, v2, [Landroid/net/NetworkInfo;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    .line 86
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 91
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 92
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 96
    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 97
    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    .line 121
    iput v4, p0, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    .line 182
    new-instance v0, Landroid/net/MobileDataStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/MobileDataStateTracker$1;-><init>(Landroid/net/MobileDataStateTracker;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 136
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 142
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 145
    return-void
.end method

.method static synthetic access$1002(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getRaGlobalIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/MobileDataStateTracker;Ljava/net/InetAddress;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getGlobalIpV6Addr()V
    .locals 1

    .prologue
    .line 1302
    new-instance v0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;

    invoke-direct {v0, p0, p0}, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;)V

    .line 1303
    .local v0, queryThread:Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;
    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->start()V

    .line 1304
    return-void
.end method

.method private getIMSGlobalIpAddr()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, cnt:I
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1264
    .local v3, inetAddress:Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 1265
    const-string v4, "getIMSGlobalIpAddr, ip is IpV6"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1266
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getGlobalIpV6Addr()V

    .line 1283
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 1268
    const-string v4, "getIMSGlobalIpAddr, ip is IpV4"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1271
    const-string v4, "getIMSGlobalIpAddr, Using dhcp"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1272
    new-instance v1, Landroid/net/MobileDataStateTracker$DhcpThread;

    invoke-direct {v1, p0, p0, v5}, Landroid/net/MobileDataStateTracker$DhcpThread;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;I)V

    .line 1273
    .local v1, dhcpThread:Landroid/net/MobileDataStateTracker$DhcpThread;
    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker$DhcpThread;->start()V

    goto :goto_1

    .line 1275
    .end local v1           #dhcpThread:Landroid/net/MobileDataStateTracker$DhcpThread;
    :cond_1
    const-string v4, "getIMSGlobalIpAddr, send to Handler"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->sendIPAddrToHandler(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 1279
    :cond_2
    const-string v4, "getIMSGlobalIpAddr, ip is unknown type, use IpV4 temporary"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->sendIPAddrToHandler(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 1285
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMSGlobalIpAddr, ip cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1286
    return-void
.end method

.method private static getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    .locals 7
    .parameter "networkType"

    .prologue
    .line 963
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .local v0, arr$:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 964
    .local v1, entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    iget v4, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    if-ne v4, p0, :cond_0

    .line 970
    .end local v1           #entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :goto_1
    return-object v1

    .line 963
    .restart local v1       #entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v1           #entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_1
    const-string v4, "MobileDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find Theoretical BW entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "networkType"
    .parameter "ss"

    .prologue
    .line 978
    packed-switch p0, :pswitch_data_0

    .line 1003
    :pswitch_0
    const v1, 0x7fffffff

    .line 1006
    :goto_0
    return v1

    .line 986
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1006
    .local v0, level:I
    :goto_1
    mul-int/lit8 v1, v0, 0x64

    div-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 990
    .end local v0           #level:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 991
    .restart local v0       #level:I
    goto :goto_1

    .line 995
    .end local v0           #level:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 996
    .restart local v0       #level:I
    goto :goto_1

    .line 998
    .end local v0           #level:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 999
    .restart local v0       #level:I
    goto :goto_1

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 399
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 400
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 402
    :cond_1
    return-void
.end method

.method private getRaGlobalIpAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1200
    const-string v0, "RaFail"

    .line 1201
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v8, :cond_1

    .line 1202
    const-string v8, "getRaGlobalIpAddress but no LinkProperties"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1256
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1206
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, interfaceName:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1208
    const-string v8, "getRaGlobalIpAddress but interface name"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1212
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v8, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    array-length v4, v8

    .local v4, length:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1213
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 1214
    .local v7, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v8, :cond_3

    .line 1215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress but data state is not connected ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "net.ipv6."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    .local v5, prefix:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 1222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get prefix ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1223
    invoke-direct {p0, v5}, Landroid/net/MobileDataStateTracker;->getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1225
    :cond_4
    invoke-static {v3}, Landroid/net/NetworkUtils;->getRaFlags(Ljava/lang/String;)I

    move-result v6

    .line 1231
    .local v6, raResult:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get raResult ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1233
    const/4 v8, 0x1

    if-eq v6, v8, :cond_5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    .line 1234
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "net.ipv6."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get prefix after RA result ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1236
    invoke-direct {p0, v5}, Landroid/net/MobileDataStateTracker;->getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1237
    :cond_6
    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    .line 1239
    const-string v8, "getRaGlobalIpAddress need to do DHCP, return null"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1240
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1243
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress keep polling ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1247
    monitor-enter p0

    .line 1249
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress no RA result fould, wait for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1250
    sget-object v8, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    aget v8, v8, v2

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :goto_2
    :try_start_1
    monitor-exit p0

    .line 1212
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1254
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "prefix"

    .prologue
    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1178
    .local v3, inetAddress:Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_0

    .line 1181
    :try_start_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 1182
    .local v4, ipBytes:[B
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 1183
    .local v6, prefixBytes:[B
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    const/16 v7, 0x8

    if-ge v5, v7, :cond_1

    .line 1185
    aget-byte v7, v6, v5

    aput-byte v7, v4, v5

    .line 1183
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1188
    :cond_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRaResultAddress get address ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #ipBytes:[B
    .end local v5           #j:I
    .end local v6           #prefixBytes:[B
    :cond_2
    return-object v0

    .line 1191
    .restart local v3       #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 1192
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isDualTalkMode()Z
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 859
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 863
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .parameter "netType"

    .prologue
    .line 778
    sparse-switch p0, :sswitch_data_0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 780
    :sswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 782
    :sswitch_1
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 784
    :sswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 786
    :sswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 788
    :sswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 790
    :sswitch_5
    const-string v0, "fota"

    goto :goto_0

    .line 792
    :sswitch_6
    const-string v0, "ims"

    goto :goto_0

    .line 794
    :sswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 796
    :sswitch_8
    const-string v0, "ia"

    goto :goto_0

    .line 798
    :sswitch_9
    const-string v0, "dm"

    goto :goto_0

    .line 800
    :sswitch_a
    const-string/jumbo v0, "net"

    goto :goto_0

    .line 802
    :sswitch_b
    const-string/jumbo v0, "wap"

    goto :goto_0

    .line 804
    :sswitch_c
    const-string v0, "cmmail"

    goto :goto_0

    .line 806
    :sswitch_d
    const-string/jumbo v0, "rcse"

    goto :goto_0

    .line 808
    :sswitch_e
    const-string v0, "emergency"

    goto :goto_0

    .line 778
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xe -> :sswitch_8
        0x22 -> :sswitch_9
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x2a -> :sswitch_e
    .end sparse-switch
.end method

.method public static onDataStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    .local v10, logSb:Ljava/lang/StringBuilder;
    const-string v21, "apnType"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1446
    .local v5, apnType:Ljava/lang/String;
    sget-object v21, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 1449
    .local v20, tracker:Landroid/net/MobileDataStateTracker;
    const/4 v6, 0x0

    .line 1451
    .local v6, bNeedGetIMSIP:Z
    if-nez v20, :cond_1

    .line 1453
    sget-object v21, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 1454
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "tracker(null), apn type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    const/16 v17, 0x0

    .line 1459
    .local v17, slot:I
    const/4 v7, 0x0

    .line 1461
    .local v7, curSlot:I
    const-string/jumbo v21, "simId"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1462
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v7

    .line 1465
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1468
    :cond_2
    move/from16 v0, v17

    if-eq v0, v7, :cond_3

    .line 1469
    const-string v21, "Receive peer SIM data state.ignor!"

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1471
    sget-object v21, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1478
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 1480
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Broadcast received: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " apnType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    .line 1485
    .local v14, oldSubtype:I
    const/4 v12, 0x0

    .line 1488
    .local v12, newSubType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v12

    .line 1489
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v19

    .line 1495
    .local v19, subTypeName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1496
    if-eq v12, v14, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1497
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v21, v0

    const v22, 0x70003

    const/16 v23, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1499
    .local v11, msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 1502
    .end local v11           #msg:Landroid/os/Message;
    :cond_4
    const-class v21, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v22, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1504
    .local v18, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1505
    .local v15, reason:Ljava/lang/String;
    const-string v21, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1506
    .local v4, apnName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    const-string/jumbo v22, "networkRoaming"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1508
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " setting isAvailable to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_a

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1515
    const/4 v8, 0x0

    .line 1516
    .local v8, dataStateChanged:Z
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1517
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    aget-object v13, v21, v17

    .line 1518
    .local v13, nwInfo:Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v21

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1520
    const-string/jumbo v21, "networkRoaming"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1521
    const-string/jumbo v21, "networkUnvailable"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_b

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1522
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v21, v0

    aget-object v21, v21, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/4 v8, 0x1

    .line 1524
    :goto_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " [DT]Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old[slot:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v22, v0

    aget-object v22, v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v15, :cond_d

    const-string v21, "(unspecified)"

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    .end local v13           #nwInfo:Landroid/net/NetworkInfo;
    :goto_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1538
    if-eqz v8, :cond_1a

    .line 1542
    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1547
    const/16 v16, 0x0

    .local v16, retry:I
    :goto_7
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1548
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    .line 1549
    const-string v21, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1565
    :cond_5
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1566
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v21, v0

    aput-object v18, v21, v17

    .line 1571
    :goto_8
    sget-object v21, Landroid/net/MobileDataStateTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1631
    :cond_6
    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #logSb:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1632
    .restart local v10       #logSb:Ljava/lang/StringBuilder;
    const-string v21, "TelephonyMgr.DataConnectionStateChanged"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1634
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " NetworkInfo = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " subType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " subTypeName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 1639
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " LinkProperties = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    :goto_a
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    .line 1645
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " LinkCapabilities = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkCapabilities;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :goto_b
    const-string v21, "MobileDataStateTracker"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/SamplingDataTracker;->resetSamplingData()V

    .line 1692
    .end local v16           #retry:I
    :cond_8
    :goto_c
    sget-object v21, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v8}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 1693
    if-eqz v6, :cond_0

    .line 1694
    invoke-direct/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->getIMSGlobalIpAddr()V

    goto/16 :goto_0

    .line 1508
    .end local v8           #dataStateChanged:Z
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1511
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1521
    .restart local v8       #dataStateChanged:Z
    .restart local v13       #nwInfo:Landroid/net/NetworkInfo;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1522
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v21, v15

    .line 1524
    goto/16 :goto_5

    .line 1528
    .end local v13           #nwInfo:Landroid/net/NetworkInfo;
    :cond_e
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/4 v8, 0x1

    .line 1530
    :goto_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v15, :cond_10

    const-string v21, "(unspecified)"

    :goto_e
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1528
    :cond_f
    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    move-object/from16 v21, v15

    .line 1530
    goto :goto_e

    .line 1557
    .restart local v16       #retry:I
    :cond_11
    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1558
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getNetworkInfo: updated IsAvailable="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    :cond_12
    :goto_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 1559
    :catch_0
    move-exception v9

    .line 1560
    .local v9, e:Landroid/os/RemoteException;
    if-nez v16, :cond_12

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    goto :goto_f

    .line 1568
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_13
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_8

    .line 1573
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1574
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1577
    :cond_14
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1583
    sget-object v21, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    sget-object v21, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1584
    :cond_15
    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1586
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    goto/16 :goto_9

    .line 1599
    :pswitch_1
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 1606
    :pswitch_2
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 1612
    :pswitch_3
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    .line 1615
    sget-object v21, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    sget-object v21, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 1616
    :cond_16
    const/4 v6, 0x1

    .line 1617
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Apn: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", need to get IMS IP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1621
    :cond_17
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 1641
    :cond_18
    const-string v21, " LinkProperties = "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1647
    :cond_19
    const-string v21, " LinkCapabilities = "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1659
    .end local v16           #retry:I
    :cond_1a
    const-string v21, "linkPropertiesChanged"

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 1660
    const-string v21, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/LinkProperties;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1661
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    if-nez v21, :cond_1b

    .line 1662
    const-string v21, "No link property in LINK_PROPERTIES change event."

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1663
    new-instance v21, Landroid/net/LinkProperties;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1666
    :cond_1b
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v21, v0

    const v22, 0x70001

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1670
    .restart local v11       #msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 1673
    .end local v11           #msg:Landroid/os/Message;
    :cond_1c
    if-eqz v15, :cond_8

    const-string v21, "apnFailed"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string/jumbo v21, "noSuchPdp"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_1d
    if-eqz v5, :cond_8

    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 1678
    const-string v21, "Handle PhoneConstants.REASON_APN_FAILED OR  PhoneConstants.REASON_NO_SUCH_PDP from GeminiDataSubUtil"

    invoke-direct/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1679
    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1680
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 1681
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1684
    :cond_1e
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 1571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendGlobalIPAddrToVa(Ljava/net/InetAddress;)V
    .locals 3
    .parameter "inetAddress"

    .prologue
    .line 1293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lte_global_ip_addr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1295
    const-string v1, "apnType"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v1, "iface"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/high16 v6, 0x7

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_3

    .line 534
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 535
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 543
    move-object p2, v0

    .line 544
    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 546
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 552
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_1
    :goto_1
    return-void

    .line 534
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 547
    :cond_3
    if-eqz p2, :cond_1

    const-string/jumbo v3, "noSuchPdp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "apnFailed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_1

    .line 548
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 550
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 4
    .parameter "apnType"
    .parameter "enable"

    .prologue
    .line 751
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 756
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 757
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 758
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 773
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 774
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 763
    :cond_1
    if-eqz p2, :cond_2

    .line 764
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 766
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 756
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private setEnableApnGemini(Ljava/lang/String;ZI)I
    .locals 4
    .parameter "apnType"
    .parameter "enable"
    .parameter "radioNum"

    .prologue
    .line 1096
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1101
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1102
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 1103
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 1108
    :cond_1
    if-eqz p2, :cond_2

    .line 1109
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gemini before enableApnTypeGemini() and mApnType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,radioNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 1112
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/ITelephony;->disableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 867
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method private updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 286
    const-string v0, "linkProperties"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 288
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "CONNECTED event did not supply link properties."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 294
    const-string v0, "linkCapabilities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 296
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v0, :cond_1

    .line 297
    const-string v0, "CONNECTED event did not supply link capabilities."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 298
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 300
    :cond_1
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 689
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 690
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 1
    .parameter "isCaptivePortal"

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 514
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 517
    :cond_0
    return-void

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 276
    return-void
.end method

.method public enableMobileProvisioning(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMobileProvisioning(url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 704
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 705
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 706
    .local v1, msg:Landroid/os/Message;
    const v2, 0x42025

    iput v2, v1, Landroid/os/Message;->what:I

    .line 707
    const-string/jumbo v2, "provisioningUrl"

    invoke-static {v2, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 708
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 710
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 6

    .prologue
    .line 873
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 875
    :cond_0
    const/4 v1, 0x0

    .line 927
    :goto_0
    return-object v1

    .line 878
    :cond_1
    new-instance v1, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v1}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 880
    .local v1, li:Landroid/net/MobileLinkQualityInfo;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNetworkType(I)V

    .line 882
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v3, v1}, Landroid/net/SamplingDataTracker;->setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V

    .line 884
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    if-eqz v3, :cond_3

    .line 885
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setMobileNetworkType(I)V

    .line 887
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    move-result-object v0

    .line 888
    .local v0, entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    if-eqz v0, :cond_2

    .line 889
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 890
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 891
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalLatency(I)V

    .line 894
    :cond_2
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_3

    .line 895
    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNormalizedSignalStrength(I)V

    .line 900
    .end local v0           #entry:Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_3
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 901
    .local v2, ss:Landroid/telephony/SignalStrength;
    if-eqz v2, :cond_4

    .line 903
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setRssi(I)V

    .line 904
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setGsmErrorRate(I)V

    .line 905
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaDbm(I)V

    .line 906
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaEcio(I)V

    .line 907
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoDbm(I)V

    .line 908
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoEcio(I)V

    .line 909
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoSnr(I)V

    .line 910
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteSignalStrength(I)V

    .line 911
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrp(I)V

    .line 912
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrq(I)V

    .line 913
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRssnr(I)V

    .line 914
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteCqi(I)V

    .line 918
    :cond_4
    const-string v3, "MobileDataStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning LinkQualityInfo with MobileNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Theoretical Rx BW = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getTheoreticalRxBandwidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsm Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cdma Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getCdmaDbm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " evdo Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getEvdoDbm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lte Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getLteSignalStrength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v0, v0, v1

    .line 267
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v0, v0, v2

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 420
    const-string/jumbo v1, "unknown"

    .line 421
    .local v1, networkTypeStr:Ljava/lang/String;
    new-instance v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 429
    .local v2, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    .line 433
    .local v0, netType:I
    packed-switch v0, :pswitch_data_0

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown network type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 482
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net.tcp.buffersize."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 435
    :pswitch_0
    const-string v1, "gprs"

    .line 436
    goto :goto_0

    .line 438
    :pswitch_1
    const-string v1, "edge"

    .line 439
    goto :goto_0

    .line 441
    :pswitch_2
    const-string/jumbo v1, "umts"

    .line 442
    goto :goto_0

    .line 444
    :pswitch_3
    const-string v1, "hsdpa"

    .line 445
    goto :goto_0

    .line 447
    :pswitch_4
    const-string v1, "hsupa"

    .line 448
    goto :goto_0

    .line 450
    :pswitch_5
    const-string v1, "hspa"

    .line 451
    goto :goto_0

    .line 453
    :pswitch_6
    const-string v1, "hspap"

    .line 454
    goto :goto_0

    .line 456
    :pswitch_7
    const-string v1, "cdma"

    .line 457
    goto :goto_0

    .line 459
    :pswitch_8
    const-string v1, "1xrtt"

    .line 460
    goto :goto_0

    .line 462
    :pswitch_9
    const-string v1, "evdo"

    .line 463
    goto :goto_0

    .line 465
    :pswitch_a
    const-string v1, "evdo"

    .line 466
    goto :goto_0

    .line 468
    :pswitch_b
    const-string v1, "evdo"

    .line 469
    goto :goto_0

    .line 471
    :pswitch_c
    const-string v1, "iden"

    .line 472
    goto :goto_0

    .line 474
    :pswitch_d
    const-string v1, "lte"

    .line 475
    goto :goto_0

    .line 477
    :pswitch_e
    const-string v1, "ehrpd"

    .line 478
    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 408
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 843
    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 845
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 846
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 855
    :cond_0
    :goto_1
    return v2

    .line 849
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isVoiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 850
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 845
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isIdleGemini(I)Z
    .locals 4
    .parameter "radioNum"

    .prologue
    const/4 v2, 0x0

    .line 1069
    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1071
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 1072
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 1083
    :cond_0
    :goto_1
    return v2

    .line 1077
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->isIdleGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 1078
    :catch_0
    move-exception v0

    .line 1080
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1071
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isProvisioningNetwork()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 719
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 720
    .local v1, msg:Landroid/os/Message;
    const v4, 0x42026

    iput v4, v1, Landroid/os/Message;->what:I

    .line 721
    const-string v4, "apnType"

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 722
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 723
    .local v2, result:Landroid/os/Message;
    iget v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    .line 728
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #result:Landroid/os/Message;
    .local v3, retVal:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 729
    return v3

    .line 723
    .end local v3           #retVal:Z
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #result:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 724
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #result:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 726
    const/4 v3, 0x0

    .restart local v3       #retVal:Z
    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 254
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, retValue:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 570
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 590
    :goto_0
    :pswitch_0
    return v0

    .line 574
    :pswitch_1
    const/4 v0, 0x1

    .line 575
    goto :goto_0

    .line 578
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    const/4 v0, 0x1

    .line 582
    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reconnectGemini(I)Z
    .locals 4
    .parameter "radioNum"

    .prologue
    const/4 v3, 0x0

    .line 1037
    const/4 v0, 0x0

    .line 1040
    .local v0, retValue:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1041
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnGemini(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1058
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1061
    :goto_0
    :pswitch_0
    return v0

    .line 1045
    :pswitch_1
    const/4 v0, 0x1

    .line 1046
    goto :goto_0

    .line 1049
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    const/4 v0, 0x1

    .line 1053
    goto :goto_0

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 694
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 695
    return-void
.end method

.method sendIPAddrToHandler(Ljava/net/InetAddress;)V
    .locals 2
    .parameter "inetAddress"

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1290
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .parameter "met"

    .prologue
    .line 673
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 675
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 677
    .local v2, msg:Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 678
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 679
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 680
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 678
    .restart local v2       #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 682
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 683
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"
    .parameter "simId"

    .prologue
    const/high16 v5, 0x7

    .line 1135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1136
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-ne p1, v3, :cond_0

    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_5

    .line 1138
    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .line 1139
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 1147
    move-object p2, v0

    .line 1148
    :cond_1
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1149
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1150
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1152
    :cond_2
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1153
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1162
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_3
    :goto_1
    return-void

    .line 1138
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1154
    :cond_5
    if-eqz p2, :cond_3

    const-string/jumbo v3, "noSuchPdp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "apnFailed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_6
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_3

    .line 1155
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1156
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1157
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1159
    :cond_7
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1160
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableFailFastMobileData(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 663
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 664
    const v1, 0x42024

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 666
    :cond_0
    return-void
.end method

.method public setInternalDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInternalDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 625
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 626
    const v2, 0x4201b

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInternalDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 630
    return-void

    .line 626
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1440
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1441
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 648
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 649
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 651
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 653
    :cond_0
    return-void

    .line 649
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 5
    .parameter "turnOn"

    .prologue
    const/4 v3, 0x0

    .line 599
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 604
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 605
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 606
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 617
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set radio power to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 618
    :goto_2
    return v2

    .line 611
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 555
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 556
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 636
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 637
    const v2, 0x4201e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 639
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 641
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 642
    return-void

    .line 637
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 154
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 157
    new-instance v2, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 159
    sget-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    sput-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 176
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 177
    sget-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->addTracker(Ljava/lang/String;Landroid/net/MobileDataStateTracker;)V

    .line 178
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 180
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 1013
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 1018
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 3
    .parameter "messenger"

    .prologue
    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got supplyMessenger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 835
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 836
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 837
    return-void
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 492
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public teardownGemini(I)Z
    .locals 4
    .parameter "radioNum"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1028
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1029
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnGemini(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 735
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 736
    .local v1, writer:Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 737
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 738
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 739
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 740
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
