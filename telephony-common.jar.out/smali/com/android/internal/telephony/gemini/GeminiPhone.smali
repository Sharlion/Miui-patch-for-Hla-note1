.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field public static EVENT_BOOTUP_SIM_SWITCH_DONE:Ljava/lang/String; = null

.field protected static final EVENT_CONFIG_SIM_SWITCH_DONE:I = 0x9

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_AVAILABLE_NETWORK:I = 0xb

.field protected static final EVENT_GET_AVAILABLE_NETWORK_DONE:I = 0xa

.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x6

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field protected static final EVENT_GPRS_DETACHED:I = 0x7

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x8

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SIM_SWITCH:Ljava/lang/String; = "ro.gemini.sim_switch_policy"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field protected static final STATUS_SIM3_INSERTED:I = 0x4

.field protected static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static aG:Landroid/content/SharedPreferences;

.field private static final aT:[I


# instance fields
.field private M:[Ljava/lang/String;

.field private aA:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

.field private aB:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private aC:I

.field private aD:I

.field private aE:Z

.field private aF:Z

.field private aH:I

.field private aI:Landroid/os/PowerManager$WakeLock;

.field private aJ:I

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:[Ljava/lang/String;

.field private aO:Z

.field private aP:Z

.field private aQ:I

.field private aR:I

.field private aS:I

.field private aU:[Ljava/lang/String;

.field private aV:Z

.field private aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

.field private aX:Z

.field private aY:Ljava/lang/Runnable;

.field private aZ:Ljava/lang/Runnable;

.field private am:Lcom/android/internal/telephony/Phone;

.field private an:[Lcom/android/internal/telephony/Phone;

.field private ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

.field private aw:Landroid/os/RegistrantList;

.field private ax:[Ljava/lang/String;

.field private ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

.field private ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private bb:Ljava/lang/Runnable;

.field bc:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field public mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 246
    const-string v0, "com.mtk.BOOTUP_SIM_SWITCH_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_BOOTUP_SIM_SWITCH_DONE:Ljava/lang/String;

    .line 284
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 315
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 169
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    .line 184
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 186
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 187
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    .line 190
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 194
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 196
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    .line 198
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    .line 251
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 264
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 268
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 272
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 280
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 283
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:[Ljava/lang/String;

    .line 312
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    .line 844
    new-instance v0, Lcom/android/internal/telephony/gemini/f;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/f;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aY:Ljava/lang/Runnable;

    .line 1148
    new-instance v0, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    .line 3238
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/f;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3548
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    .line 3633
    new-instance v0, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bc:Landroid/content/BroadcastReceiver;

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v3

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v5

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    .line 320
    iput-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 322
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 324
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    .line 332
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 345
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 360
    return-void

    .line 326
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 338
    :catch_1
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 169
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    .line 184
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 186
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 187
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    .line 190
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 194
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 196
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    .line 198
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    .line 251
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 264
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 268
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 272
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 280
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 283
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:[Ljava/lang/String;

    .line 312
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    .line 844
    new-instance v0, Lcom/android/internal/telephony/gemini/f;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/f;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aY:Ljava/lang/Runnable;

    .line 1148
    new-instance v0, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    .line 3238
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/f;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3548
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    .line 3633
    new-instance v0, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bc:Landroid/content/BroadcastReceiver;

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v3

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v4

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v6

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    .line 368
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 370
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 372
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    .line 378
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 391
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 406
    return-void

    .line 374
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 384
    :catch_1
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 169
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    .line 184
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 186
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 187
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    .line 190
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 194
    iput-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 196
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    .line 198
    iput-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    .line 251
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 264
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 268
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 272
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 280
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 283
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:[Ljava/lang/String;

    .line 312
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    .line 844
    new-instance v0, Lcom/android/internal/telephony/gemini/f;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/f;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aY:Ljava/lang/Runnable;

    .line 1148
    new-instance v0, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    .line 3238
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/f;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3548
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    .line 3633
    new-instance v0, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bc:Landroid/content/BroadcastReceiver;

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v3

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v4

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aput-object p4, v0, v5

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    .line 415
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 417
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    .line 425
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 438
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 442
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 445
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 453
    return-void

    .line 421
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 431
    :catch_1
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1157
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1159
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    .line 1160
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 1197
    :goto_0
    return-void

    .line 1164
    :cond_0
    const-string v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-interface {v0, v2}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->broadcastSimInsertedStatusAdp(I)V

    .line 1166
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 1169
    const/4 v2, 0x1

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1171
    if-eqz v0, :cond_4

    .line 1172
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1173
    const-string v0, "hot swap && autoSwitch data && Data enable, no need to switch Ps attach now"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 1177
    :goto_1
    if-eqz v0, :cond_1

    .line 1178
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 1181
    :cond_1
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 1196
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    return p1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(I)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    return v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(I)I

    move-result v0

    return v0
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 1222
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1223
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToIdleState(I)V

    .line 1222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    return-void
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    return-void
.end method

.method private g(I)V
    .locals 3
    .parameter

    .prologue
    .line 1230
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1232
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is off and detach peer SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->cleanupAllConnection(I)V

    .line 1231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 3761
    const/4 v0, 0x1

    return v0
.end method

.method public static get3GSimId()I
    .locals 1

    .prologue
    .line 3112
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v3

    .line 469
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISimSwitchPolicyWrapper created (mSimSwitchPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :goto_0
    if-nez v0, :cond_0

    .line 477
    const-string v0, "PHONE"

    const-string v1, "Sim Switch Policy Wrapper Missing (mSimSwitchPolicyWrapper=null), Sim Switch Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    return-void

    .line 471
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 472
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISimSwitchPolicyWrapper create exception (mSimSwitchPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 479
    :cond_0
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 480
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    .line 485
    :goto_3
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISimSwitchPolicy created (policyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimSwitchPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 481
    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    .line 482
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    goto :goto_3

    .line 484
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    goto :goto_3

    .line 471
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private h(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 1283
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1285
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aV:Z

    .line 1288
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1289
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1297
    :goto_0
    return-void

    .line 1290
    :cond_1
    if-ltz p1, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_2

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To re-register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1295
    :cond_2
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v3

    .line 492
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :try_start_1
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    :goto_0
    if-nez v0, :cond_0

    .line 500
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    return-void

    .line 494
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 495
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 502
    :cond_0
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 503
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 508
    :goto_3
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 504
    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    .line 505
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_3

    .line 507
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_3

    .line 494
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    return v0
.end method

.method private j()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eq v0, v1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 587
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 598
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    const-string v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private j(I)Z
    .locals 7
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3329
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Z

    .line 3333
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3335
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 3337
    :cond_0
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force3GSwitch (DT) result=false. (3g capability num="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", SIM_NUM="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    move v4, v2

    .line 3377
    :goto_0
    if-eqz v4, :cond_a

    .line 3378
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_9

    .line 3379
    if-ne p1, v2, :cond_8

    .line 3380
    const-string v0, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force3GSwitch:setPreferredNetworkType:Auto("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),GSM only ,sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3378
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3341
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchSwapped()Z

    move-result v6

    .line 3342
    if-nez p1, :cond_b

    .line 3343
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3345
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v3

    .line 3346
    if-nez v6, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v5

    .line 3347
    if-eqz v5, :cond_2

    .line 3348
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 3349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    :cond_2
    move v0, v3

    move v3, v5

    .line 3353
    :goto_4
    if-ne v1, p1, :cond_4

    .line 3354
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3356
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v3

    .line 3357
    if-nez v6, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v4

    .line 3358
    if-eqz v4, :cond_3

    .line 3359
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 3360
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    :cond_3
    move v0, v3

    move v3, v4

    .line 3365
    :cond_4
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force3GSwitch (DT) configSimSwitch result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move v3, v0

    .line 3366
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3346
    goto :goto_3

    :cond_6
    move v0, v2

    .line 3357
    goto :goto_5

    .line 3371
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    .line 3373
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    .line 3374
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v0

    .line 3375
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v3

    move v4, v3

    move v3, v0

    goto/16 :goto_0

    .line 3383
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto/16 :goto_2

    .line 3386
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_CAPABILITY_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3387
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 3393
    :goto_6
    return v4

    .line 3389
    :cond_a
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch else case"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Z

    .line 3391
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_6

    :cond_b
    move v0, v4

    move v3, v2

    goto/16 :goto_4
.end method

.method private k(I)I
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3403
    const/4 v13, -0x1

    .line 3404
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3405
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v4

    .line 3407
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3409
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 3410
    const-string v2, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimInsertedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3414
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-nez v0, :cond_2

    .line 3415
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3416
    const/4 v0, -0x1

    .line 3417
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_6

    .line 3420
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_14

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_1
    move-object v5, v0

    .line 3421
    :goto_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_13

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_3
    move-object v6, v0

    .line 3422
    :goto_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v12, :cond_12

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v11

    :goto_5
    move-object v7, v0

    .line 3423
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_11

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v12

    :cond_1
    move-object v8, v1

    .line 3425
    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    move v2, p1

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->selectCapabilitySim(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3431
    :goto_8
    sparse-switch v0, :sswitch_data_0

    move v9, v13

    .line 3461
    :goto_9
    :sswitch_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    .line 3510
    :cond_2
    :goto_a
    return v13

    :cond_3
    move-object v0, v1

    .line 3420
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 3421
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 3422
    goto :goto_5

    .line 3429
    :cond_6
    const-string v1, "PHONE"

    const-string v2, "no Sim switch policy instance. (mSimSwitchPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :sswitch_1
    move v9, v10

    .line 3438
    goto :goto_9

    :sswitch_2
    move v9, v11

    .line 3442
    goto :goto_9

    :sswitch_3
    move v9, v12

    .line 3446
    goto :goto_9

    .line 3449
    :sswitch_4
    const/4 v9, -0x2

    .line 3450
    goto :goto_9

    .line 3453
    :sswitch_5
    const/4 v9, -0x1

    .line 3454
    goto :goto_9

    .line 3463
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz v4, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v4, v0, :cond_2

    .line 3464
    const/4 v0, -0x1

    .line 3465
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_c

    .line 3468
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_10

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_b
    move-object v5, v0

    .line 3469
    :goto_c
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_f

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_d
    move-object v6, v0

    .line 3470
    :goto_e
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v12, :cond_e

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v11

    :goto_f
    move-object v7, v0

    .line 3471
    :goto_10
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_d

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v12

    :cond_8
    move-object v8, v1

    .line 3473
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3480
    :goto_12
    sparse-switch v0, :sswitch_data_1

    move v9, v13

    .line 3506
    :goto_13
    :sswitch_6
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target3GSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    goto/16 :goto_a

    :cond_9
    move-object v0, v1

    .line 3468
    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 3469
    goto :goto_d

    :cond_b
    move-object v0, v1

    .line 3470
    goto :goto_f

    .line 3477
    :cond_c
    const-string v1, "PHONE"

    const-string v2, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :sswitch_7
    move v9, v10

    .line 3487
    goto :goto_13

    :sswitch_8
    move v9, v11

    .line 3491
    goto :goto_13

    :sswitch_9
    move v9, v12

    .line 3495
    goto :goto_13

    .line 3498
    :sswitch_a
    const/4 v9, -0x1

    .line 3499
    goto :goto_13

    :cond_d
    move-object v8, v1

    goto :goto_11

    :cond_e
    move-object v7, v1

    goto :goto_10

    :cond_f
    move-object v6, v1

    goto :goto_e

    :cond_10
    move-object v5, v1

    goto :goto_c

    :cond_11
    move-object v8, v1

    goto/16 :goto_7

    :cond_12
    move-object v7, v1

    goto/16 :goto_6

    :cond_13
    move-object v6, v1

    goto/16 :goto_4

    :cond_14
    move-object v5, v1

    goto/16 :goto_2

    .line 3431
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
    .end sparse-switch

    .line 3480
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x15 -> :sswitch_a
    .end sparse-switch
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private k()V
    .locals 11

    .prologue
    const/4 v3, 0x2

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 853
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    move v0, v1

    .line 856
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 861
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_2e

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v4

    .line 869
    :goto_2
    if-eqz v0, :cond_3

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it,counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aY:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    :goto_3
    return-void

    .line 861
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 875
    :cond_3
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:I

    .line 876
    const-string v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 878
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_5

    .line 879
    const-string v2, "N/A"

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 880
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v2, v0

    .line 878
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 882
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    move v2, v1

    .line 884
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_d

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 886
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    shl-int v6, v4, v2

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 887
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v4, :cond_6

    .line 888
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    shl-int v6, v4, v2

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 890
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 892
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.op"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_b

    const-string v0, ""

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 894
    const-string v0, ""

    .line 895
    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v7, v7, v2

    if-eqz v7, :cond_9

    const-string v7, ""

    iget-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_c

    const-string v0, ""

    :goto_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 898
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertImsi2Op (simIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 901
    :cond_9
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set sim op property (simIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", opStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", propName="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 904
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 884
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 893
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 896
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 906
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertedStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v3

    .line 907
    :goto_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_e

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId[SIM"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 910
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->x()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 911
    const-string v0, "[IRC] Stop initializeTelephonyFramework, start switch phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->y()V

    goto/16 :goto_3

    .line 916
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_10

    .line 917
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_13

    .line 918
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 925
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 926
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_1e

    .line 929
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    if-ne v0, v3, :cond_14

    .line 930
    const-string v0, "Not support now for dual talk about two modem both support 3G or 4G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 991
    :cond_12
    :goto_a
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    goto/16 :goto_3

    .line 920
    :cond_13
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_9

    .line 934
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    move v2, v0

    .line 935
    :goto_b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 936
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(I)I

    move-result v3

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v3, :cond_15

    if-ne v3, v4, :cond_16

    :cond_15
    if-ne v6, v3, :cond_17

    :cond_16
    if-ne v3, v10, :cond_1d

    if-eq v6, v5, :cond_1d

    .line 938
    :cond_17
    if-ne v3, v10, :cond_2d

    if-eq v6, v5, :cond_2d

    move v0, v5

    .line 941
    :goto_c
    if-eq v6, v5, :cond_18

    if-eq v0, v5, :cond_19

    :cond_18
    if-ne v6, v5, :cond_2c

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    if-ne v0, v3, :cond_2c

    .line 944
    :cond_19
    :goto_d
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 945
    if-eqz v0, :cond_1a

    if-eqz v4, :cond_12

    .line 950
    :cond_1a
    if-eqz v0, :cond_1b

    if-eqz v4, :cond_1b

    .line 951
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 953
    :cond_1b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto :goto_a

    :cond_1c
    move v2, v4

    .line 934
    goto :goto_b

    .line 956
    :cond_1d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 957
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto :goto_a

    .line 961
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_20

    if-nez v0, :cond_29

    .line 962
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    move v2, v0

    .line 963
    :goto_e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 964
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(I)I

    move-result v3

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_28

    if-ltz v3, :cond_21

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_21

    if-ne v6, v3, :cond_22

    :cond_21
    if-ne v3, v10, :cond_28

    if-eq v6, v5, :cond_28

    .line 966
    :cond_22
    if-ne v3, v10, :cond_2b

    if-eq v6, v5, :cond_2b

    move v0, v5

    .line 969
    :goto_f
    if-eq v6, v5, :cond_23

    if-eq v0, v5, :cond_24

    :cond_23
    if-ne v6, v5, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    if-ne v0, v3, :cond_2a

    .line 972
    :cond_24
    :goto_10
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 973
    if-eqz v0, :cond_26

    if-nez v4, :cond_26

    .line 974
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 975
    :goto_11
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_12

    .line 976
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    move v2, v4

    .line 962
    goto :goto_e

    .line 979
    :cond_26
    if-eqz v0, :cond_27

    if-eqz v4, :cond_27

    .line 980
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 982
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_a

    .line 985
    :cond_28
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 986
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_a

    .line 989
    :cond_29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_a

    :cond_2a
    move v4, v1

    goto :goto_10

    :cond_2b
    move v0, v3

    goto :goto_f

    :cond_2c
    move v4, v1

    goto/16 :goto_d

    :cond_2d
    move v0, v3

    goto/16 :goto_c

    :cond_2e
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private l()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 995
    const-string v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 996
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    .line 1001
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1002
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    if-eqz v0, :cond_1

    .line 1003
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1005
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    if-nez v0, :cond_6

    .line 1007
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 1022
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    move v0, v1

    .line 1024
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_a

    .line 1025
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    shl-int v6, v4, v0

    and-int/2addr v2, v6

    if-nez v2, :cond_7

    .line 1026
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v2, v0

    .line 1030
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.op"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_8

    const-string v2, ""

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1033
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_9

    const-string v2, ""

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    const-string v7, ""

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 1037
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertImsi2Op (simIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", opStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1039
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set sim op property (simIdx="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", opStr="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", propName="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1024
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1010
    :cond_6
    const-string v0, "Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    :goto_4
    return-void

    .line 1028
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    goto/16 :goto_1

    .line 1031
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1034
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1044
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_b

    .line 1045
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_e

    .line 1046
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1053
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1054
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v0, :cond_1a

    .line 1057
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 1058
    const-string v0, "Not support now for dual talk about two modem both support 3G or 4G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1145
    :cond_d
    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    goto :goto_4

    .line 1048
    :cond_e
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_5

    .line 1062
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v3

    .line 1063
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 1064
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(I)I

    move-result v3

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simId :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", target3GSim "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v3, :cond_10

    if-ne v3, v4, :cond_11

    :cond_10
    if-ne v6, v3, :cond_12

    :cond_11
    if-ne v3, v9, :cond_19

    if-eq v6, v5, :cond_19

    .line 1067
    :cond_12
    if-ne v3, v9, :cond_13

    if-eq v6, v5, :cond_13

    move v3, v5

    .line 1070
    :cond_13
    if-eq v6, v5, :cond_14

    if-eq v3, v5, :cond_15

    :cond_14
    if-ne v6, v5, :cond_2c

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    if-ne v3, v0, :cond_2c

    :cond_15
    move v0, v4

    .line 1073
    :goto_8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v2

    .line 1074
    if-eqz v2, :cond_16

    if-eqz v0, :cond_d

    .line 1079
    :cond_16
    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    .line 1080
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 1082
    :cond_17
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto :goto_6

    :cond_18
    move v2, v4

    .line 1062
    goto :goto_7

    .line 1085
    :cond_19
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 1086
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto :goto_6

    .line 1090
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-nez v0, :cond_2a

    .line 1091
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1092
    :goto_9
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 1093
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(I)I

    move-result v2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simId :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", target3GSim "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_25

    if-ltz v2, :cond_1d

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_1d

    if-ne v6, v2, :cond_1e

    :cond_1d
    if-ne v2, v9, :cond_25

    if-eq v6, v5, :cond_25

    .line 1096
    :cond_1e
    if-ne v2, v9, :cond_1f

    if-eq v6, v5, :cond_1f

    move v2, v5

    .line 1099
    :cond_1f
    if-eq v6, v5, :cond_20

    if-eq v2, v5, :cond_21

    :cond_20
    if-ne v6, v5, :cond_2b

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    if-ne v2, v0, :cond_2b

    :cond_21
    move v0, v4

    .line 1102
    :goto_a
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v2

    .line 1103
    if-eqz v2, :cond_23

    if-nez v0, :cond_23

    .line 1104
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 1105
    :goto_b
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_d

    .line 1106
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 1105
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_22
    move v3, v4

    .line 1091
    goto :goto_9

    .line 1109
    :cond_23
    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    .line 1110
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 1112
    :cond_24
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_6

    .line 1115
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-nez v0, :cond_27

    move v0, v1

    .line 1117
    :goto_c
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_27

    .line 1118
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_29

    const-string v2, ""

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIccId is not empty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1120
    const-string v2, ""

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "but opstr is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1124
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1125
    if-eqz v2, :cond_26

    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    if-nez v3, :cond_28

    :cond_26
    const-string v2, ""

    .line 1126
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimOperatorByICCId (iccId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", opStr="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1127
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1128
    const-string v0, "add filter to wait ACTION_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1130
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    :cond_27
    const-string v0, "update sim info"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(I)V

    .line 1140
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_6

    .line 1125
    :cond_28
    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    goto :goto_d

    .line 1117
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 1143
    :cond_2a
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Z)V

    goto/16 :goto_6

    :cond_2b
    move v0, v1

    goto/16 :goto_a

    :cond_2c
    move v0, v1

    goto/16 :goto_8
.end method

.method private l(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3514
    const/4 v1, 0x0

    .line 3515
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "com.mtk.3G_SWITCH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3516
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3518
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 3520
    const-string v0, "PHONE"

    const-string v1, "Just turn off 3G capability. not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :goto_0
    return-void

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 3524
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 3525
    if-ne p1, v1, :cond_1

    .line 3526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 3524
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3529
    :cond_2
    const-string v1, "3G_SIM_ID"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3531
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eqz v1, :cond_3

    .line 3532
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3533
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3534
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3536
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1321
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1329
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1337
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1333
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1200
    const-string v0, "persist.ril.gprs.setting"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gprs setting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()I

    move-result v0

    .line 1203
    if-lez v0, :cond_1

    .line 1204
    const/4 v0, 0x0

    .line 1205
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1206
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1208
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1209
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)V

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is on and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to activating state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1218
    :cond_1
    :goto_0
    return-void

    .line 1211
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()I

    move-result v0

    .line 1213
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)V

    .line 1214
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)V

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is off and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to activating state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 3624
    if-nez p1, :cond_2

    .line 3625
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3625
    goto :goto_0

    .line 3626
    :cond_2
    if-ne v0, p1, :cond_3

    .line 3627
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3629
    goto :goto_0
.end method

.method private n(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 4089
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 4090
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1254
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    if-eqz v1, :cond_0

    .line 1255
    const-string v1, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1256
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    .line 1257
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 1277
    :goto_0
    return-void

    .line 1261
    :cond_0
    const-string v1, "start initializing radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1263
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    if-eqz v1, :cond_1

    .line 1264
    const-string v1, "query SIM Missing status for gemini card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1265
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 1266
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization([Ljava/lang/String;I)V

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Z

    .line 1274
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1276
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[Ljava/lang/String;

    return-object v0
.end method

.method private p()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1300
    move v1, v0

    .line 1301
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    add-int/lit8 v1, v1, 0x1

    .line 1301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInsertedSIMCount return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return v1
.end method

.method static synthetic p(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    return v0
.end method

.method private q()I
    .locals 2

    .prologue
    .line 2926
    const-string v0, "ro.gemini.sim_switch_policy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static r()Z
    .locals 1

    .prologue
    .line 2932
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()I
    .locals 2

    .prologue
    .line 2937
    const-string v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 3542
    const-string v0, "PHONE"

    const-string v1, "broadcast3GSwitchDoneEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    .line 3544
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->bb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3546
    return-void
.end method

.method private u()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3612
    const/4 v0, 0x0

    .line 3613
    const-string v1, "gsm.baseband.capability"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3614
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3615
    if-le v1, v3, :cond_0

    .line 3616
    const/4 v0, 0x1

    .line 3617
    :cond_0
    if-le v2, v3, :cond_1

    .line 3618
    add-int/lit8 v0, v0, 0x1

    .line 3619
    :cond_1
    return v0
.end method

.method private v()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4010
    const-string v0, "createInternationalRoamingController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4011
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 4012
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    .line 4018
    :goto_0
    return-void

    .line 4015
    :cond_0
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 4021
    const-string v0, "createDefaultSmsSetting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4023
    :try_start_0
    const-class v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4028
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    if-nez v0, :cond_0

    .line 4029
    const-string v0, "PHONE"

    const-string v1, "FAIL! initial IDefaultSmsSimSettingsExt"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    :cond_0
    return-void

    .line 4024
    :catch_0
    move-exception v0

    .line 4025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private x()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4062
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 4063
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    .line 4064
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 4066
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRC] needSwitchPhone phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4067
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v4, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnGsm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnCDMA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 4073
    :goto_1
    return v0

    .line 4064
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4073
    goto :goto_1
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4080
    const-string v0, "[IRC] doSwitchPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4081
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 4082
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aV:Z

    .line 4083
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    .line 4084
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 4085
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 4086
    return-void
.end method

.method private z()I
    .locals 3

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4096
    return v0
.end method


# virtual methods
.method public abortEnableDedicateBearer(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4195
    const/4 v0, 0x0

    .line 4196
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4197
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4199
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3958
    const-string v0, "Geminiphone abortFemtoCellList()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3959
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->abortFemtoCellList(Landroid/os/Message;I)V

    .line 3960
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortFemtoCellList(),simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->abortFemtoCellList(Landroid/os/Message;)V

    .line 3975
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 2148
    return-void
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 2217
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2564
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4140
    return-void
.end method

.method public blockSwitchPhoneDuringManualSelection(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0, p1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->blockSwitchPhone(Z)V

    .line 4048
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->cancelAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 2328
    return-void
.end method

.method public cancelAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1649
    const-string v0, "PHONE"

    const-string v1, "cancelAvailableNetworksGemini"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 1651
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2713
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2717
    return-void
.end method

.method public clearDataBearer()V
    .locals 0

    .prologue
    .line 4274
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2184
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 2164
    return-void
.end method

.method public configSimSwitch(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 3599
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public configSimSwitch(ZLandroid/os/Message;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3603
    invoke-static {}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->configSimSwitch(ZLcom/android/internal/telephony/gemini/GeminiPhone;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public dataConnectivityDecideSimId()I
    .locals 1

    .prologue
    .line 4037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDedicateBearer(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4179
    const/4 v0, 0x0

    .line 4180
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4181
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4183
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1951
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 1577
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2440
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->disposeReceiverAdp()V

    .line 460
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1916
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2918
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2922
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2492
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    .line 2493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()Z

    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4171
    const/4 v0, 0x0

    .line 4172
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4173
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4175
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 2168
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3706
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGPRSAlwaysAttachIfNecessary( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    if-gtz p1, :cond_1

    .line 3744
    :cond_0
    :goto_0
    return-void

    .line 3712
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3713
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3714
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3715
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3735
    :pswitch_0
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 3736
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getPsAttachSimWhenRadioOn()I

    move-result v0

    .line 3737
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3738
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 3739
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V

    goto :goto_0

    .line 3719
    :pswitch_1
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3720
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 3721
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V

    goto :goto_0

    .line 3727
    :pswitch_2
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3728
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    goto/16 :goto_0

    .line 3717
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2436
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2617
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 2180
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 3119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v0

    return v0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 1

    .prologue
    .line 3060
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSimSwitchAllowedSlots()I

    move-result v0

    return v0
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2737
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2741
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3823
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
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
    .line 3948
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1743
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 2324
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1615
    .line 1616
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_4

    .line 1617
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1623
    :goto_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableNetworksGemini activeSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1627
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1642
    :goto_2
    return-void

    .line 1616
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1629
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 1630
    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_3

    .line 1631
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activeSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->cleanupAllConnection(I)V

    .line 1635
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    .line 1636
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1637
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1638
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1639
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1640
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 3991
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2191
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2294
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2315
    return-void
.end method

.method public getCapabilitySIM(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x3

    .line 3130
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p1, v7, :cond_1

    .line 3131
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone getCapabilitySIM param error, return -1 ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3176
    :cond_0
    :goto_0
    return v0

    .line 3135
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3137
    const-string v1, "gsm.baseband.capability"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3138
    const-string v3, "gsm.baseband.capability2"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3139
    const-string v4, "PHONE"

    const-string v5, "GeminiPhone getCapability - DSDA"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const-string v4, "persist.gemini.sim_num"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v6, :cond_2

    .line 3142
    const-string v0, "get3GCapabilitySIM (DT) does not support Gemini+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    move v0, v2

    .line 3143
    goto :goto_0

    .line 3146
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v5, "com.mtk.3G_SWITCH"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3147
    const-string v5, "3G_SIM_ID"

    const/16 v6, 0x63

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3148
    if-ne v4, v2, :cond_3

    .line 3150
    const-string v0, "get3GCapabilitySIM (DT) PREF_3G_SIM_ID: -1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    move v0, v2

    .line 3151
    goto :goto_0

    .line 3154
    :cond_3
    if-gt v1, v7, :cond_0

    .line 3156
    if-le v3, v7, :cond_4

    .line 3157
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 3158
    goto :goto_0

    .line 3161
    :cond_5
    const-string v1, "PHONE"

    const-string v3, "GeminiPhone getCapability - DSDS"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_8

    .line 3163
    const-string v1, "gsm.baseband.capability"

    .line 3165
    if-lez v0, :cond_6

    .line 3166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3169
    :cond_6
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3170
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GeminiPhone getCapability:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    if-le v3, v7, :cond_7

    .line 3172
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    goto/16 :goto_0

    .line 3162
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3175
    :cond_8
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone getCapabilitySIM return -1 ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3176
    goto/16 :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1858
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1866
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1862
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2568
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 2
    .parameter

    .prologue
    .line 4227
    const/4 v0, 0x0

    .line 4228
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4229
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4231
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2733
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2424
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1719
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDeactivateCidArray(Ljava/lang/String;)[I
    .locals 2
    .parameter

    .prologue
    .line 4243
    const/4 v0, 0x0

    .line 4244
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4245
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4247
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 2
    .parameter

    .prologue
    .line 4219
    const/4 v0, 0x0

    .line 4220
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4221
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 2172
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1829
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3940
    const/4 v0, 0x0

    .line 3941
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3942
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3944
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2705
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3954
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V

    .line 3955
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",from SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3970
    return-void
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2187
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1837
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1825
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1906
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegInfo()Z
    .locals 1

    .prologue
    .line 4167
    const/4 v0, 0x0

    return v0
.end method

.method public getInternationalNetworkMode()I
    .locals 2

    .prologue
    .line 4119
    const-string v0, "[IRC] getInternationalNetworkMode "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4121
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->getNetworkMode()I

    move-result v0

    .line 4125
    :goto_0
    return v0

    .line 4123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRC] getInternationalNetworkMode Fail, FeatureOption.EVDO_DT_SUPPORT = false mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return default NW_MODE_INTERNATIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 2
    .parameter

    .prologue
    .line 4259
    const/4 v0, 0x0

    .line 4260
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4261
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4263
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1532
    .line 1533
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_1

    .line 1535
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    .line 1540
    :goto_1
    return-object v0

    .line 1533
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1540
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLocatedPlmnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 2593
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3898
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3906
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 2393
    return-void
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNetworkHideState()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2305
    return-void
.end method

.method public getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .locals 2
    .parameter

    .prologue
    .line 4211
    const/4 v0, 0x0

    .line 4212
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4213
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4215
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2420
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1714
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter

    .prologue
    .line 1833
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    .line 3748
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2745
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3751
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3752
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 2382
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2383
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 2384
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2389
    :goto_0
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2195
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorState()I
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicatorState()I

    move-result v0

    return v0
.end method

.method public getSimInsertedState()I
    .locals 2

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimInsertedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1421
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    return v0
.end method

.method public getSimSwitchAllowedSlots()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3063
    .line 3065
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_6

    .line 3067
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_5

    .line 3070
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 3071
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 3072
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 3073
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 3075
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->getAllowedSwitchSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3105
    :cond_1
    :goto_7
    return v0

    :cond_2
    move-object v0, v1

    .line 3070
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 3071
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 3072
    goto :goto_4

    .line 3080
    :cond_5
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimSwitchAllowedSlots] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3084
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_1

    .line 3086
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_b

    .line 3089
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 3090
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 3091
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 3092
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_7
    move-object v5, v1

    .line 3094
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_8
    move-object v0, v1

    .line 3089
    goto :goto_8

    :cond_9
    move-object v0, v1

    .line 3090
    goto :goto_a

    :cond_a
    move-object v0, v1

    .line 3091
    goto :goto_c

    .line 3099
    :cond_b
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimSwitchAllowedSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1
    .parameter

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 4

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;->getSmsDefaultSim(Landroid/content/Context;)I

    move-result v0

    .line 2912
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsDefaultSim result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    return v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2589
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1959
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUeEUtranVoiceDomainPreference()I
    .locals 1

    .prologue
    .line 4144
    const/4 v0, 0x0

    return v0
.end method

.method public getUeMobilityManagementImsVoiceTermination()I
    .locals 1

    .prologue
    .line 4158
    const/4 v0, 0x0

    return v0
.end method

.method public getUeUtranVoiceDomainPreference()I
    .locals 1

    .prologue
    .line 4151
    const/4 v0, 0x0

    return v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 3770
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2845
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2856
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2864
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 611
    .line 612
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 616
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 840
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 618
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v6

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v6

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 626
    :sswitch_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    .line 627
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 628
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    goto :goto_0

    .line 633
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aV:Z

    if-eqz v0, :cond_2

    .line 635
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeMessages(I)V

    .line 636
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aV:Z

    goto :goto_0

    .line 639
    :cond_2
    const-string v0, "receive EVENT_RADIO_AVAILABLE to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 644
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    if-eqz v0, :cond_5

    .line 646
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    .line 649
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_1

    .line 650
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_0

    .line 642
    :cond_4
    const-string v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 648
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_2

    .line 655
    :sswitch_3
    const-string v0, "receive EVENT_CONFIG_SIM_SWITCH_DONE to continue framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 658
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 660
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:Z

    .line 661
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:Z

    if-eqz v0, :cond_6

    .line 662
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:Z

    .line 665
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_1

    .line 666
    const-string v0, "broadcast 3G switch done event (DT)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto/16 :goto_0

    .line 664
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_3

    .line 672
    :sswitch_4
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 673
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 674
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 676
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 677
    aget v0, v0, v1

    if-ne v0, v6, :cond_1

    .line 678
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 686
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Z

    if-nez v0, :cond_7

    .line 687
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    :cond_7
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 692
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_8

    .line 693
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 695
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 698
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    if-eq v0, v7, :cond_9

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 700
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    .line 703
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 704
    if-eqz v0, :cond_e

    .line 705
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 706
    if-eq v2, v6, :cond_a

    if-ne v2, v5, :cond_b

    .line 707
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 708
    if-ne v2, v6, :cond_d

    .line 709
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 718
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()I

    move-result v0

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSimInsertedState()I

    move-result v3

    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dual SIM switch done, simInsertState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SIM Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 721
    if-ne v0, v6, :cond_c

    and-int v0, v3, v2

    if-eqz v0, :cond_c

    .line 722
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_c

    .line 723
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual SIM switch done, setPsAttach: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V

    .line 731
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DUAL_SIM_MODE_CHANGED_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 710
    :cond_d
    if-ne v2, v5, :cond_b

    .line 711
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_5

    .line 715
    :cond_e
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 722
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 735
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 736
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 737
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    .line 738
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    .line 739
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 763
    :goto_7
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    goto/16 :goto_0

    .line 741
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v2

    .line 742
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    if-ne v3, v6, :cond_12

    .line 743
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 747
    :goto_8
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    if-eq v3, v7, :cond_11

    .line 749
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_13

    if-ne v2, v6, :cond_13

    .line 750
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode_2"

    iget v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    :cond_11
    :goto_9
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v4, "com.mtk.3G_SWITCH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 756
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 757
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 759
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    .line 760
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set preferred network mode failed ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), rollback 3g sim ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 745
    :cond_12
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    goto :goto_8

    .line 752
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 766
    :sswitch_7
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_0

    .line 771
    :sswitch_8
    const-string v0, "Query available NW."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 772
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 773
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 774
    iget v1, v0, Landroid/os/Message;->arg2:I

    .line 778
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 779
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->getAvailableNetworks(Landroid/os/Message;)V

    .line 781
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 782
    instance-of v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_1

    .line 783
    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 784
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 794
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 795
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 796
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 797
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean data connection all done, activeSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", query sim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 804
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    .line 805
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 806
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->z()I

    move-result v0

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Data Setting value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 808
    if-ne v0, v2, :cond_16

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous active apn types: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    array-length v3, v0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v4, v0, v1

    .line 811
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->enableApnTypeGemini(Ljava/lang/String;I)I

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 814
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 824
    :cond_15
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:[Ljava/lang/String;

    goto/16 :goto_0

    .line 816
    :cond_16
    if-ne v0, v7, :cond_15

    .line 817
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    .line 819
    :catch_1
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_b

    .line 827
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 828
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 829
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 831
    const-string v2, "GPRS detached then query available NW after 1.5 secs."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 833
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 834
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 836
    const-wide/16 v3, 0x5dc

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->unregisterForDetached(ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x7 -> :sswitch_a
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_9
        0xb -> :sswitch_8
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2729
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2721
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2725
    return-void
.end method

.method i(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1364
    .line 1365
    if-nez p1, :cond_2

    .line 1366
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1376
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1377
    return v0

    :cond_1
    move v0, v1

    .line 1366
    goto :goto_0

    .line 1367
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1368
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1369
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1370
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1371
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1372
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1374
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public internationalModeForceSimSwitch(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalModeForceSimSwitch simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3999
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4006
    :cond_0
    :goto_0
    return v0

    .line 4003
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 4006
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2409
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1701
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1702
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2413
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1705
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1706
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 1

    .prologue
    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchManualChangeSlotAllowed()Z

    move-result v0

    return v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 1

    .prologue
    .line 2958
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchManualModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDedicateBearer(I)Z
    .locals 2
    .parameter

    .prologue
    .line 4267
    const/4 v0, 0x0

    .line 4268
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4269
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDedicateBearer(I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCid(I)Z
    .locals 2
    .parameter

    .prologue
    .line 4251
    const/4 v0, 0x0

    .line 4252
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4253
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4255
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isEmergencyCid(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1870
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPeerPhoneGettingAvailableNetwork()Z
    .locals 1

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:Z

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1382
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1396
    :cond_0
    :goto_0
    return v0

    .line 1386
    :cond_1
    if-nez p1, :cond_2

    .line 1387
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1388
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1389
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1390
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1391
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1392
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1393
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1395
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOnGemini() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 1396
    goto :goto_0
.end method

.method public isSimSwitchManualChangeSlotAllowed()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3011
    .line 3013
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_5

    .line 3015
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_4

    .line 3018
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 3019
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 3020
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 3021
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 3023
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->isManualModeChangeSlotAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3053
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 3018
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3019
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3020
    goto :goto_4

    .line 3028
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualChangeSlotAllowed] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3032
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_b

    .line 3034
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_a

    .line 3037
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 3038
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 3039
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 3040
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_6
    move-object v5, v1

    .line 3042
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 3037
    goto :goto_8

    :cond_8
    move-object v0, v1

    .line 3038
    goto :goto_a

    :cond_9
    move-object v0, v1

    .line 3039
    goto :goto_c

    .line 3047
    :cond_a
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualChangeSlotAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_b
    move v0, v3

    .line 3051
    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public isSimSwitchManualModeEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2961
    .line 2963
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_5

    .line 2965
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_4

    .line 2968
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2969
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2970
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2971
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2973
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3001
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2968
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2969
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2970
    goto :goto_4

    .line 2978
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualModeEnabled] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2981
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_b

    .line 2983
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_a

    .line 2986
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 2987
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 2988
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 2989
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->M:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_6
    move-object v5, v1

    .line 2991
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 2986
    goto :goto_8

    :cond_8
    move-object v0, v1

    .line 2987
    goto :goto_a

    :cond_9
    move-object v0, v1

    .line 2988
    goto :goto_c

    .line 2996
    :cond_a
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualModeEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_b
    move v0, v3

    .line 2999
    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public isSimSwitchSwapped()Z
    .locals 1

    .prologue
    .line 3608
    invoke-static {}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->isSimSwitchSwapped()Z

    move-result v0

    return v0
.end method

.method public isSwitching3GCapability()Z
    .locals 1

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSwitchingCapabilitySim()Z

    move-result v0

    return v0
.end method

.method public isSwitchingCapabilitySim()Z
    .locals 1

    .prologue
    .line 2947
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2948
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    .line 2950
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderPhoneSwitching()Z
    .locals 1

    .prologue
    .line 4054
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aX:Z

    return v0
.end method

.method public modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4187
    const/4 v0, 0x0

    .line 4188
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4189
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4191
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    return v0
.end method

.method n()I
    .locals 3

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v1

    .line 1242
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 1244
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    :goto_1
    return v0

    .line 1243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3803
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2585
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1855
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3843
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3850
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3851
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 3854
    :cond_0
    if-eqz p2, :cond_2

    .line 3855
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 3856
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3857
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 3859
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3868
    :goto_0
    return-void

    .line 3863
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3864
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 3866
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto :goto_0
.end method

.method public pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4203
    const/4 v0, 0x0

    .line 4204
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4205
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4207
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public plugInNoSimSlot(I)V
    .locals 3
    .parameter

    .prologue
    .line 3875
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    .line 3876
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    .line 3877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3879
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 3881
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3882
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    .line 3889
    :goto_0
    return-void

    .line 3884
    :cond_0
    const-string v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3886
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3887
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aZ:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2456
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1739
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1740
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 3994
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2468
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1756
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1757
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2581
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2560
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1849
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1850
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 2

    .prologue
    .line 1508
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2673
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2625
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2108
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2835
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2076
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2027
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2028
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2641
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2124
    return-void
.end method

.method public registerForImsDisableDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4165
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2100
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2092
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2019
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2020
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2665
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2044
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2036
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2765
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1898
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1899
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2773
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2011
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2012
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2649
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2004
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2689
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1882
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1883
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2657
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2873
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2132
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2060
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2633
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1874
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1875
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1346
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1347
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1348
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2784
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2785
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2116
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2084
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2068
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2681
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1995
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1996
    return-void
.end method

.method public registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2827
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2819
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2810
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2802
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2794
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 2152
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 514
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3780
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3985
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2753
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V

    .line 3965
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V

    .line 3980
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2340
    return-void
.end method

.method public sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2885
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2613
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2230
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 2056
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3244
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    return v0
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2749
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3988
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2452
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1735
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1736
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 569
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3837
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3838
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3839
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2301
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2319
    return-void
.end method

.method public setCapabilitySIM(II)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 3247
    .line 3248
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCapabilitySIM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p1, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v8, :cond_2

    .line 3250
    :cond_1
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone setCapabilitySIM param error, return false ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :goto_0
    return v5

    .line 3254
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3256
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.gemini.sim_num"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v6, :cond_4

    .line 3257
    :cond_3
    const-string v0, "Switch 3G capability (DT) does not support EVDO DT or Gemini+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 3261
    :cond_4
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3262
    const-string v1, "gsm.baseband.capability2"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3263
    if-le v0, v4, :cond_5

    if-gt v1, v4, :cond_6

    :cond_5
    if-ne v0, v4, :cond_7

    if-ne v1, v4, :cond_7

    .line 3264
    :cond_6
    const-string v0, "Switch 3G capability (DT) does not support in 2G phone or Dual 3G phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 3268
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch 3G capability (DT) (simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", capability2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 3272
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_9

    .line 3273
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    move v1, v5

    .line 3277
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_11

    .line 3278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v5

    .line 3284
    :goto_2
    if-eqz v0, :cond_10

    .line 3285
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3288
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3290
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    .line 3292
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_a

    .line 3293
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3295
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    .line 3296
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3299
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3300
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3301
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3304
    :cond_b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3306
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_CAPABILITY_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3308
    if-ltz p2, :cond_c

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt p2, v0, :cond_d

    :cond_c
    const/4 v0, -0x1

    if-ne v0, p2, :cond_e

    .line 3310
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3311
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3314
    :cond_e
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3316
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a(II)V

    .line 3318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ba:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 3320
    goto/16 :goto_0

    .line 3277
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 3304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3321
    :cond_10
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move v0, v8

    goto/16 :goto_2
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2472
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1760
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1761
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2476
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1764
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1765
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2572
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2577
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 527
    return-void
.end method

.method public setCellInfoListRateGemini(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1747
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1748
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3830
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2464
    return-void
.end method

.method public setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4235
    const/4 v0, 0x0

    .line 4236
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4237
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 4239
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I

    move-result v0

    return v0
.end method

.method public setDefaultPhone(I)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    .line 547
    return-void
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    .line 537
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualSimMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1402
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 1404
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1406
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1407
    const-string v1, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1408
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1409
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 1408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1413
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2881
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3925
    const/4 v0, 0x0

    .line 3926
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3927
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3929
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2709
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1501
    return-void
.end method

.method public setIMSEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 4164
    return-void
.end method

.method public setInternationalNetworkMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 4104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRC] setInternationalNetworkMode , networkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 4105
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4106
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aW:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0, p1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->setNetworkMode(I)V

    .line 4112
    :goto_0
    return-void

    .line 4108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRC] setInternationalNetworkMode, networkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Fail, PhoneFactory.isInternationalRoamingEnabled() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PhoneFactory.getExternalModemSlot() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2270
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2401
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2332
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2336
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomaticGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1654
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1655
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2697
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1890
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1891
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2397
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1697
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1698
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2311
    return-void
.end method

.method public setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3756
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2757
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2343
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Landroid/content/SharedPreferences;

    .line 2347
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    .line 2348
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2355
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    if-eq v0, v6, :cond_0

    .line 2356
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    .line 2357
    const-string v0, "PHONE"

    const-string v3, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2360
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2361
    const-string v0, "PHONE"

    const-string v2, "[DT]setPreferredNetworkType, phone = 0"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2379
    :cond_1
    :goto_1
    return-void

    .line 2352
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2364
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "[DT]setPreferredNetworkType, phone = 1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 2368
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    if-ne v0, v5, :cond_6

    move v0, v1

    .line 2369
    :goto_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 2370
    if-ne v0, v2, :cond_5

    .line 2371
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2369
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2373
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 2376
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1664
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1665
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Landroid/content/SharedPreferences;

    .line 1667
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    const/16 v4, 0xff

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    .line 1668
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1671
    if-nez p3, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1676
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode_2"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1681
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:I

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1684
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1685
    if-ne v0, v2, :cond_3

    .line 1686
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1684
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1688
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1691
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0
    .parameter

    .prologue
    .line 3827
    return-void
.end method

.method public setRadioMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 1438
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 1441
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Z

    if-eqz v0, :cond_1

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 1444
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    .line 1452
    :goto_0
    return-void

    .line 1446
    :cond_1
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:I

    .line 1447
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:I

    .line 1450
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioPower,power= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GEMINI_SIM_NUM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1457
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1458
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1464
    :goto_0
    return-void

    .line 1459
    :cond_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v2, v1, :cond_3

    .line 1460
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0

    .line 1462
    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1467
    if-eqz p2, :cond_0

    .line 1468
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1472
    :goto_0
    return-void

    .line 1470
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1481
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1493
    :goto_0
    return-void

    .line 1485
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v0

    .line 1486
    if-eqz v0, :cond_1

    .line 1487
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1488
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 1491
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSimInsertedState(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInsertedState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1426
    if-eqz p2, :cond_0

    .line 1427
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 1431
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2597
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2556
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1845
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1846
    return-void
.end method

.method public setUeEUtranVoiceDomainPreference(I)V
    .locals 0
    .parameter

    .prologue
    .line 4148
    return-void
.end method

.method public setUeMobilityManagementImsVoiceTermination(I)V
    .locals 0
    .parameter

    .prologue
    .line 4162
    return-void
.end method

.method public setUeUtranVoiceDomainPreference(I)V
    .locals 0
    .parameter

    .prologue
    .line 4155
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2444
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1727
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1728
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2288
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 3776
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2852
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2860
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2868
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 2234
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 2238
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 2156
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2629
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2112
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 2839
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 2080
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2031
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2032
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2645
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 2128
    return-void
.end method

.method public unregisterForImsDisableDone(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 4166
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 2104
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2096
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2023
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2024
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2669
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2048
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2040
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2769
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1902
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1903
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2777
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2015
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2016
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2653
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2008
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 2693
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1886
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1887
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2661
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2877
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2136
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 2064
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2637
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1878
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1879
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1358
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2788
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2789
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 2120
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2088
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 2072
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2685
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2677
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 1999
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2000
    return-void
.end method

.method public unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V

    .line 2831
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 2823
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2814
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2806
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2798
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2701
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1894
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1895
    return-void
.end method

.method public updateMobileData(I)V
    .locals 2
    .parameter

    .prologue
    .line 2892
    packed-switch p1, :pswitch_data_0

    .line 2900
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2900
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2897
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2905
    :cond_0
    return-void

    .line 2892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    .line 607
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2432
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1515
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1910
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1911
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
