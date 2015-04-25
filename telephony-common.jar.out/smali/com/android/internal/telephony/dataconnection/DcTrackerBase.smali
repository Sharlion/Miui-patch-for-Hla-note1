.class public abstract Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.super Landroid/os/Handler;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SET_PS_ATTACH_MODE:Ljava/lang/String; = "com.mtk.GPRS.ACTION_SET_PS_ATTACH_MODE"

.field protected static final APN_DELAY_DEFAULT_MILLIS:I = 0x4e20

.field protected static final APN_FAIL_FAST_DELAY_DEFAULT_MILLIS:I = 0xbb8

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field private static final DEFAULT_MDC_INITIAL_RETRY:I = 0x1

.field protected static final FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "fail_data_setup_counter"

.field protected static final FAIL_DATA_SETUP_FAIL_CAUSE:Ljava/lang/String; = "fail_data_setup_fail_cause"

.field protected static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field protected static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field protected static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field private static final INTENT_RECONNECT_ALARM_APN_TYPE:Ljava/lang/String; = "apnType"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-restart-trysetup"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM_EXTRA_TYPE:Ljava/lang/String; = "restart_trysetup_alarm_extra_type"

.field protected static final INTENT_SET_FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "com.android.internal.telephony.dataconnection.dctrackerbase.intent_set_fail_data_setup_counter"

.field private static final KEY_ATTACH_MODE:Ljava/lang/String; = "attach_mode"

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field private static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field private static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field private static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field protected static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field protected static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field protected static final RADIO_TESTS:Z = false

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z = true

.field protected static final VDBG_STALL:Z = true

.field private static final mRoamingSetting:[Ljava/lang/String;

.field protected static sEnableFailFastRefCounter:I

.field protected static sPolicyDataEnabled:Z


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field mAlarmManager:Landroid/app/AlarmManager;

.field protected mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mChargingMode:Z

.field protected mCidActive:I

.field mCm:Landroid/net/ConnectivityManager;

.field protected mDataConnectionAcHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnabled:[Z

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private final mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected volatile mDataStallDetectionEnabled:Z

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

.field protected mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field protected mEnableFDOnCharing:I

.field private mEnabledCount:I

.field protected mFailDataSetupCounter:I

.field protected mFailDataSetupFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field protected volatile mFailFast:Z

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mInVoiceCall:Z

.field protected mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsProvisioning:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPollNetStat:Ljava/lang/Runnable;

.field protected mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field mPrioritySortedApnContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field protected mProvisioningApnAlarmTag:I

.field protected mProvisioningUrl:Ljava/lang/String;

.field protected mRadioAvailable:Z

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRecordsLoaded:Z

.field protected mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mSettingProviderRetryCount:I

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field protected mTxPkts:J

.field protected mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    sput-boolean v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 267
    sput v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 384
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_roaming"

    aput-object v1, v0, v2

    const-string v1, "data_roaming_2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data_roaming_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_roaming_4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRoamingSetting:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 14
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 874
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    .line 134
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 139
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 144
    const/16 v0, 0x11

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    .line 146
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 149
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 197
    const-string v0, "gsm.radioreset"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    .line 219
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupCounter:I

    .line 221
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 244
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 245
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 246
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    .line 249
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRadioAvailable:Z

    .line 250
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRecordsLoaded:Z

    .line 255
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 257
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 261
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 265
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    .line 269
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 271
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 274
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 277
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 280
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 286
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 291
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 294
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mChargingMode:Z

    .line 295
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnableFDOnCharing:I

    .line 298
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    .line 333
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 336
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 339
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    .line 342
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 348
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 351
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 368
    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 373
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 377
    const-string v0, "DcTrackerBase"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->LOG_TAG:Ljava/lang/String;

    .line 397
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 403
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    .line 875
    const-string v0, "DCT.constructor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 876
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v1, 0x42021

    invoke-virtual {v0, p0, v1, v13}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    .line 887
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 888
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string v0, "com.android.internal.telephony.data-stall"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v0, "com.android.internal.telephony.dataconnection.dctrackerbase.intent_set_fail_data_setup_counter"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v0, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_2

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v9, v13, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 911
    const-string v0, "net.def_data_on_boot"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 912
    .local v6, dataOnBoot:Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    if-eqz v6, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v0, :cond_3

    move v0, v11

    :goto_1
    aput-boolean v0, v1, v12

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_0

    .line 915
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 919
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    invoke-interface {v10, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 920
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 924
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcTrackerBase(): mUserDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataOnBoot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataEnabled[DctConstants.APN_DEFAULT_ID] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabledCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->syncRoamingSetting()V

    .line 934
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->register()V

    .line 938
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "DcHandlerThread"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 939
    .local v8, dcHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 940
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 941
    .local v7, dcHandler:Landroid/os/Handler;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v0, p0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 942
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 944
    return-void

    .end local v6           #dataOnBoot:Z
    .end local v7           #dcHandler:Landroid/os/Handler;
    .end local v8           #dcHandlerThread:Landroid/os/HandlerThread;
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v0, v12

    .line 899
    goto/16 :goto_0

    .restart local v6       #dataOnBoot:Z
    :cond_3
    move v0, v12

    .line 912
    goto/16 :goto_1
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRoamingSetting:[Ljava/lang/String;

    return-object v0
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1541
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1519
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1536
    :goto_0
    :pswitch_0
    return-void

    .line 1525
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1529
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateDataStallInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 2057
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V

    .line 2058
    .local v0, preTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 2061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preTxRxSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2065
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iget-wide v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v3, v5, v7

    .line 2066
    .local v3, sent:J
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iget-wide v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v1, v5, v7

    .line 2074
    .local v1, received:J
    cmp-long v5, v3, v9

    if-lez v5, :cond_0

    cmp-long v5, v1, v9

    if-lez v5, :cond_0

    .line 2075
    const-string v5, "updateDataStallInfo: IN/OUT"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2076
    iput-wide v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2077
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2095
    :goto_0
    return-void

    .line 2078
    :cond_0
    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    cmp-long v5, v1, v9

    if-nez v5, :cond_2

    .line 2079
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    .line 2080
    iget-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2085
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataStallInfo: OUT sent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSentSinceLastRecv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_1
    iput-wide v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    goto :goto_1

    .line 2088
    :cond_2
    cmp-long v5, v3, v9

    if-nez v5, :cond_3

    cmp-long v5, v1, v9

    if-lez v5, :cond_3

    .line 2089
    const-string v5, "updateDataStallInfo: IN"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2090
    iput-wide v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2091
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2093
    :cond_3
    const-string v5, "updateDataStallInfo: NONE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1441
    packed-switch p1, :pswitch_data_0

    .line 1473
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1474
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1443
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1445
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 1447
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 1449
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 1451
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 1453
    :pswitch_6
    const-string v0, "ims"

    goto :goto_0

    .line 1455
    :pswitch_7
    const-string v0, "fota"

    goto :goto_0

    .line 1457
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 1459
    :pswitch_9
    const-string v0, "ia"

    goto :goto_0

    .line 1461
    :pswitch_a
    const-string v0, "dm"

    goto :goto_0

    .line 1463
    :pswitch_b
    const-string v0, "net"

    goto :goto_0

    .line 1465
    :pswitch_c
    const-string v0, "wap"

    goto :goto_0

    .line 1467
    :pswitch_d
    const-string v0, "cmmail"

    goto :goto_0

    .line 1469
    :pswitch_e
    const-string v0, "rcse"

    goto :goto_0

    .line 1471
    :pswitch_f
    const-string v0, "emergency"

    goto :goto_0

    .line 1441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1405
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    const/4 v0, 0x0

    .line 1436
    :goto_0
    return v0

    .line 1407
    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    const/4 v0, 0x1

    goto :goto_0

    .line 1409
    :cond_1
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    const/4 v0, 0x2

    goto :goto_0

    .line 1411
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1412
    const/4 v0, 0x3

    goto :goto_0

    .line 1413
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    const/4 v0, 0x4

    goto :goto_0

    .line 1415
    :cond_4
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    const/4 v0, 0x5

    goto :goto_0

    .line 1417
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1418
    const/4 v0, 0x6

    goto :goto_0

    .line 1419
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1420
    const/4 v0, 0x7

    goto :goto_0

    .line 1421
    :cond_7
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1422
    const/16 v0, 0x8

    goto :goto_0

    .line 1423
    :cond_8
    const-string v0, "dm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1424
    const/16 v0, 0xb

    goto :goto_0

    .line 1425
    :cond_9
    const-string v0, "net"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1426
    const/16 v0, 0xd

    goto :goto_0

    .line 1427
    :cond_a
    const-string v0, "wap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1428
    const/16 v0, 0xc

    goto :goto_0

    .line 1429
    :cond_b
    const-string v0, "cmmail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1430
    const/16 v0, 0xe

    goto :goto_0

    .line 1431
    :cond_c
    const-string v0, "rcse"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1432
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1433
    :cond_d
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1434
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1436
    :cond_e
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method protected broadcastMessenger()V
    .locals 3

    .prologue
    .line 963
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/DctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/DctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 965
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 966
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 1778
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1779
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1780
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1781
    return-void
.end method

.method public declared-synchronized clearDataBearer()V
    .locals 2

    .prologue
    .line 2527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42042

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->clearDataBearer(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2528
    monitor-exit p0

    return-void

    .line 2527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract deactivatePdpByCid(I)V
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1
    .parameter "simId"
    .parameter "dialUpNumber"

    .prologue
    .line 2507
    const-string v0, "dialUpCsd(): Default impl always do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 2508
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1618
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableApnType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1620
    .local v0, id:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1635
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1623
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1624
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V

    .line 1625
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    move v1, v2

    .line 1627
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1629
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1632
    goto :goto_0

    .line 1618
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 947
    const-string v2, "DCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 948
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 949
    .local v0, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    goto :goto_0

    .line 951
    .end local v0           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 952
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 954
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    .line 955
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 957
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 958
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    .line 959
    return-void
.end method

.method protected doRecovery()V
    .locals 4

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 1996
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 1997
    .local v0, recoveryAction:I
    packed-switch v0, :pswitch_data_0

    .line 2047
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1999
    :pswitch_0
    const v1, 0xc3c6

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2001
    const-string v1, "doRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2002
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2003
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2050
    :goto_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2052
    .end local v0           #recoveryAction:I
    :cond_0
    return-void

    .line 2006
    .restart local v0       #recoveryAction:I
    :pswitch_1
    const v1, 0xc3c7

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2007
    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2008
    const-string v1, "pdpReset"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2009
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2012
    :pswitch_2
    const v1, 0xc3c8

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2017
    const-string v1, "doRecovery() reconnect-gprs E"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2018
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42033

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->detachPS(Landroid/os/Message;)V

    .line 2019
    const-string v1, "doRecovery() reconnect-gprs X"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2020
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2023
    :pswitch_3
    const v1, 0xc3c9

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2025
    const-string v1, "restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2026
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2027
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto :goto_0

    .line 2036
    :pswitch_4
    const v1, 0xc3ca

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2037
    const-string v1, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2038
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    .line 2044
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2042
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2336
    const-string v17, "DataConnectionTrackerBase:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    const-string v17, " RADIO_TESTS=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mInternalDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUserDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " sPolicyDataEnabed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    const-string v17, " mDataEnabled:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 2343
    const-string v17, "  mDataEnabled[%d]=%b\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2342
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2345
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2346
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mEnabledCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRequestedApnType="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPhone="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActivity="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mState="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mTxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollPeriod="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallTxRxSum="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallAlarmTag="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallDetectionEanbled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mSentSinceLastRecv="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNoRecvPollCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mResolver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsWifiConnected="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mReconnectIntent="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mCidActive="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAutoAttachOnCreation="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsScreenOn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUniqueIdGenerator="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2368
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 2370
    .local v9, dcc:Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_1

    .line 2371
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2375
    :goto_1
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 2377
    .local v10, dcs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_2

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 2379
    .local v16, mDcSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataConnections: count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2381
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string v17, " *** mDataConnection[%d] \n"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2382
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 2373
    .end local v10           #dcs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #mDcSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_1
    const-string v17, " mDcc=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2385
    .restart local v10       #dcs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_2
    const-string v17, "mDataConnections=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    :cond_3
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2389
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 2390
    .local v7, apnToDcId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 2391
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 2392
    .local v8, apnToDcIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnToDataConnectonId size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2393
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2394
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v17, " mApnToDataConnectonId[%s]=%d\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 2397
    .end local v8           #apnToDcIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v17, "mApnToDataConnectionId=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    :cond_5
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2400
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2402
    .local v4, apnCtxs:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_7

    .line 2403
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 2404
    .local v5, apnCtxsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnContexts size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2406
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 2408
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_6
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2412
    .end local v5           #apnCtxsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2413
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActiveApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2415
    .local v6, apnSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_9

    .line 2416
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAllApnSettings size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 2418
    const-string v17, " mAllApnSettings[%d]: %s\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2417
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2410
    .end local v6           #apnSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    const-string v17, " mApnContexts=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2420
    .restart local v6       #apnSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2424
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPreferredApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsPsRestricted="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2426
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsDisposed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIntentReceiver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataRoamingSettingObserver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2429
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2430
    return-void

    .line 2422
    :cond_9
    const-string v17, " mAllApnSettings=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1579
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1580
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1581
    const/4 v1, 0x3

    .line 1600
    :goto_0
    monitor-exit p0

    return v1

    .line 1585
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnIdEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType: not available, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1591
    const/4 v1, 0x2

    goto :goto_0

    .line 1594
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType: already active, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1596
    const/4 v1, 0x0

    goto :goto_0

    .line 1598
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1579
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 7

    .prologue
    .line 984
    const-string v5, "net.tethering.noprovisioning"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 985
    const-string v5, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 986
    const/4 v2, 0x0

    .line 1004
    :goto_0
    return-object v2

    .line 988
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 989
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tether_dun_apn"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .line 992
    .local v2, dunSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_2

    .line 993
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 994
    .local v4, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, operator:Ljava/lang/String;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchDunApn: global TETHER_DUN_APN dunSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    .end local v3           #operator:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 1001
    .end local v4           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .line 1003
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchDunApn: config_tether_apndata dunSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 1024
    :cond_0
    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 1015
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1012
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1013
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1383
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1384
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mobile_data"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1386
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v2, :cond_3

    .line 1390
    .local v0, result:Z
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1392
    :cond_1
    return v0

    .end local v0           #result:Z
    :cond_2
    move v2, v1

    .line 1384
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1386
    goto :goto_1

    .line 1390
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 2434
    const/4 v0, -0x1

    .line 2437
    .local v0, currentDataConnectionSimId:I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 2441
    return v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1061
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    .line 1063
    .local v1, simId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1065
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRoamingSetting:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 1071
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v3

    .line 1070
    :catch_0
    move-exception v2

    .line 1071
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2479
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInitialMaxRetry()I
    .locals 3

    .prologue
    .line 673
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eqz v1, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 681
    :goto_0
    return v1

    .line 677
    :cond_0
    const-string v1, "mdc_initial_max_retry"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 681
    .local v0, value:I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mdc_initial_max_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method protected getInterfaceList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v4, interfaceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 647
    .local v0, apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_0

    .line 648
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 649
    .local v1, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v5

    .line 652
    .local v5, linkProp:Landroid/net/LinkProperties;
    if-eqz v5, :cond_0

    .line 654
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 657
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    .end local v0           #apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #linkProp:Landroid/net/LinkProperties;
    :cond_1
    return-object v4
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1496
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1498
    .local v0, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 1500
    .end local v0           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1484
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1486
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1488
    .local v0, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1490
    .end local v0           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 1978
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1980
    .local v0, action:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1981
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .parameter "forDefault"

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 1872
    .local v0, nt:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 1879
    :cond_0
    const-string v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1885
    :goto_0
    return-object v1

    .line 1882
    :cond_1
    if-eqz p1, :cond_2

    .line 1883
    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1885
    :cond_2
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 1117
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_0

    .line 1370
    const-string v15, "DATA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unidentified event msg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1119
    :sswitch_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1121
    .local v7, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    goto :goto_0

    .line 1126
    .end local v7           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableApn(II)V

    goto :goto_0

    .line 1130
    :sswitch_2
    const/4 v12, 0x0

    .line 1131
    .local v12, reason:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 1132
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12           #reason:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1134
    .restart local v12       #reason:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1138
    .end local v12           #reason:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1142
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    goto :goto_0

    .line 1146
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    goto :goto_0

    .line 1150
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioAvailable()V

    goto :goto_0

    .line 1154
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1158
    :sswitch_8
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    .line 1159
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1163
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1167
    :sswitch_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DataConnectoinTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1172
    :sswitch_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1177
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1181
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1185
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    :sswitch_f
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-nez v15, :cond_2

    const/4 v14, 0x0

    .line 1190
    .local v14, tearDown:Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    .end local v14           #tearDown:Z
    :cond_2
    const/4 v14, 0x1

    goto :goto_1

    .line 1194
    :sswitch_10
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v9, 0x1

    .line 1195
    .local v9, enabled:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .line 1194
    .end local v9           #enabled:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1199
    :sswitch_11
    const-string v15, "EVENT_RESET_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1205
    :sswitch_12
    const v15, 0x4201e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeMessages(I)V

    .line 1207
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v9, 0x1

    .line 1208
    .restart local v9       #enabled:Z
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .line 1207
    .end local v9           #enabled:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1213
    :sswitch_13
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v11, 0x1

    .line 1214
    .local v11, met:Z
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1216
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 1217
    const-string v15, "apnType"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1218
    .local v4, apnType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1219
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1213
    .end local v4           #apnType:Ljava/lang/String;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v11           #met:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1225
    :sswitch_14
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v9, 0x1

    .line 1226
    .restart local v9       #enabled:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .line 1225
    .end local v9           #enabled:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 1232
    :sswitch_15
    sget v16, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    const/4 v15, 0x1

    :goto_6
    add-int v15, v15, v16

    sput v15, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1234
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1237
    sget v15, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-gez v15, :cond_7

    .line 1238
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " < 0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1240
    .local v13, s:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1241
    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1243
    .end local v13           #s:Ljava/lang/String;
    :cond_7
    sget v15, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-lez v15, :cond_a

    const/4 v9, 0x1

    .line 1245
    .restart local v9       #enabled:Z
    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sEnableFailFastRefCounter="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eq v15, v9, :cond_0

    .line 1250
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 1251
    if-nez v9, :cond_b

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 1252
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1257
    :cond_8
    const-string v15, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 1259
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 1232
    .end local v9           #enabled:Z
    :cond_9
    const/4 v15, -0x1

    goto/16 :goto_6

    .line 1243
    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    .line 1251
    .restart local v9       #enabled:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_8

    .line 1261
    :cond_c
    const-string v15, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 1270
    .end local v9           #enabled:Z
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1271
    .restart local v6       #bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_d

    .line 1273
    :try_start_0
    const-string v15, "provisioningUrl"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1280
    const-string v15, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1281
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1282
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 1274
    :catch_0
    move-exception v8

    .line 1275
    .local v8, e:Ljava/lang/ClassCastException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1276
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto :goto_9

    .line 1284
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1285
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startProvisioningApnAlarm()V

    .line 1287
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    .line 1288
    const-string v15, "default"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->enableApnType(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1293
    .end local v6           #bundle:Landroid/os/Bundle;
    :sswitch_17
    const-string v15, "EVENT_PROVISIONING_APN_ALARM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v16, "default"

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1295
    .local v3, apnCtx:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1296
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1297
    const-string v15, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1298
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1299
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopProvisioningApnAlarm()V

    .line 1301
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 1304
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " != arg1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :cond_10
    const-string v15, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1315
    .end local v3           #apnCtx:Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_18
    const-string v15, "CMD_IS_PROVISIONING_APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1318
    const/4 v4, 0x0

    .line 1319
    .restart local v4       #apnType:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1320
    .restart local v6       #bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_11

    .line 1321
    const-string v15, "apnType"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1323
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1324
    const-string v15, "CMD_IS_PROVISIONING_APN: apnType is empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1325
    const/4 v10, 0x0

    .line 1333
    .end local v6           #bundle:Landroid/os/Bundle;
    .local v10, isProvApn:Z
    :goto_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMD_IS_PROVISIONING_APN: ret="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v16, v0

    const v17, 0x42026

    if-eqz v10, :cond_13

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1327
    .end local v10           #isProvApn:Z
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    .restart local v10       #isProvApn:Z
    goto :goto_a

    .line 1329
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #isProvApn:Z
    :catch_1
    move-exception v8

    .line 1330
    .restart local v8       #e:Ljava/lang/ClassCastException;
    const-string v15, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1331
    const/4 v10, 0x0

    .restart local v10       #isProvApn:Z
    goto :goto_a

    .line 1334
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_13
    const/4 v15, 0x0

    goto :goto_b

    .line 1339
    .end local v4           #apnType:Ljava/lang/String;
    .end local v10           #isProvApn:Z
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 1344
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onUpdateIcc()V

    goto/16 :goto_0

    .line 1349
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1350
    .local v5, ar:Landroid/os/AsyncResult;
    const-string v15, "RECV RSP for EVENT_FD_MODE_SET"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1351
    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_14

    .line 1352
    const-string v15, "SET_FD_MODE OK"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1354
    :cond_14
    const-string v15, "SET_FD_MODE ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1359
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const-string v15, "Recovery, detach done, then setGprsConn:always"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v15, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x1

    const v17, 0x42032

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->setGprsConnType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1366
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onClearDataBearer()V

    goto/16 :goto_0

    .line 1117
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_c
        0x42008 -> :sswitch_d
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_a
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_f
        0x4201a -> :sswitch_19
        0x4201b -> :sswitch_10
        0x4201c -> :sswitch_11
        0x4201d -> :sswitch_e
        0x4201e -> :sswitch_12
        0x4201f -> :sswitch_13
        0x42020 -> :sswitch_14
        0x42021 -> :sswitch_1a
        0x42022 -> :sswitch_b
        0x42023 -> :sswitch_9
        0x42024 -> :sswitch_15
        0x42025 -> :sswitch_16
        0x42026 -> :sswitch_18
        0x42027 -> :sswitch_17
        0x4202e -> :sswitch_1b
        0x42033 -> :sswitch_1c
        0x42042 -> :sswitch_1d
    .end sparse-switch
.end method

.method protected isAggressiveRecovery(I)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 2127
    #calls: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$100(I)Z

    move-result v0

    return v0
.end method

.method public isAllConnectionInactive()Z
    .locals 1

    .prologue
    .line 2496
    const-string v0, "isAllConnectionInactive(): Default impl always return true."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 2497
    const/4 v0, 0x1

    return v0
.end method

.method public isAnyApnCtxEnabled()Z
    .locals 1

    .prologue
    .line 2503
    const-string v0, "isAnyApnCtxEnabled(): Default impl always return false."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 2504
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1562
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1563
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 974
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 975
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 976
    .local v0, dunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 977
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 980
    .end local v0           #dunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #dunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    move v1, v2

    .line 977
    goto :goto_0

    .line 980
    .end local v0           #dunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1554
    if-nez p1, :cond_0

    .line 1555
    const/4 v0, 0x0

    .line 1557
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 1990
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method protected isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 2457
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method protected isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    .line 748
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false, ar.result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 763
    :goto_0
    return v0

    .line 752
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupCounter:I

    if-gtz v1, :cond_1

    .line 753
    const-string v0, "isDataSetupCompleteOk return true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x1

    goto :goto_0

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false mFailDataSetupCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFailDataSetupFailCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 762
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailDataSetupCounter:I

    goto :goto_0
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 1397
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1399
    .local v0, result:Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1401
    return v0

    .line 1398
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract isProvisioningApn(Ljava/lang/String;)Z
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 2512
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2446
    const-string v0, "DcTrackerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    return-void
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1506
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1547
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1548
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1546
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1551
    :cond_1
    return-void
.end method

.method protected notifyPreferOrConnectedApn(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2516
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 862
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 863
    .local v0, msg:Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 865
    return-void
.end method

.method protected onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentProvisioningApnAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2273
    const v1, 0x42027

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2275
    .local v0, msg:Landroid/os/Message;
    const-string v1, "provisioning.apn.alarm.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2276
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2277
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 771
    const-string v6, "simId"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 772
    .local v5, reconnect_for_simId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPRS reconnect alarm triggered by simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Previous state was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 773
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    const-string v6, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, reason:Ljava/lang/String;
    const-string v6, "reconnect_alarm_extra_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, apnType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 787
    .local v0, apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActionIntentReconnectAlarm: mState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataConnectionAsyncChannels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 792
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 793
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 796
    .local v1, apnContextState:Lcom/android/internal/telephony/DctConstants$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActionIntentReconnectAlarm: apnContext state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 798
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v6, :cond_4

    .line 801
    :cond_2
    const-string v6, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 804
    .local v3, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v3, :cond_3

    .line 805
    const-string v6, ""

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 807
    :cond_3
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 808
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 813
    .end local v3           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_1
    const v6, 0x42003

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 815
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 810
    :cond_4
    const-string v6, "onActionIntentReconnectAlarm: keep associated"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 841
    const-string v3, "simId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 842
    .local v2, restart_for_simId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPRS reconnect alarm triggered by simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Previous state was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 843
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 858
    :goto_0
    return-void

    .line 850
    :cond_0
    const-string v3, "restart_trysetup_alarm_extra_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, apnType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 853
    .local v0, apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActionIntentRestartTrySetupAlarm: mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataConnectionAsyncChannels="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 857
    const v3, 0x42003

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected onClearDataBearer()V
    .locals 2

    .prologue
    .line 2521
    const-string v1, "onClearDataBearer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2523
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2524
    return-void
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDataSetupCompleteError(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 2098
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 2100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2124
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataStallInfo()V

    .line 2106
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_trigger_packet_count"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2110
    .local v0, hangWatchdogTrigger:I
    const/4 v1, 0x0

    .line 2111
    .local v1, suspectedStall:Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " do recovery action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2115
    const/4 v1, 0x1

    .line 2116
    const v2, 0x42012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2123
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 2119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1657
    if-ne p2, v4, :cond_3

    .line 1658
    monitor-enter p0

    .line 1659
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1661
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1663
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1665
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1666
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    .line 1701
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1663
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1669
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1673
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1674
    .local v0, didDisable:Z
    monitor-enter p0

    .line 1675
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1676
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1677
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1678
    const/4 v0, 0x1

    .line 1680
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1681
    if-eqz v0, :cond_1

    .line 1682
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 1683
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1684
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1689
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1690
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1696
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 1697
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    goto :goto_0

    .line 1680
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 1710
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1720
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1723
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1725
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1726
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 1851
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1766
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 1767
    if-eqz p1, :cond_0

    .line 1768
    const-string v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1769
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1774
    :goto_0
    monitor-exit v1

    .line 1775
    return-void

    .line 1771
    :cond_0
    const-string v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1854
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1855
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v0

    .line 1856
    .local v0, prevEnabled:Z
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1857
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 1858
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1859
    if-nez v0, :cond_1

    .line 1860
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1866
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1867
    return-void

    .line 1862
    :cond_1
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1866
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1786
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1787
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v4

    .line 1788
    .local v4, prevEnabled:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eq v8, p1, :cond_5

    .line 1789
    const-string v8, "onSetUserDataEnabled():"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1790
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1791
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mobile_data"

    if-eqz p1, :cond_0

    move v8, v6

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1795
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "mobile_data"

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v5, v6

    .line 1797
    .local v5, readEnabled:Z
    :goto_1
    if-eq v5, p1, :cond_3

    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    const/16 v10, 0xa

    if-ge v8, v10, :cond_3

    .line 1798
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSetUserDataEnabled(): readEnabled = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mSettingProviderRetryCount = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1800
    const v8, 0x4201e

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1801
    .local v3, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    :goto_2
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1802
    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1804
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 1805
    monitor-exit v9

    .line 1848
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #readEnabled:Z
    :goto_3
    return-void

    :cond_0
    move v8, v7

    .line 1791
    goto :goto_0

    :cond_1
    move v5, v7

    .line 1795
    goto :goto_1

    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #readEnabled:Z
    :cond_2
    move v6, v7

    .line 1801
    goto :goto_2

    .line 1807
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSettingProviderRetryCount:I

    .line 1810
    if-eqz p1, :cond_6

    const-string v1, "1"

    .line 1811
    .local v1, enableStr:Ljava/lang/String;
    :goto_4
    const-string v7, "ril.mobile.data"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1823
    if-eqz p1, :cond_7

    .line 1824
    const-string v6, "roamingOn"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1829
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v6

    if-eq v4, v6, :cond_5

    .line 1830
    if-nez v4, :cond_8

    .line 1831
    const-string v6, "dataEnabled"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 1847
    .end local v1           #enableStr:Ljava/lang/String;
    .end local v5           #readEnabled:Z
    :cond_5
    :goto_6
    monitor-exit v9

    goto :goto_3

    .end local v4           #prevEnabled:Z
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1810
    .restart local v4       #prevEnabled:Z
    .restart local v5       #readEnabled:Z
    :cond_6
    :try_start_1
    const-string v1, "0"

    goto :goto_4

    .line 1826
    .restart local v1       #enableStr:Ljava/lang/String;
    :cond_7
    const-string v6, "dataDisabled"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_5

    .line 1833
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 1835
    const-string v6, "dataDisabled"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_6

    .line 1837
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1838
    .local v0, apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1839
    const-string v6, "dataDisabled"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1840
    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dataDisabled"

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1987
    return-void
.end method

.method protected resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1891
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 1892
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 1893
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1894
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    .line 1895
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2195
    :goto_0
    return-void

    .line 2186
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 2188
    .local v0, nextAction:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isAggressiveRecovery(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2189
    const-string v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2192
    :cond_1
    const-string v1, "restartDataStallAlarm: stop then start."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected abstract restartRadio()V
.end method

.method sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v2, 0x0

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCleanUpConnection: tearDown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apnContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2328
    const v1, 0x42018

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2329
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2330
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2331
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2332
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2333
    return-void

    :cond_0
    move v1, v2

    .line 2329
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    .prologue
    .line 2319
    const-string v1, "sendRestartRadio:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2320
    const v1, 0x4201a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2321
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2322
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 1753
    if-eqz p1, :cond_0

    .line 1754
    const-string v0, "setDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1756
    const v0, 0x42003

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1761
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1758
    :cond_0
    const-string v0, "setDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1031
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    .line 1032
    .local v2, simId:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v4

    if-eq v4, p1, :cond_1

    .line 1034
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 1035
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_0

    .line 1036
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz p1, :cond_2

    move v4, v5

    :goto_0
    iget-wide v8, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v7, v4, v8, v9}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v4

    if-gtz v4, :cond_3

    .line 1037
    const-string v4, "Can\'t set data romaing in database"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1047
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1049
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRoamingSetting:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz p1, :cond_4

    :goto_2
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1055
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return-void

    .restart local v3       #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    move v4, v6

    .line 1036
    goto :goto_0

    .line 1040
    :cond_3
    const-string v4, "DataRoamingAllowed, send broadcast:  ACTION_SIM_INFO_UPDATE"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_4
    move v5, v6

    .line 1049
    goto :goto_2
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1644
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1645
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1646
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1647
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1648
    return-void

    .line 1646
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 1
    .parameter "newTimerValue"
    .parameter "onComplete"

    .prologue
    .line 2469
    const/4 v0, 0x0

    return v0
.end method

.method protected setInitialAttachApn()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: current attach Apn ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2200
    const/4 v12, 0x0

    .line 2201
    .local v12, iaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    .line 2202
    .local v9, defaultApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v10, 0x0

    .line 2204
    .local v10, firstApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: E mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2207
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #firstApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2208
    .restart local v10       #firstApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: firstApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2213
    .local v8, apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v0, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v1, "ia"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: iaApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2216
    move-object v12, v8

    .line 2233
    .end local v8           #apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2234
    if-eqz v12, :cond_4

    .line 2235
    const-string v0, "setInitialAttachApn: using iaApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2236
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2248
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2249
    .local v13, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2251
    .local v6, operatorNumeric:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_9

    .line 2252
    if-nez v6, :cond_8

    .line 2253
    const-string v0, "setInitialAttachApn: but no operator and no available apn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2268
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: new attach Apn ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2269
    return-void

    .line 2218
    .end local v6           #operatorNumeric:Ljava/lang/String;
    .end local v13           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v8       #apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    if-nez v9, :cond_0

    const-string v0, "default"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: defaultApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2222
    move-object v9, v8

    goto/16 :goto_0

    .line 2237
    .end local v8           #apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_5

    .line 2238
    const-string v0, "setInitialAttachApn: using mPreferredApn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_1

    .line 2240
    :cond_5
    if-eqz v9, :cond_6

    .line 2241
    const-string v0, "setInitialAttachApn: using defaultApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2242
    iput-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_1

    .line 2243
    :cond_6
    if-eqz v10, :cond_2

    .line 2244
    const-string v0, "setInitialAttachApn: using firstApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2245
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_1

    .restart local v13       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    move-object v6, v7

    .line 2249
    goto :goto_2

    .line 2255
    .restart local v6       #operatorNumeric:Ljava/lang/String;
    :cond_8
    const-string v0, "setInitialAttachApn: X There in no available apn, use empty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const-string v2, "IP"

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 2259
    :cond_9
    if-nez v6, :cond_a

    .line 2260
    const-string v0, "setInitialAttachApn: but no operator"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2262
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1741
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1742
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1743
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1744
    return v2

    .line 1742
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected startDataStallAlarm(Z)V
    .locals 9
    .parameter "suspectedStall"

    .prologue
    .line 2131
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v2

    .line 2134
    .local v2, nextAction:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_2

    .line 2137
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isAggressiveRecovery(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2138
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    const v5, 0xea60

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2147
    .local v0, delayInMs:I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 2149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2152
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.data-stall"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "data.stall.alram.tag"

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2157
    const-string v3, "simId"

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2159
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 2161
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2168
    .end local v0           #delayInMs:I
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 2142
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v5, 0x57e40

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delayInMs:I
    goto :goto_0

    .line 2165
    .end local v0           #delayInMs:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1901
    const-string v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    .line 1903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1909
    :cond_1
    return-void
.end method

.method protected startProvisioningApnAlarm()V
    .locals 10

    .prologue
    .line 2280
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "provisioning_apn_alarm_delay_in_ms"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2283
    .local v0, delayInMs:I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 2285
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2286
    .local v1, delayInMsStrg:Ljava/lang/String;
    const-string v4, "persist.debug.prov_apn_alarm"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2288
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2293
    .end local v1           #delayInMsStrg:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 2295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2298
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2299
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "provisioning.apn.alarm.tag"

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2300
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 2302
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2304
    return-void

    .line 2289
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v1       #delayInMsStrg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2290
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startScriPoll()V
    .locals 0

    .prologue
    .line 1107
    return-void
.end method

.method protected stopDataStallAlarm()V
    .locals 2

    .prologue
    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataStallAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataStallAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2175
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 2176
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 2180
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1914
    const-string v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1918
    :cond_0
    return-void
.end method

.method protected stopProvisioningApnAlarm()V
    .locals 2

    .prologue
    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopProvisioningApnAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProvsioningApnAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2311
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 2316
    :cond_0
    return-void
.end method

.method protected stopScriPoll()V
    .locals 0

    .prologue
    .line 1111
    return-void
.end method

.method protected syncRoamingSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2484
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2485
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v6

    invoke-static {v5, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 2486
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 2487
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 2488
    .local v0, dataRoaming:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->logd(Ljava/lang/String;)V

    .line 2489
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRoamingSetting:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2492
    .end local v0           #dataRoaming:Z
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 2487
    goto :goto_0

    .restart local v0       #dataRoaming:Z
    :cond_2
    move v3, v4

    .line 2489
    goto :goto_1
.end method

.method public updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1925
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    .line 1926
    .local v0, preTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1927
    .local v6, curTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 1928
    iget-wide v1, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 1929
    iget-wide v1, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 1932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: curTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1935
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    cmp-long v1, v1, v12

    if-gtz v1, :cond_0

    iget-wide v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_1

    .line 1936
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v10, v1, v3

    .line 1937
    .local v10, sent:J
    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    iget-wide v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v8, v1, v3

    .line 1940
    .local v8, received:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: sent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1941
    cmp-long v1, v10, v12

    if-lez v1, :cond_2

    cmp-long v1, v8, v12

    if-lez v1, :cond_2

    .line 1942
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1952
    .local v7, newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v7, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-eqz v1, :cond_1

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: newActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1955
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1956
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1959
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8           #received:J
    .end local v10           #sent:J
    :cond_1
    return-void

    .line 1943
    .restart local v8       #received:J
    .restart local v10       #sent:J
    :cond_2
    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    cmp-long v1, v8, v12

    if-nez v1, :cond_3

    .line 1944
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 1945
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_3
    cmp-long v1, v10, v12

    if-nez v1, :cond_4

    cmp-long v1, v8, v12

    if-lez v1, :cond_4

    .line 1946
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 1948
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v2, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_1
    goto :goto_0

    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_1
.end method

.method public updateMobileData()V
    .locals 0

    .prologue
    .line 2454
    return-void
.end method
