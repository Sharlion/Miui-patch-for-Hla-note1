.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_LISTEN_FLAG:Ljava/lang/String; = "com.android.server.WifiManager.action.CLEAR_LISTEN_FLAG"

.field private static final ACTION_CLEAR_TMP_GO:Ljava/lang/String; = "com.android.server.WifiManager.action.CLEAR_TMP_GO"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CLEAR_LISTEN_FLAG_REQUEST:I = 0x2

.field private static final CLEAR_OPERATION_MS:J = 0x1d4c0L

.field private static final CLEAR_TMP_GO_REQUEST:I = 0x1

.field private static final CONNECTED_DISCOVER_TIMEOUT_S:I = 0x19

.field private static final DBG:Z = true

.field private static final DHCP_INFO_FILE:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.p2p0.leases"

.field private static final DHCP_RANGE:[Ljava/lang/String; = null

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field public static final FAST_CONNECT_FIND_GO_TIMED_OUT:I = 0x23009

.field private static final FAST_CONNECT_FIND_GO_WAIT_TIME_MS:I = 0x7530

.field private static final FAST_DISCOVER_TIMEOUT_S:I = 0x7b

.field private static final FAST_SCAN_INTERVAL_TIME_MS:I = 0xbb8

.field private static final FORM_GROUP:Ljava/lang/Boolean; = null

.field private static final GC_IP_RANGE:[Ljava/lang/String; = null

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean; = null

.field private static final MTK_NFC_P2P_STOP_ACTION:Ljava/lang/String; = "mtk.nfc.p2p.STOP_ACTION"

.field private static final MTK_NFC_WFA_CFG_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HR_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_EXTRA_HS_P2P_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.p2p.extra.HS_P2P_DEV_INFO"

.field private static final MTK_NFC_WFA_P2P_HR_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_ACTION"

.field private static final MTK_NFC_WFA_P2P_HR_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_P2P_HS_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_EXTRA_DEV_INFO:Ljava/lang/String; = "mtk.nfc.wfa.tag.extra.DEV_INFO"

.field private static final MTK_NFC_WFA_TAG_RECEIVE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.RECEIVE_ACTION"

.field private static final MTK_NFC_WFA_TAG_WRITE_ACTION:Ljava/lang/String; = "mtk.nfc.wfa.tag.WRITE_ACTION"

.field private static final MTK_WPS_NFC_TESTBED_EXTRA_PASSWORD:Ljava/lang/String; = "mtk.wps.nfc.testbed.extra.password"

.field private static final MTK_WPS_NFC_TESTBED_P2P_AUTOGO_AS_SEL_ACTION:Ljava/lang/String; = "mtk.wps.nfc.testbed.p2pgo.as.sel"

.field private static final M_CMD_NFC_HANDOVER_READ:I = 0x23015

.field private static final M_CMD_NFC_NFC_GETNFC_REQ_INFO:I = 0x23017

.field private static final M_CMD_NFC_NFC_GETNFC_SEL_INFO:I = 0x23018

.field private static final M_CMD_NFC_NFC_TIMEOUT:I = 0x23016

.field private static final M_CMD_NFC_TAG_READ:I = 0x23014

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field public static final NFC_P2P_UNSUPPORT:I = -0x1

.field private static final NO_RELOAD:Ljava/lang/Boolean; = null

.field public static final P2P_ACTIVE:I = 0x0

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_FAST_PS:I = 0x2

.field public static final P2P_MAX_PS:I = 0x1

.field public static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field public static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean; = null

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final STOP_P2P_MONITOR_TIMED_OUT:I = 0x2300a

.field private static final STOP_P2P_MONITOR_WAIT_TIME_MS:I = 0x1388

.field private static final STOP_P2P_REQUEST:I = 0x2

.field private static final SUBMASK:Ljava/lang/String; = "255.255.255.0"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final UNKNOWN_COMMAND:Ljava/lang/String; = "UNKNOWN COMMAND"

.field private static mDisableP2pTimeoutIndex:I

.field private static mFastConnectFindGoTimeOutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static mStopP2pMonitorTimeoutIndex:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mBeamPlusStart:Z

.field private mClearListenFlagIntent:Landroid/app/PendingIntent;

.field private mClearTmpGoIntent:Landroid/app/PendingIntent;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceCapa:I

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

.field private mFoundGo:Z

.field private mFoundGoTimeOut:Z

.field private mGcFastConnectEnaled:Z

.field private mGoFastConnectEnaled:Z

.field private mGroupCreatedEntirely:Z

.field private mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field private mHfcConnectingDeviceName:Ljava/lang/String;

.field private mHfcConnectingPhase:Z

.field private mIntentStopP2PNfc:Landroid/app/PendingIntent;

.field private mInterface:Ljava/lang/String;

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mListening:Z

.field mNFcFloatToast:Landroid/widget/Toast;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNfcRequestInfoGet:Z

.field private mNfcRequesttoken:Ljava/lang/String;

.field private mNfcSelectInfoGet:Z

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mOpenByNfc:Z

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mReadHandover:Z

.field private mReceivedHR:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRestartFastConnectAsGc:Z

.field private mRestartFastConnectAsGo:Z

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTmpGcIp:Ljava/lang/String;

.field private mTmpGoAddress:Ljava/lang/String;

.field private mTmpGoIp:Ljava/lang/String;

.field private mTurnOffWifi_NfcP2p:Z

.field private mWaitingForHrToken:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 147
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 151
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 154
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 272
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "192.168.49.12"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    .line 277
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    .line 329
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mStopP2pMonitorTimeoutIndex:I

    .line 333
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.2"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.3"

    aput-object v1, v0, v3

    const-string v1, "192.168.49.4"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "192.168.49.5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "192.168.49.6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "192.168.49.7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "192.168.49.8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.49.9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.49.10"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.49.11"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->GC_IP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 477
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 140
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 225
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 251
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    .line 255
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 258
    iput-byte v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 265
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 300
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 301
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    .line 302
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    .line 303
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    .line 304
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    .line 305
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    .line 306
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    .line 314
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    .line 317
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 320
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientIp:Ljava/util/HashMap;

    .line 346
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWaitingForHrToken:Z

    .line 347
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z

    .line 348
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z

    .line 349
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReadHandover:Z

    .line 351
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z

    .line 356
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    .line 358
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcRequestInfoGet:Z

    .line 359
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcSelectInfoGet:Z

    .line 361
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTurnOffWifi_NfcP2p:Z

    .line 478
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 481
    const-string/jumbo v1, "p2p0"

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 482
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0xd

    const-string v3, "WIFI_P2P"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 484
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 487
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 490
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "WifiP2pService"

    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 491
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.p2p.STOP_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, stopP2PNfcIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIntentStopP2PNfc:Landroid/app/PendingIntent;

    .line 498
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z

    return p1
.end method

.method static synthetic access$10800()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$10804()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    return v0
.end method

.method static synthetic access$11302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    return p1
.end method

.method static synthetic access$11500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    return v0
.end method

.method static synthetic access$11502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$13200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$13502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object v0
.end method

.method static synthetic access$14902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p1
.end method

.method static synthetic access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$15102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$16300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    return v0
.end method

.method static synthetic access$16302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    return p1
.end method

.method static synthetic access$17200(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->sendNfcConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcSelectInfoGet:Z

    return p1
.end method

.method static synthetic access$18100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$18300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$18400(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$18402(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$18404(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$18500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$19100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$19102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$19200(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceCapa:I

    return v0
.end method

.method static synthetic access$19202(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceCapa:I

    return p1
.end method

.method static synthetic access$2000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWaitingForHrToken:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWaitingForHrToken:Z

    return p1
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2104()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mStopP2pMonitorTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2904()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mStopP2pMonitorTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mStopP2pMonitorTimeoutIndex:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientIp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGcIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGcIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReadHandover:Z

    return v0
.end method

.method static synthetic access$4502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReadHandover:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClearTmpGoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClearTmpGoIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$5300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$5302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    return v0
.end method

.method static synthetic access$5902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClearListenFlagIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z

    return v0
.end method

.method static synthetic access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z

    return p1
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClearListenFlagIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z

    return v0
.end method

.method static synthetic access$702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z

    return p1
.end method

.method static synthetic access$7200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7202(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7300(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->sendNfcRequestTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->sendNfcSelectTokenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcRequestInfoGet:Z

    return v0
.end method

.method static synthetic access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcRequestInfoGet:Z

    return p1
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcRequesttoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7602(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcRequesttoken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->GC_IP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTurnOffWifi_NfcP2p:Z

    return v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTurnOffWifi_NfcP2p:Z

    return p1
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    return v0
.end method

.method static synthetic access$7902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService;[B)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/p2p/WifiP2pService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService;->errorHandleNfcP2p(II)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9800()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$9802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return p0
.end method

.method static synthetic access$9804()I
    .locals 1

    .prologue
    .line 127
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$9900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    return v0
.end method

.method static synthetic access$9902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    return p1
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 4640
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4641
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 4642
    :cond_0
    const/4 v4, 0x0

    .line 4652
    :goto_0
    return-object v4

    .line 4644
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 4645
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .line 4646
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 4647
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 4648
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4650
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4652
    .end local v0           #hv:Ljava/lang/String;
    .end local v3           #v:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private errorHandleNfcP2p(II)V
    .locals 8
    .parameter "what"
    .parameter "agr1"

    .prologue
    const v7, 0x205010f

    const v6, 0x205010e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4765
    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTurnOffWifi_NfcP2p:Z

    if-ne v5, v1, :cond_0

    .line 4766
    const-string v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorHandleNfcP2p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    sparse-switch p2, :sswitch_data_0

    .line 4791
    const-string v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " agr1= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4795
    .local v0, toastContent:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNFcFloatToast:Landroid/widget/Toast;

    .line 4796
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNFcFloatToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4797
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTurnOffWifi_NfcP2p:Z

    .line 4800
    .end local v0           #toastContent:Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    if-ne v1, v5, :cond_2

    .line 4801
    const-string v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorHandleNfcP2p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disable wifi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 4803
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4805
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4806
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    .line 4809
    :cond_2
    return-void

    .line 4770
    :sswitch_0
    if-ne p2, v5, :cond_3

    .line 4771
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #toastContent:Ljava/lang/String;
    goto :goto_0

    .line 4773
    .end local v0           #toastContent:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4775
    .restart local v0       #toastContent:Ljava/lang/String;
    goto :goto_0

    .line 4778
    .end local v0           #toastContent:Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4779
    .restart local v0       #toastContent:Ljava/lang/String;
    goto :goto_0

    .line 4785
    .end local v0           #toastContent:Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4786
    .restart local v0       #toastContent:Ljava/lang/String;
    goto :goto_0

    .line 4788
    .end local v0           #toastContent:Ljava/lang/String;
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4789
    .restart local v0       #toastContent:Ljava/lang/String;
    goto/16 :goto_0

    .line 4767
    :sswitch_data_0
    .sparse-switch
        0x2200a -> :sswitch_2
        0x2203f -> :sswitch_0
        0x22060 -> :sswitch_0
        0x23001 -> :sswitch_1
        0x23005 -> :sswitch_2
        0x23009 -> :sswitch_1
        0x23016 -> :sswitch_3
        0x2401e -> :sswitch_2
        0x24020 -> :sswitch_2
        0x24027 -> :sswitch_2
    .end sparse-switch
.end method

.method private getP2pHandoverRequestToken()[B
    .locals 4

    .prologue
    .line 4698
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 4702
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->getP2pHandoverRequestToken()Ljava/lang/String;

    move-result-object v0

    .line 4703
    .local v0, token:Ljava/lang/String;
    const-string v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getP2pHandoverRequestToken, token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UNKNOWN COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4705
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 4707
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 4628
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4629
    :cond_0
    const/4 v0, 0x0

    .line 4636
    :cond_1
    return-object v0

    .line 4631
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 4632
    .local v2, length:I
    new-array v0, v2, [B

    .line 4633
    .local v0, d:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4634
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 4633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendNfcConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4670
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.cfg.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4671
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4672
    const-string/jumbo v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4673
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4674
    return-void
.end method

.method private sendNfcRequestTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4656
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.p2p.HR_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4657
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4658
    const-string/jumbo v1, "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4659
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4660
    return-void
.end method

.method private sendNfcSelectTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4663
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.nfc.wfa.tag.WRITE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4664
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4665
    const-string/jumbo v1, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4666
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4667
    return-void
.end method

.method private sendNfcWpsConfigTokenBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4677
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mtk.wps.nfc.testbed.p2pgo.as.sel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4678
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4679
    const-string/jumbo v1, "mtk.wps.nfc.testbed.extra.password"

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4680
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4681
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 503
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 547
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTempoarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 5
    .parameter "info"

    .prologue
    .line 572
    :try_start_0
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO in fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-static {}, Landroid/net/wifi/WifiNative;->getCredential()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, returnConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 580
    new-instance v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 581
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 582
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->venderId:I

    iput v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->venderId:I

    .line 583
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v3, 0x2205a

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 585
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO return fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO Self fastConnectInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1           #returnConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :goto_0
    return-object v1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fastConnectAsGo() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 596
    const-string v0, "WifiP2pService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMacAddress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 527
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 528
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getNfcRequestInfo(Z)[B
    .locals 8
    .parameter "openByNfc"

    .prologue
    .line 4713
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 4717
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    .line 4718
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->getP2pHandoverRequestToken()[B

    move-result-object v1

    .line 4719
    .local v1, token:[B
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v3, 0x23017

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 4721
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4723
    const/16 v0, 0x23

    .line 4724
    .local v0, mDuration:I
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIntentStopP2PNfc:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4725
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNfcRequestInfo Set alarm for  openByNfc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x88b8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIntentStopP2PNfc:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 4729
    .end local v0           #mDuration:I
    :cond_0
    return-object v1
.end method

.method public getNfcSelectInfo(Z)[B
    .locals 8
    .parameter "openByNfc"

    .prologue
    .line 4732
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 4736
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    .line 4737
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService;->getP2pHandoverSelectToken()[B

    move-result-object v1

    .line 4738
    .local v1, token:[B
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v3, 0x23018

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 4740
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mOpenByNfc:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4742
    const/16 v0, 0x23

    .line 4743
    .local v0, mDuration:I
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIntentStopP2PNfc:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4744
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNfcSelectInfo Set alarm for  openByNfc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x88b8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIntentStopP2PNfc:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 4748
    .end local v0           #mDuration:I
    :cond_0
    return-object v1
.end method

.method public getP2pHandoverSelectToken()[B
    .locals 4

    .prologue
    .line 4684
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 4688
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->getP2pHandoverSelectToken()Ljava/lang/String;

    move-result-object v0

    .line 4689
    .local v0, token:Ljava/lang/String;
    const-string v1, "WifiP2pService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getP2pHandoverSelectToken, token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UNKNOWN COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4691
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 4693
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "peerMacAddress"

    .prologue
    .line 602
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceConnectivityInternalPermission()V

    .line 542
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(II)V

    .line 543
    return-void
.end method
