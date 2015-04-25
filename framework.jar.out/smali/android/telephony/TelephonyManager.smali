.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field private static final MAX_PDP_NUM:I = 0x3

.field private static final MAX_SIM1_PDP_NUM:I = 0x3

.field private static final MAX_SIM2_PDP_NUM:I = 0x1

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC_DPA:I = 0x85

.field public static final NETWORK_TYPE_DC_HSDPAP:I = 0x87

.field public static final NETWORK_TYPE_DC_HSDPAP_DPA:I = 0x89

.field public static final NETWORK_TYPE_DC_HSDPAP_UPA:I = 0x88

.field public static final NETWORK_TYPE_DC_HSPAP:I = 0x8a

.field public static final NETWORK_TYPE_DC_UPA:I = 0x86

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSDPAP:I = 0x81

.field public static final NETWORK_TYPE_HSDPAP_UPA:I = 0x82

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_HSUPAP:I = 0x83

.field public static final NETWORK_TYPE_HSUPAP_DPA:I = 0x84

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_MTK_BASE:I = 0x80

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final RADIO_MISC:I = 0x2

.field public static final RADIO_WCDMA:I = 0x1

.field public static final SAR_BAND_GSM_DCS1800:I = 0x2

.field public static final SAR_BAND_GSM_EGSM900:I = 0x1

.field public static final SAR_BAND_GSM_GSM850:I = 0x0

.field public static final SAR_BAND_GSM_PCS1900:I = 0x3

.field public static final SAR_BAND_LTE_BAND1:I = 0x41

.field public static final SAR_BAND_LTE_BAND10:I = 0x4a

.field public static final SAR_BAND_LTE_BAND11:I = 0x4b

.field public static final SAR_BAND_LTE_BAND12:I = 0x4c

.field public static final SAR_BAND_LTE_BAND13:I = 0x4d

.field public static final SAR_BAND_LTE_BAND14:I = 0x4e

.field public static final SAR_BAND_LTE_BAND15:I = 0x4f

.field public static final SAR_BAND_LTE_BAND16:I = 0x50

.field public static final SAR_BAND_LTE_BAND17:I = 0x51

.field public static final SAR_BAND_LTE_BAND18:I = 0x52

.field public static final SAR_BAND_LTE_BAND19:I = 0x53

.field public static final SAR_BAND_LTE_BAND2:I = 0x42

.field public static final SAR_BAND_LTE_BAND20:I = 0x54

.field public static final SAR_BAND_LTE_BAND21:I = 0x55

.field public static final SAR_BAND_LTE_BAND22:I = 0x56

.field public static final SAR_BAND_LTE_BAND23:I = 0x57

.field public static final SAR_BAND_LTE_BAND24:I = 0x58

.field public static final SAR_BAND_LTE_BAND25:I = 0x59

.field public static final SAR_BAND_LTE_BAND26:I = 0x5a

.field public static final SAR_BAND_LTE_BAND27:I = 0x5b

.field public static final SAR_BAND_LTE_BAND28:I = 0x5c

.field public static final SAR_BAND_LTE_BAND29:I = 0x5d

.field public static final SAR_BAND_LTE_BAND3:I = 0x43

.field public static final SAR_BAND_LTE_BAND30:I = 0x5e

.field public static final SAR_BAND_LTE_BAND31:I = 0x5f

.field public static final SAR_BAND_LTE_BAND32:I = 0x60

.field public static final SAR_BAND_LTE_BAND33:I = 0x61

.field public static final SAR_BAND_LTE_BAND34:I = 0x62

.field public static final SAR_BAND_LTE_BAND35:I = 0x63

.field public static final SAR_BAND_LTE_BAND36:I = 0x64

.field public static final SAR_BAND_LTE_BAND37:I = 0x65

.field public static final SAR_BAND_LTE_BAND38:I = 0x66

.field public static final SAR_BAND_LTE_BAND39:I = 0x67

.field public static final SAR_BAND_LTE_BAND4:I = 0x44

.field public static final SAR_BAND_LTE_BAND40:I = 0x68

.field public static final SAR_BAND_LTE_BAND41:I = 0x69

.field public static final SAR_BAND_LTE_BAND42:I = 0x6a

.field public static final SAR_BAND_LTE_BAND43:I = 0x6b

.field public static final SAR_BAND_LTE_BAND44:I = 0x6c

.field public static final SAR_BAND_LTE_BAND5:I = 0x45

.field public static final SAR_BAND_LTE_BAND6:I = 0x46

.field public static final SAR_BAND_LTE_BAND7:I = 0x47

.field public static final SAR_BAND_LTE_BAND8:I = 0x48

.field public static final SAR_BAND_LTE_BAND9:I = 0x49

.field public static final SAR_BAND_UMTS_WCDMA_1700:I = 0xd

.field public static final SAR_BAND_UMTS_WCDMA_1800:I = 0xc

.field public static final SAR_BAND_UMTS_WCDMA_800:I = 0x9

.field public static final SAR_BAND_UMTS_WCDMA_AWS_1700:I = 0x7

.field public static final SAR_BAND_UMTS_WCDMA_CLR_850:I = 0x8

.field public static final SAR_BAND_UMTS_WCDMA_DCS_1800:I = 0x6

.field public static final SAR_BAND_UMTS_WCDMA_GSM_900:I = 0xb

.field public static final SAR_BAND_UMTS_WCDMA_IMT_2000:I = 0x4

.field public static final SAR_BAND_UMTS_WCDMA_IMT_E_2600:I = 0xa

.field public static final SAR_BAND_UMTS_WCDMA_PCS_1900:I = 0x5

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static defaultSimId:I = 0x0

.field private static final mtkGeminiSupport:Z = true

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

.field private PROPERTY_SIM_STATE:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telephony/CallStateListener;",
            "Landroid/telephony/TelephonyManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    sput v0, Landroid/telephony/TelephonyManager;->defaultSimId:I

    .line 342
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 494
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 500
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 506
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 808
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 811
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 815
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    .line 257
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "iphonesubinfo"

    aput-object v3, v2, v4

    const-string v3, "iphonesubinfo2"

    aput-object v3, v2, v5

    const-string v3, "iphonesubinfo3"

    aput-object v3, v2, v6

    const-string v3, "iphonesubinfo4"

    aput-object v3, v2, v7

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 264
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "gsm.sim.state"

    aput-object v3, v2, v4

    const-string v3, "gsm.sim.state.2"

    aput-object v3, v2, v5

    const-string v3, "gsm.sim.state.3"

    aput-object v3, v2, v6

    const-string v3, "gsm.sim.state.4"

    aput-object v3, v2, v7

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 325
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 328
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 329
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, actualClassName:Ljava/lang/String;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v0           #actualClassName:Ljava/lang/String;
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v2, "TelephonyManager"

    const-string v3, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "TelephonyManager"

    const-string v3, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    .line 257
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "iphonesubinfo"

    aput-object v4, v3, v5

    const-string v4, "iphonesubinfo2"

    aput-object v4, v3, v8

    const-string v4, "iphonesubinfo3"

    aput-object v4, v3, v9

    const-string v4, "iphonesubinfo4"

    aput-object v4, v3, v6

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 264
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gsm.sim.state"

    aput-object v4, v3, v5

    const-string v4, "gsm.sim.state.2"

    aput-object v4, v3, v8

    const-string v4, "gsm.sim.state.3"

    aput-object v4, v3, v9

    const-string v4, "gsm.sim.state.4"

    aput-object v4, v3, v6

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 274
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 279
    .local v1, appContext:Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 280
    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 285
    :goto_0
    sget-object v3, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v3, :cond_0

    .line 286
    const-string/jumbo v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 290
    :cond_0
    sget-object v3, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v3, :cond_1

    .line 292
    const-string/jumbo v3, "telephony.registry2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 297
    :cond_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v3, v6, :cond_2

    .line 298
    const-string/jumbo v3, "telephony.registry3"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 302
    :cond_2
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v3, v7, :cond_3

    .line 303
    const-string/jumbo v3, "telephony.registry4"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 309
    :cond_3
    :try_start_0
    const-class v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 310
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_5

    .line 311
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, actualClassName:Ljava/lang/String;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0           #actualClassName:Ljava/lang/String;
    :goto_1
    return-void

    .line 282
    :cond_4
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 314
    :cond_5
    :try_start_1
    const-string v3, "TelephonyManager"

    const-string v4, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "TelephonyManager"

    const-string v4, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 352
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    .line 3021
    const/4 v1, 0x0

    .line 3028
    .local v1, default_sim:I
    const/4 v6, 0x0

    .line 3029
    .local v6, single_sim:Z
    const/4 v4, 0x0

    .line 3030
    .local v4, first_single_sim:I
    const/4 v0, 0x0

    .line 3031
    .local v0, counter:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_0
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v7, :cond_2

    .line 3032
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3033
    add-int/lit8 v0, v0, 0x1

    .line 3034
    if-ne v0, v8, :cond_1

    .line 3035
    const/4 v6, 0x1

    .line 3036
    move v4, v5

    .line 3031
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3038
    :cond_1
    if-le v0, v8, :cond_0

    .line 3039
    const/4 v6, 0x0

    .line 3045
    :cond_2
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim check single_sim="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", first_single_sim="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    if-eqz v6, :cond_3

    .line 3048
    move v1, v4

    .line 3050
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 3069
    .end local v1           #default_sim:I
    .local v2, default_sim:I
    :goto_1
    return v2

    .line 3056
    .end local v2           #default_sim:I
    .restart local v1       #default_sim:I
    :cond_3
    const-string/jumbo v7, "persist.radio.default_sim"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3057
    if-ne v1, v10, :cond_4

    .line 3059
    const-string/jumbo v7, "persist.radio.default_sim"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    const/4 v1, 0x0

    .line 3063
    :cond_4
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v1

    .line 3069
    .end local v1           #default_sim:I
    .restart local v2       #default_sim:I
    goto :goto_1

    .line 3064
    .end local v2           #default_sim:I
    .restart local v1       #default_sim:I
    :catch_0
    move-exception v3

    .line 3065
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim has exception ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), set as default PhoneConstants.GEMINI_SIM_1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1768
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 1772
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 831
    const-string v2, ""

    .line 833
    .local v2, productType:Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, curVal:I
    move v3, v0

    .line 836
    .local v3, retVal:I
    if-ne v3, v5, :cond_0

    .line 837
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 838
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 839
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 840
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 841
    const/4 v3, 0x1

    .line 850
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return v3

    .line 843
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 846
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMaxPdpNum(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 375
    const/4 v0, 0x3

    return v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1115
    packed-switch p0, :pswitch_data_0

    .line 1135
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1121
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1131
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1133
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1158
    packed-switch p0, :pswitch_data_0

    .line 1190
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1160
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 1162
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 1164
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 1166
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1168
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1170
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 1172
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 1174
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1176
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1178
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1180
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1182
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 1184
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1186
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 1188
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 748
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 775
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 761
    goto :goto_0

    .line 769
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 772
    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 731
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 733
    const/4 v1, 0x0

    .line 734
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 720
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 723
    .local v0, type:I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 784
    const-string v1, ""

    .line 785
    .local v1, cmdline:Ljava/lang/String;
    const/4 v5, 0x0

    .line 787
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 788
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 789
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 790
    .local v3, count:I
    if-lez v3, :cond_0

    .line 791
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v1           #cmdline:Ljava/lang/String;
    .local v2, cmdline:Ljava/lang/String;
    move-object v1, v2

    .line 796
    .end local v2           #cmdline:Ljava/lang/String;
    .restart local v1       #cmdline:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 798
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 803
    .end local v0           #buffer:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-object v1

    .line 799
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 800
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 793
    .end local v0           #buffer:[B
    .end local v3           #count:I
    :catch_1
    move-exception v4

    .line 794
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    if-eqz v5, :cond_1

    .line 798
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 799
    :catch_2
    move-exception v7

    goto :goto_0

    .line 796
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 798
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 800
    :cond_2
    :goto_3
    throw v7

    .line 799
    :catch_3
    move-exception v8

    goto :goto_3

    .line 796
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 793
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getRadioType(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1660
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2914
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInfo simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2371
    if-nez p1, :cond_1

    .line 2372
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Listener can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#addListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 2374
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2375
    new-instance v1, Landroid/telephony/TelephonyManager$Listener;

    invoke-direct {v1, p1}, Landroid/telephony/TelephonyManager$Listener;-><init>(Landroid/telephony/CallStateListener;)V

    .line 2376
    .local v1, l:Landroid/telephony/TelephonyManager$Listener;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->addListener(Lcom/android/internal/telephony/ITelephonyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public adjustModemRadioPower(II)Z
    .locals 5
    .parameter "level_2G"
    .parameter "level_3G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3254
    const/4 v0, 0x0

    .line 3257
    .local v0, result:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3258
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3259
    const-string v2, "TelephonyManager"

    const-string v3, "[TelephonyManager] Call PhoneInterfaceManager - adjustModemRadioPower "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPower(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3266
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TelephonyManager]adjustModemRadioPower, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    return v0

    .line 3262
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public adjustModemRadioPower(III)Z
    .locals 5
    .parameter "level_2G"
    .parameter "level_3G"
    .parameter "level_4G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3282
    const/4 v0, 0x0

    .line 3285
    .local v0, result:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3286
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3287
    const-string v2, "TelephonyManager"

    const-string v3, "[TelephonyManager] Call PhoneInterfaceManager - adjustModemRadioPower "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPower_234G(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3294
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TelephonyManager]adjustModemRadioPower, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    return v0

    .line 3290
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public adjustModemRadioPowerByBand(II)Z
    .locals 7
    .parameter "band"
    .parameter "level"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3309
    const/4 v1, 0x0

    .line 3310
    .local v1, result:Z
    const/4 v0, 0x0

    .line 3311
    .local v0, rat:I
    if-ltz p2, :cond_1

    const/16 v4, 0xff

    if-gt p2, v4, :cond_1

    const/4 v3, 0x1

    .line 3313
    .local v3, validValue:Z
    :goto_0
    if-ltz p1, :cond_2

    const/4 v4, 0x3

    if-gt p1, v4, :cond_2

    .line 3314
    const/4 v0, 0x1

    .line 3327
    :goto_1
    if-eqz v3, :cond_5

    .line 3329
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3330
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3331
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TelephonyManager]adjustModemRadioPowerByBand, band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    invoke-interface {v2, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPowerByBand(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3342
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_2
    return v1

    .line 3311
    .end local v3           #validValue:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 3315
    .restart local v3       #validValue:Z
    :cond_2
    const/4 v4, 0x4

    if-lt p1, v4, :cond_3

    const/16 v4, 0xd

    if-gt p1, v4, :cond_3

    .line 3317
    add-int/lit8 p1, p1, -0x4

    .line 3318
    const/4 v0, 0x2

    goto :goto_1

    .line 3319
    :cond_3
    const/16 v4, 0x41

    if-lt p1, v4, :cond_4

    const/16 v4, 0x6c

    if-gt p1, v4, :cond_4

    .line 3321
    add-int/lit8 v4, p1, -0x41

    add-int/lit8 p1, v4, 0x1

    .line 3322
    const/4 v0, 0x3

    goto :goto_1

    .line 3324
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 3339
    :cond_5
    const-string v4, "TelephonyManager"

    const-string v5, "[TelephonyManager]Invalid band or level value !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3334
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public answerRingingCall()V
    .locals 3

    .prologue
    .line 2063
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    :goto_0
    return-void

    .line 2064
    :catch_0
    move-exception v0

    .line 2065
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "cmdAPDU"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3141
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3142
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3143
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3151
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3145
    :catch_0
    move-exception v0

    .line 3147
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3151
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3148
    :catch_1
    move-exception v0

    .line 3149
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "simId"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3095
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3096
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3097
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3105
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3099
    :catch_0
    move-exception v0

    .line 3101
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3105
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3102
    :catch_1
    move-exception v0

    .line 3103
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapDisconnectSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3117
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3118
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3119
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapDisconnectSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3127
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3121
    :catch_0
    move-exception v0

    .line 3123
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3127
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3124
    :catch_1
    move-exception v0

    .line 3125
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOffSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3208
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3209
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3210
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOffSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3218
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3212
    :catch_0
    move-exception v0

    .line 3214
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3218
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3215
    :catch_1
    move-exception v0

    .line 3216
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3187
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3188
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3189
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3197
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3191
    :catch_0
    move-exception v0

    .line 3193
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3197
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3194
    :catch_1
    move-exception v0

    .line 3195
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3164
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3165
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3166
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3174
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 3168
    :catch_0
    move-exception v0

    .line 3170
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3174
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3171
    :catch_1
    move-exception v0

    .line 3172
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callingPackage"
    .parameter "number"

    .prologue
    .line 2020
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    :goto_0
    return-void

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 3

    .prologue
    .line 2178
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    :goto_0
    return-void

    .line 2179
    :catch_0
    move-exception v0

    .line 2180
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 2010
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :goto_0
    return-void

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 2296
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2300
    :goto_0
    return v1

    .line 2297
    :catch_0
    move-exception v0

    .line 2298
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableApnType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2300
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    .line 2318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2322
    :goto_0
    return v1

    .line 2319
    :catch_0
    move-exception v0

    .line 2320
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2322
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 633
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0

    .line 634
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2604
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :goto_0
    return-void

    .line 2606
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2605
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 2285
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2289
    :goto_0
    return v1

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableApnType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2289
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 3

    .prologue
    .line 2307
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2311
    :goto_0
    return v1

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 616
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    goto :goto_0

    .line 617
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2584
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    :goto_0
    return-void

    .line 2586
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2585
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 2052
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2056
    :goto_0
    return v1

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2056
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1959
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1963
    :goto_0
    return-object v1

    .line 1960
    :catch_0
    move-exception v0

    .line 1961
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1962
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1963
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1680
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1688
    :goto_0
    return v1

    .line 1681
    :catch_0
    move-exception v0

    .line 1683
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1685
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1687
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1854
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1859
    :goto_0
    return v1

    .line 1855
    :catch_0
    move-exception v0

    .line 1857
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1858
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1859
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1872
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1877
    :goto_0
    return v1

    .line 1873
    :catch_0
    move-exception v0

    .line 1875
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1876
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1877
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1888
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1893
    :goto_0
    return-object v1

    .line 1889
    :catch_0
    move-exception v0

    .line 1891
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1892
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1893
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2553
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2556
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 2557
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2566
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 2561
    :catch_0
    move-exception v2

    .line 2562
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v3

    .line 2563
    goto :goto_0

    .line 2564
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2565
    .local v2, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v3

    .line 2566
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1542
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1549
    :goto_0
    return-object v1

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1546
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1548
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 684
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 685
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 686
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 698
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 689
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 691
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 694
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 695
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 698
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1718
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1726
    :goto_0
    return v1

    .line 1719
    :catch_0
    move-exception v0

    .line 1721
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1723
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1725
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1055
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1756
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1763
    :goto_0
    return v1

    .line 1757
    :catch_0
    move-exception v0

    .line 1759
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1761
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1762
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 556
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 563
    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 537
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 541
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1440
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1445
    :goto_0
    return-object v1

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1443
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1445
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "nonce"

    .prologue
    const/4 v1, 0x0

    .line 2440
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2445
    :goto_0
    return-object v1

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2443
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2445
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1630
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1637
    :goto_0
    return-object v1

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1634
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1636
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2456
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimGbabp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2461
    :goto_0
    return-object v1

    .line 2457
    :catch_0
    move-exception v0

    .line 2458
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2459
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2461
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1612
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1619
    :goto_0
    return-object v1

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1616
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1618
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1649
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1654
    :goto_0
    return-object v1

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1652
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1654
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2406
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2411
    :goto_0
    return-object v1

    .line 2407
    :catch_0
    move-exception v0

    .line 2408
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2409
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2411
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2423
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2428
    :goto_0
    return-object v1

    .line 2424
    :catch_0
    move-exception v0

    .line 2425
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2426
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2428
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1480
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1487
    :goto_0
    return-object v1

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1484
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1486
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1458
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1465
    :goto_0
    return-object v1

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1462
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1464
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1379
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1385
    :goto_0
    return v1

    .line 1380
    :catch_0
    move-exception v0

    .line 1382
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1383
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1385
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 5

    .prologue
    .line 3228
    const/4 v1, 0x0

    .line 3230
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3231
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3232
    const-string v3, "TelephonyManager"

    const-string v4, "[TelephonyManager] Call PhoneInterfaceManager - getMissedCallCount "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3240
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2000
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2001
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1992
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 2
    .parameter "type"
    .parameter "message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3010
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getMobileRevisionAndImei(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3017
    :goto_0
    return-void

    .line 3011
    :catch_0
    move-exception v0

    .line 3013
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3014
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3015
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1502
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1509
    :goto_0
    return-object v1

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1506
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1508
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 652
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 658
    :goto_0
    return-object v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 4
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2624
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2631
    :goto_0
    return-object v1

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2629
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2630
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2693
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2694
    const-string v0, "gsm.operator.iso-country.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2700
    :goto_0
    return-object v0

    .line 2695
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2696
    const-string v0, "gsm.operator.iso-country.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2697
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2698
    const-string v0, "gsm.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2700
    :cond_2
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2669
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2670
    const-string v0, "gsm.operator.numeric.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2676
    :goto_0
    return-object v0

    .line 2671
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2672
    const-string v0, "gsm.operator.numeric.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2673
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2674
    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2676
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2647
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2648
    const-string v0, "gsm.operator.alpha.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2654
    :goto_0
    return-object v0

    .line 2649
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2650
    const-string v0, "gsm.operator.alpha.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2651
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2652
    const-string v0, "gsm.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2654
    :cond_2
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2726
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2727
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2728
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2740
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2733
    :catch_0
    move-exception v0

    .line 2735
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2737
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2739
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2755
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2787
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2757
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 2759
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 2761
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 2763
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 2765
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 2767
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 2769
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 2771
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 2773
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 2775
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 2777
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 2779
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 2781
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 2783
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 2785
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 2755
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 715
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    const-string v0, "TelephonyManager"

    const-string v1, "getSimCountryIso return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string v0, ""

    .line 1330
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimCountryIsoGemini(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2827
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimCountryIso:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2837
    :goto_0
    return-object v1

    .line 2830
    :catch_0
    move-exception v0

    .line 2832
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2834
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2836
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    const-string v0, "TelephonyManager"

    const-string v1, "getSimOperator return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v0, ""

    .line 1286
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2804
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperator(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2814
    :goto_0
    return-object v1

    .line 2807
    :catch_0
    move-exception v0

    .line 2809
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2811
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2813
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    const-string v1, "TelephonyManager"

    const-string v2, "getSimOperatorName return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v1, ""

    .line 1314
    :goto_0
    return-object v1

    .line 1306
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1311
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    const-string v0, "TelephonyManager"

    const-string v1, "getSimSerialNumber return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const-string v0, ""

    .line 1351
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2855
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2862
    :goto_0
    return-object v1

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2859
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2861
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    const-string v2, "TelephonyManager"

    const-string v3, "getSimState return: 3gdatasms  MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_0
    return v1

    .line 1257
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1260
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1262
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1264
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmsDefaultSim()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3077
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSmsDefaultSim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3081
    :goto_0
    return v1

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3080
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3081
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1406
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1414
    :goto_0
    return-object v1

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1411
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1413
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2509
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimGbabp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2514
    :goto_0
    return-object v1

    .line 2510
    :catch_0
    move-exception v0

    .line 2511
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2512
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2514
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUsimService(I)Z
    .locals 3
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 2493
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2498
    :goto_0
    return v1

    .line 2494
    :catch_0
    move-exception v0

    .line 2495
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2496
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2498
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2902
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2909
    :goto_0
    return-object v1

    .line 2903
    :catch_0
    move-exception v0

    .line 2904
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2906
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2908
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1528
    :goto_0
    return-object v1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1525
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1527
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1563
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCountGemini(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2878
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2885
    :goto_0
    return v1

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2882
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2884
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1083
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1084
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1085
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1095
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1090
    :catch_0
    move-exception v0

    .line 1092
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1093
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1095
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"

    .prologue
    .line 2232
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2236
    :goto_0
    return v1

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1223
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1232
    :goto_0
    return v1

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1230
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1232
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    .line 2329
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2333
    :goto_0
    return v1

    .line 2330
    :catch_0
    move-exception v0

    .line 2331
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 3

    .prologue
    .line 2145
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2149
    :goto_0
    return v1

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2149
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 900
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 901
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 902
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isNetworkRoamingGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 912
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 910
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 911
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOffhook()Z
    .locals 3

    .prologue
    .line 2123
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2127
    :goto_0
    return v1

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isOffhook"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 2156
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2160
    :goto_0
    return v1

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    .line 2134
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2138
    :goto_0
    return v1

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRinging"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3

    .prologue
    .line 2167
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2171
    :goto_0
    return v1

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2171
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1931
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1932
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1915
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1806
    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1808
    .local v3, pkgForDebug:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1809
    .local v2, notifyNow:Ljava/lang/Boolean;
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 1813
    if-nez p2, :cond_2

    .line 1815
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1845
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-void

    .line 1806
    .end local v3           #pkgForDebug:Ljava/lang/String;
    :cond_1
    const-string v3, "<unknown>"

    goto :goto_0

    .line 1816
    .restart local v2       #notifyNow:Ljava/lang/Boolean;
    .restart local v3       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/16 v4, 0x20

    if-ne p2, v4, :cond_3

    .line 1817
    :try_start_1
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1838
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 1840
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1819
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v2       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    const/4 v0, 0x0

    .line 1820
    .local v0, data_events:I
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_4

    .line 1821
    or-int/lit8 v0, v0, 0x40

    .line 1823
    :cond_4
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_5

    .line 1824
    or-int/lit16 v0, v0, 0x80

    .line 1827
    :cond_5
    if-eqz v0, :cond_0

    .line 1832
    :try_start_2
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1841
    .end local v0           #data_events:I
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 1843
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public merge()V
    .locals 3

    .prologue
    .line 2083
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    :goto_0
    return-void

    .line 2084
    :catch_0
    move-exception v0

    .line 2085
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#merge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 2103
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    :goto_0
    return-void

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#mute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    .line 2340
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2344
    :goto_0
    return v1

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .parameter "digit"
    .parameter "timedShortCode"

    .prologue
    .line 2351
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->playDtmfTone(CZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :goto_0
    return-void

    .line 2352
    :catch_0
    move-exception v0

    .line 2353
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#playDtmfTone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2388
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$Listener;

    .line 2389
    .local v1, l:Landroid/telephony/TelephonyManager$Listener;
    if-eqz v1, :cond_0

    .line 2391
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$Listener;->clearQueue()V

    .line 2392
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->removeListener(Lcom/android/internal/telephony/ITelephonyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    .end local v1           #l:Landroid/telephony/TelephonyManager$Listener;
    :cond_0
    :goto_0
    return-void

    .line 2394
    :catch_0
    move-exception v0

    .line 2395
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#removeListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .parameter "rateInMillis"

    .prologue
    .line 1981
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    :goto_0
    return-void

    .line 1983
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1982
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "gbabp"
    .parameter "onComplete"

    .prologue
    .line 2476
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2483
    :goto_0
    return-void

    .line 2477
    :catch_0
    move-exception v0

    .line 2478
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2479
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2481
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 3
    .parameter "turnOn"

    .prologue
    .line 2253
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2257
    :goto_0
    return v1

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 3
    .parameter "turnOn"

    .prologue
    .line 2264
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2268
    :goto_0
    return v1

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "gbabp"
    .parameter "onComplete"

    .prologue
    .line 2529
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2536
    :goto_0
    return-void

    .line 2530
    :catch_0
    move-exception v0

    .line 2531
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2532
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2534
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public showCallScreen()Z
    .locals 3

    .prologue
    .line 2030
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2034
    :goto_0
    return v1

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#showCallScreen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2034
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 3
    .parameter "showDialpad"

    .prologue
    .line 2041
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2045
    :goto_0
    return v1

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#showCallScreenWithDialpad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 2113
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    :goto_0
    return-void

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public simAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2927
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2928
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2929
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->simAuth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2936
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2933
    :catch_0
    move-exception v0

    .line 2935
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2968
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2969
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2970
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2976
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2974
    :catch_0
    move-exception v0

    .line 2975
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 3

    .prologue
    .line 2361
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->stopDtmfTone()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    :goto_0
    return-void

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#stopDtmfTone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 3
    .parameter "pin"

    .prologue
    .line 2188
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2192
    :goto_0
    return v1

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 3
    .parameter "pin"

    .prologue
    .line 2210
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2214
    :goto_0
    return-object v1

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 2199
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2203
    :goto_0
    return v1

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 2221
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2225
    :goto_0
    return-object v1

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2225
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public swap()V
    .locals 3

    .prologue
    .line 2093
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->swap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    :goto_0
    return-void

    .line 2094
    :catch_0
    move-exception v0

    .line 2095
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#swap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleHold()V
    .locals 3

    .prologue
    .line 2073
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleHold()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2077
    :goto_0
    return-void

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleHold"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 3

    .prologue
    .line 2243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :goto_0
    return-void

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "strAutn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2949
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2950
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2951
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2958
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2955
    :catch_0
    move-exception v0

    .line 2957
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2986
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2987
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2988
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2994
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2992
    :catch_0
    move-exception v0

    .line 2993
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 3

    .prologue
    .line 2275
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2279
    :goto_0
    return-void

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
