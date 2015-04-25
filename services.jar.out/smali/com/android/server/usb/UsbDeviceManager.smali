.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ACM_PORT_INDEX_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_acm/port_index"

.field private static final AUDIO_MODE_NONE:I = 0x0

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final IPO_POWER_OFF:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final MASS_STORAGE_FILE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mass_storage/lun/file"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ACM:I = 0x7

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_HANDLE_CTCLINET:I = 0xb

.field private static final MSG_SET_BYPASS:I = 0xe

.field private static final MSG_SET_BYPASS_MODE:I = 0xa

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_VIA_CDROM:I = 0xd

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_DISCONNECT_STATE:I = 0x6

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final MSG_VIA_CDROM_EDJECT:I = 0xc

.field private static final MTP_RESET_TIME:I = 0xea60

.field private static final MTP_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/mtp_usb"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final RNDIS_UPDATE_DELAY:I = 0xafc8

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final UPDATE_DELAY_BICR:I = 0xbb8

.field private static final USBIF_U3D_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3d_test_uevent"

.field private static final USBIF_U3H_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3h_uevent"

.field private static final USBIF_U3H_TEST_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usbif_u3h_test_uevent"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"


# instance fields
.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAcmEnabled:Z

.field private mAcmPortIdx:Ljava/lang/String;

.field private mAdbEnabled:Z

.field private final mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mAudioSourceEnabled:Z

.field private final mAutoCdromEnable:Z

.field private mBatteryChargingUnPlug:Z

.field private mBootCompleted:Z

.field private mConnected_previous:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private mHwDisconnected:Z

.field private mIsBicrSet:Z

.field private mIsPcKnowMe:Z

.field private mIsUsbBicrEvo:Z

.field private mIsUserSwitch:Z

.field private final mLock:Ljava/lang/Object;

.field private mMtpAskDisconnect:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPCModeEnable:Z

.field private mSettingFunction:Ljava/lang/String;

.field private mSettingUsbBicr:Z

.field private mSettingUsbCharging:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbStorageType:Ljava/lang/String;

.field private mUseUsbNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 160
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 204
    const-string v4, "sys.usb.pcmodem.disable"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mPCModeEnable:Z

    .line 205
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mPCModeEnable:Z

    if-eqz v4, :cond_4

    const-string v4, "sys.usb.autocdrom.enable"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAutoCdromEnable:Z

    .line 234
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 312
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 314
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 316
    .local v1, pm:Landroid/content/pm/PackageManager;
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    .line 317
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    .line 318
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    .line 319
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    .line 320
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    .line 321
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    .line 322
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    .line 324
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    .line 326
    const-string v4, "android.hardware.usb.accessory"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 327
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 329
    const-string v4, "persist.sys.usb.bicr_evo"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, value:Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "Enable BICR evolution!!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    .line 333
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    .line 338
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 340
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "accessory attached at boot"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 345
    :cond_1
    const-string v4, "ro.adb.secure"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 346
    .local v2, secureAdbEnabled:Z
    const-string v4, "1"

    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 347
    .local v0, dataEncrypted:Z
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 348
    new-instance v4, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    #iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 350
    :cond_2
    return-void

    .end local v0           #dataEncrypted:Z
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #secureAdbEnabled:Z
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 204
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 205
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnected_previous:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnected_previous:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBatteryChargingUnPlug:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmPortIdx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmPortIdx:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsBicrSet:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsBicrSet:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpAskDisconnect:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/usb/UsbDeviceManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUserSwitch:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/usb/UsbDeviceManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbUpdateLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbBicr:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsUsbBicrEvo:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mIsPcKnowMe:Z

    return p1
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "functions"
    .parameter "function"

    .prologue
    .line 469
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    .end local p1
    :goto_0
    return-object p1

    .line 473
    .restart local p1
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 477
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 481
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 484
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 486
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "eem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 487
    const-string v0, "acm"

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    move-object p1, p0

    .line 490
    goto/16 :goto_0
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "functions"
    .parameter "function"

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 519
    .local v1, index:I
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Does "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "? index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-gez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v2

    .line 522
    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 523
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 524
    .local v0, charAfter:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 525
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initRndisAddress()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 448
    const/4 v0, 0x6

    .line 449
    .local v0, ETH_ALEN:I
    const/4 v7, 0x6

    new-array v2, v7, [I

    .line 451
    .local v2, address:[I
    aput v12, v2, v11

    .line 453
    const-string v7, "ro.serialno"

    const-string v8, "1234567890ABCDEF"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, serial:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 456
    .local v6, serialLength:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 457
    rem-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    .line 456
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget v10, v2, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget v10, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    aget v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aget v10, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    aget v10, v2, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, addrString:Ljava/lang/String;
    :try_start_0
    const-string v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_1
    return-void

    .line 463
    :catch_0
    move-exception v3

    .line 464
    .local v3, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private needsOemUsbOverride()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2017
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return v1

    .line 2019
    :cond_1
    const-string v2, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, bootMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "usbFunctions"

    .prologue
    .line 2024
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 2038
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 2026
    .restart local p1
    :cond_1
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, bootMode:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2029
    .local v2, overrides:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 2030
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2031
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2032
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object p1, v4

    goto :goto_0
.end method

.method private readOemUsbOverrideConfig()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1995
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1998
    .local v2, configList:[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1999
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 2000
    .local v1, config:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2001
    .local v4, items:[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2002
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 2003
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    .line 2005
    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2006
    .local v6, overrideList:Ljava/util/List;
    if-nez v6, :cond_1

    .line 2007
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #overrideList:Ljava/util/List;
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 2008
    .restart local v6       #overrideList:Ljava/util/List;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    :cond_1
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1999
    .end local v6           #overrideList:Ljava/util/List;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2014
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #config:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #items:[Ljava/lang/String;
    .end local v5           #len$:I
    :cond_3
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "functions"
    .parameter "function"

    .prologue
    .line 494
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, split:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 496
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 495
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_2

    .line 501
    const-string v4, "none"

    .line 513
    :goto_1
    return-object v4

    .line 503
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 505
    aget-object v2, v3, v1

    .line 506
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 508
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 513
    .end local v2           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private startAccessoryMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 420
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v5, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 425
    .local v1, enableAudio:Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_4

    move v0, v3

    .line 428
    .local v0, enableAccessory:Z
    :goto_2
    const/4 v2, 0x0

    .line 430
    .local v2, functions:Ljava/lang/String;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 431
    const-string v2, "accessory,audio_source"

    .line 439
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 441
    invoke-virtual {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #enableAccessory:Z
    .end local v1           #enableAudio:Z
    .end local v2           #functions:Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 423
    goto :goto_1

    .restart local v1       #enableAudio:Z
    :cond_4
    move v0, v4

    .line 425
    goto :goto_2

    .line 433
    .restart local v0       #enableAccessory:Z
    .restart local v2       #functions:Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 434
    const-string v2, "accessory"

    goto :goto_3

    .line 435
    :cond_6
    if-eqz v1, :cond_2

    .line 436
    const-string v2, "audio_source"

    goto :goto_3
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .parameter "alwaysAllow"
    .parameter "publicKey"

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 2045
    :cond_0
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    .prologue
    return-void
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 2051
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 2067
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 2069
    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1978
    const-string v0, "DISCONNECTED"

    .line 1979
    .local v0, state:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHwDisconnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1980
    const-string v0, "CONNECTED"

    .line 1981
    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-object v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "accessory"

    .prologue
    .line 1958
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1959
    .local v0, currentAccessory:Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 1960
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1962
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1966
    .local v1, error:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1968
    .end local v1           #error:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 1969
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public setCurrentFunctions(Ljava/lang/String;Z)V
    .locals 3
    .parameter "functions"
    .parameter "makeDefault"

    .prologue
    .line 1973
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    .line 1975
    return-void
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 1986
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1988
    :cond_0
    :try_start_0
    const-string v1, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :goto_0
    return-void

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to write to /sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 365
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "systemReady"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 372
    const-string v5, "persist.sys.usb.config"

    const-string v8, "mtp"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, config:Ljava/lang/String;
    const-string v5, "adb"

    invoke-static {v0, v5}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v5, "acm"

    invoke-static {v0, v5}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v5, "ro.sys.usb.storage.type"

    const-string v8, "mtp"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    .line 377
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "systemReady - mUsbStorageType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 380
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    .line 381
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "systemReady - mUsbStorageType = config"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbStorageType:Ljava/lang/String;

    const-string v8, "mass_storage"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 385
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "systemReady - UMS only"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, massStorageSupported:Z
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 390
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 392
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_1

    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 394
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "systemReady - massStorageSupported: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v2, 0x1

    .line 401
    .end local v1           #i:I
    :cond_1
    if-nez v2, :cond_4

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 407
    .end local v2           #massStorageSupported:Z
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_2
    const-string v5, "charging"

    invoke-static {v0, v5}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingUsbCharging:Z

    .line 413
    :cond_2
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "adb_enabled"

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v9, :cond_6

    :goto_3
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 417
    return-void

    .line 393
    .restart local v1       #i:I
    .restart local v2       #massStorageSupported:Z
    .restart local v3       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v4       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_4
    move v5, v7

    .line 401
    goto :goto_1

    .line 404
    .end local v2           #massStorageSupported:Z
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_5
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "systemReady - MTP(+UMS)"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    goto :goto_2

    :cond_6
    move v6, v7

    .line 413
    goto :goto_3
.end method
