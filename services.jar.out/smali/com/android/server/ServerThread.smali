.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static final isLteDcSupport:Z

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 172
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 173
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 175
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1586
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1589
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1590
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, ret:Landroid/content/ComponentName;
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== Start BadService2 ==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1576
    if-eqz v0, :cond_0

    .line 1577
    const-string v1, "ANR_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== result to start BadService2 === Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :goto_0
    return-object v0

    .line 1579
    :cond_0
    const-string v1, "ANR_DEBUG"

    const-string v2, "=== result to start BadService2 === Name: Null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public initAndLoop()V
    .locals 192

    .prologue
    .line 187
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 190
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 191
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 195
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 198
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 199
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 203
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v159

    .line 205
    .local v159, shutdownAction:Ljava/lang/String;
    if-eqz v159, :cond_0

    invoke-virtual/range {v159 .. v159}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 206
    const/4 v7, 0x0

    move-object/from16 v0, v159

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_2c

    const/16 v150, 0x1

    .line 209
    .local v150, reboot:Z
    :goto_0
    invoke-virtual/range {v159 .. v159}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2d

    .line 210
    const/4 v7, 0x1

    invoke-virtual/range {v159 .. v159}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v159

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v149

    .line 215
    .local v149, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v150

    move-object/from16 v1, v149

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 219
    .end local v149           #reason:Ljava/lang/String;
    .end local v150           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 220
    .local v114, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v114

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/16 v113, 0x0

    .line 222
    .local v113, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 224
    .local v34, headless:Z
    const/16 v120, 0x0

    .line 225
    .local v120, installer:Lcom/android/server/pm/Installer;
    const/16 v72, 0x0

    .line 226
    .local v72, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v90, 0x0

    .line 227
    .local v90, contentService:Lcom/android/server/content/ContentService;
    const/16 v122, 0x0

    .line 228
    .local v122, lights:Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 229
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    const/16 v104, 0x0

    .line 230
    .local v104, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v80, 0x0

    .line 231
    .local v80, battery:Lcom/android/server/BatteryService;
    const/16 v181, 0x0

    .line 232
    .local v181, vibrator:Lcom/android/server/VibratorService;
    const/16 v74, 0x0

    .line 233
    .local v74, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v131, 0x0

    .line 234
    .local v131, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 235
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 236
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v134, 0x0

    .line 237
    .local v134, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v86, 0x0

    .line 238
    .local v86, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v188, 0x0

    .line 239
    .local v188, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v186, 0x0

    .line 240
    .local v186, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v158, 0x0

    .line 241
    .local v158, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v145, 0x0

    .line 242
    .local v145, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 243
    .local v5, context:Landroid/content/Context;
    const/16 v190, 0x0

    .line 244
    .local v190, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v81, 0x0

    .line 246
    .local v81, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v70, 0x0

    .line 247
    .local v70, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v105, 0x0

    .line 248
    .local v105, dock:Lcom/android/server/DockObserver;
    const/16 v179, 0x0

    .line 249
    .local v179, usb:Lcom/android/server/usb/UsbService;
    const/16 v156, 0x0

    .line 250
    .local v156, serial:Lcom/android/server/SerialService;
    const/16 v175, 0x0

    .line 251
    .local v175, twilight:Lcom/android/server/TwilightService;
    const/16 v177, 0x0

    .line 252
    .local v177, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v151, 0x0

    .line 253
    .local v151, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v136, 0x0

    .line 254
    .local v136, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v83, 0x0

    .line 255
    .local v83, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v119, 0x0

    .line 256
    .local v119, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v162, 0x0

    .line 258
    .local v162, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v164, 0x0

    .line 259
    .local v164, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v166, 0x0

    .line 260
    .local v166, telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    const/16 v167, 0x0

    .line 261
    .local v167, telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    const/16 v88, 0x0

    .line 263
    .local v88, consumerIr:Lcom/android/server/ConsumerIrService;
    const/16 v168, 0x0

    .line 265
    .local v168, telephonyRegistryLteDc:Lcom/android/server/TelephonyRegistry;
    const/16 v130, 0x0

    .line 268
    .local v130, mom:Lcom/mediatek/common/mom/IMobileManagerService;
    const/16 v153, 0x0

    .line 272
    .local v153, recovery:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    const/16 v116, 0x0

    .line 275
    .local v116, hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    const/16 v140, 0x0

    .line 278
    .local v140, passpointManager:Lcom/mediatek/common/passpoint/IPasspointManager;
    new-instance v191, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v191

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 279
    .local v191, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v191 .. v191}, Landroid/os/HandlerThread;->start()V

    .line 280
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v191 .. v191}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    const/16 v24, 0x0

    .line 299
    .local v24, onlyCore:Z
    const/16 v115, 0x0

    .line 304
    .local v115, firstBoot:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v121, Lcom/android/server/pm/Installer;

    invoke-direct/range {v121 .. v121}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_76

    .line 306
    .end local v120           #installer:Lcom/android/server/pm/Installer;
    .local v121, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/pm/Installer;->ping()Z

    .line 309
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 311
    const/16 v133, 0x0

    .line 314
    .local v133, msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v133, v0

    .line 315
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 320
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v133 .. v133}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    .end local v133           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 330
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v146, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v146 .. v146}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 332
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .local v146, power:Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static/range {v113 .. v113}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_77

    move-result-object v5

    move-object/from16 v4, v146

    .end local v146           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v120, v121

    .line 341
    .end local v121           #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #installer:Lcom/android/server/pm/Installer;
    :goto_5
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v101

    .line 342
    .local v101, disableStorage:Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 343
    .local v98, disableMedia:Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 344
    .local v96, disableBluetooth:Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v103

    .line 345
    .local v103, disableTelephony:Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 346
    .local v97, disableLocation:Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v102

    .line 347
    .local v102, disableSystemUI:Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 348
    .local v100, disableNonCoreServices:Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 353
    .local v99, disableNetwork:Z
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Recovery Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-class v7, Lcom/mediatek/common/recovery/IRecoveryManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/recovery/IRecoveryManagerService;

    move-object/from16 v153, v0

    .line 355
    if-eqz v153, :cond_2

    .line 356
    const-string v7, "recovery"

    invoke-interface/range {v153 .. v153}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    invoke-interface/range {v153 .. v153}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->startBootMonitor()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 366
    :cond_2
    :goto_6
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6a

    .line 368
    .end local v104           #display:Lcom/android/server/display/DisplayManagerService;
    .local v11, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_8
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 370
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v163, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6b

    .line 372
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v163, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_9
    const-string v7, "telephony.registry"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 373
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v165, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v165

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6c

    .line 375
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v165, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_a
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 396
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 399
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 401
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_3

    .line 402
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 409
    .local v93, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 410
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 411
    const/16 v24, 0x1

    .line 418
    :cond_4
    :goto_7
    if-eqz v113, :cond_30

    const/4 v7, 0x1

    :goto_8
    :try_start_b
    move-object/from16 v0, v120

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v145

    .line 442
    :cond_5
    :goto_9
    :try_start_c
    invoke-interface/range {v145 .. v145}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    move-result v115

    .line 447
    :goto_a
    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 468
    :cond_6
    :goto_b
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 471
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 480
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v73, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    .line 482
    .end local v72           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v73, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_10
    const-string v7, "account"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6d

    move-object/from16 v72, v73

    .line 490
    .end local v73           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v72       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_c
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "MobileManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-class v7, Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    move-object/from16 v130, v0

    .line 492
    const-string v7, "mobile"

    invoke-interface/range {v130 .. v130}, Lcom/mediatek/common/mom/IMobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    .line 499
    :goto_d
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v7, 0x1

    move/from16 v0, v113

    if-ne v0, v7, :cond_33

    const/4 v7, 0x1

    :goto_e
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v90

    .line 503
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 506
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6

    .line 509
    .end local v122           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6e

    .line 511
    .end local v80           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_14
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 513
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v182, Lcom/android/server/VibratorService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6f

    .line 515
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .local v182, vibrator:Lcom/android/server/VibratorService;
    :try_start_15
    const-string v7, "vibrator"

    move-object/from16 v0, v182

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 517
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v89, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_70

    .line 519
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .local v89, consumerIr:Lcom/android/server/ConsumerIrService;
    :try_start_16
    const-string v7, "consumer_ir"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 527
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_71

    .line 529
    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .local v16, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_17
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 534
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 536
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_72

    .line 539
    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v20, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_34

    const/16 v22, 0x1

    :goto_f
    if-nez v115, :cond_35

    const/16 v23, 0x1

    :goto_10
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v190

    .line 543
    const-string v7, "window"

    move-object/from16 v0, v190

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 544
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 546
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v190

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 548
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 549
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 551
    move-object/from16 v0, v190

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 552
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 557
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 558
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_b

    :goto_11
    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v181, v182

    .line 587
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    :goto_12
    const/16 v94, 0x0

    .line 588
    .local v94, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v160, 0x0

    .line 589
    .local v160, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v117, 0x0

    .line 590
    .local v117, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v75, 0x0

    .line 591
    .local v75, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v138, 0x0

    .line 592
    .local v138, notification:Lcom/android/server/NotificationManagerService;
    const/16 v184, 0x0

    .line 593
    .local v184, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v123, 0x0

    .line 594
    .local v123, location:Lcom/android/server/LocationManagerService;
    const/16 v91, 0x0

    .line 595
    .local v91, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v173, 0x0

    .line 596
    .local v173, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v125, 0x0

    .line 597
    .local v125, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v107, 0x0

    .line 598
    .local v107, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v169, 0x0

    .line 599
    .local v169, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v141, 0x0

    .line 600
    .local v141, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    const/16 v144, 0x0

    .line 601
    .local v144, perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    const/16 v77, 0x0

    .line 602
    .local v77, atlas:Lcom/android/server/AssetAtlasService;
    const/16 v147, 0x0

    .line 603
    .local v147, printManager:Lcom/android/server/print/PrintManagerService;
    const/16 v127, 0x0

    .line 606
    .local v127, mediaRouter:Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_7

    .line 610
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v118, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v118

    move-object/from16 v1, v190

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 612
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .local v118, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_1a
    const-string v7, "input_method"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_69

    move-object/from16 v117, v118

    .line 618
    .end local v118           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v117       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_13
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 628
    :cond_7
    :goto_14
    :try_start_1c
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 634
    :goto_15
    :try_start_1d
    invoke-interface/range {v145 .. v145}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 640
    :goto_16
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040413

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_68
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    .line 665
    :cond_8
    :goto_17
    const/4 v7, 0x1

    move/from16 v0, v113

    if-eq v0, v7, :cond_3d

    .line 666
    if-nez v101, :cond_9

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 673
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v132, Lcom/android/server/MountService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12

    .line 675
    .end local v131           #mountService:Lcom/android/server/MountService;
    .local v132, mountService:Lcom/android/server/MountService;
    :try_start_20
    const-string v7, "mount"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_67

    move-object/from16 v131, v132

    .line 681
    .end local v132           #mountService:Lcom/android/server/MountService;
    .restart local v131       #mountService:Lcom/android/server/MountService;
    :cond_9
    :goto_18
    if-nez v100, :cond_a

    .line 683
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v126, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_13

    .line 685
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v126, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_22
    const-string v7, "lock_settings"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_66

    move-object/from16 v125, v126

    .line 691
    .end local v126           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v125       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_19
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v95, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_14

    .line 693
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v95, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_24
    const-string v7, "device_policy"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_65

    move-object/from16 v94, v95

    .line 699
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :cond_a
    :goto_1a
    if-nez v102, :cond_b

    .line 701
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v161, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v161

    move-object/from16 v1, v190

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_15

    .line 703
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v161, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_26
    const-string v7, "statusbar"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_64

    move-object/from16 v160, v161

    .line 709
    .end local v161           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v160       #statusBar:Lcom/android/server/StatusBarManagerService;
    :cond_b
    :goto_1b
    if-nez v100, :cond_c

    .line 711
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.clipserviceext"

    new-instance v9, Lcom/miui/server/ClipServiceExtra;

    invoke-direct {v9}, Lcom/miui/server/ClipServiceExtra;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 719
    :cond_c
    :goto_1c
    if-nez v99, :cond_d

    .line 721
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 723
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .line 729
    :cond_d
    :goto_1d
    if-nez v100, :cond_e

    .line 731
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v174, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    .line 733
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v174, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_2a
    const-string v7, "textservices"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_63

    move-object/from16 v173, v174

    .line 739
    .end local v174           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v173       #tsms:Lcom/android/server/TextServicesManagerService;
    :cond_e
    :goto_1e
    if-nez v99, :cond_3c

    .line 741
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v135, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v135

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 743
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v135, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_2c
    const-string v7, "netstats"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_62

    move-object/from16 v29, v135

    .line 749
    .end local v135           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1f
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 753
    .end local v134           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_2e
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_61

    .line 759
    :goto_20
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v189, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .line 761
    .end local v188           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v189, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_30
    const-string v7, "wifip2p"

    move-object/from16 v0, v189

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_60

    move-object/from16 v188, v189

    .line 767
    .end local v189           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v188       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v187, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 769
    .end local v186           #wifi:Lcom/android/server/wifi/WifiService;
    .local v187, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_32
    const-string v7, "wifi"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_5f

    move-object/from16 v186, v187

    .line 775
    .end local v187           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v186       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_22
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v87, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v87

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 778
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .local v87, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_34
    const-string v7, "connectivity"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 779
    move-object/from16 v0, v29

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 780
    move-object/from16 v0, v25

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 782
    invoke-virtual/range {v188 .. v188}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 783
    invoke-virtual/range {v186 .. v186}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_5e

    move-object/from16 v86, v87

    .line 789
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_23
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v158

    .line 791
    const-string v7, "servicediscovery"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .line 798
    :goto_24
    if-nez v100, :cond_f

    .line 800
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .line 813
    :cond_f
    :goto_25
    if-eqz v131, :cond_10

    if-nez v24, :cond_10

    .line 814
    invoke-virtual/range {v131 .. v131}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 818
    :cond_10
    if-eqz v72, :cond_11

    .line 819
    :try_start_37
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .line 825
    :cond_11
    :goto_26
    if-eqz v90, :cond_12

    .line 826
    :try_start_38
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 832
    :cond_12
    :goto_27
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v139, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v139

    move-object/from16 v1, v160

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 834
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .local v139, notification:Lcom/android/server/NotificationManagerService;
    :try_start_3a
    const-string v7, "notification"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 835
    move-object/from16 v0, v25

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_5d

    move-object/from16 v138, v139

    .line 841
    .end local v139           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v138       #notification:Lcom/android/server/NotificationManagerService;
    :goto_28
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/ServerThread$Injector;->setMemoryLowThresholdProperty()V

    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .line 848
    :goto_29
    if-nez v97, :cond_13

    .line 850
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v124, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 852
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .local v124, location:Lcom/android/server/LocationManagerService;
    :try_start_3d
    const-string v7, "location"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_5c

    move-object/from16 v123, v124

    .line 858
    .end local v124           #location:Lcom/android/server/LocationManagerService;
    .restart local v123       #location:Lcom/android/server/LocationManagerService;
    :goto_2a
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v92, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 860
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v92, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3f
    const-string v7, "country_detector"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_5b

    move-object/from16 v91, v92

    .line 866
    .end local v92           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    :cond_13
    :goto_2b
    if-nez v100, :cond_14

    .line 868
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 878
    :cond_14
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 879
    const/16 v154, 0x0

    .line 881
    .local v154, searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_42
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v154, v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 887
    :goto_2d
    if-eqz v154, :cond_15

    .line 888
    :try_start_43
    const-string v7, "search_engine"

    invoke-interface/range {v154 .. v154}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 897
    .end local v154           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_15
    :goto_2e
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 904
    :goto_2f
    if-nez v100, :cond_16

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 907
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-nez v34, :cond_16

    .line 909
    new-instance v185, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v185

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2a

    .line 910
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v185, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_46
    const-string v7, "wallpaper"

    move-object/from16 v0, v185

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_5a

    move-object/from16 v184, v185

    .line 917
    .end local v185           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v184       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_16
    :goto_30
    if-nez v98, :cond_17

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 919
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .line 928
    :cond_17
    :goto_31
    if-nez v98, :cond_18

    .line 930
    const/16 v79, 0x0

    .line 932
    .local v79, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v79, v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 937
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioProfileService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v79

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz v79, :cond_18

    .line 939
    const-string v7, "audioprofile"

    invoke-interface/range {v79 .. v79}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 949
    .end local v79           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_18
    :goto_33
    const-string v7, "1"

    const-string v9, "ro.mtk_sensorhub_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 951
    const/16 v155, 0x0

    .line 953
    .local v155, sensorHubService:Lcom/mediatek/common/sensorhub/ISensorHubService;
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "SensorHub Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-class v7, Lcom/mediatek/common/sensorhub/ISensorHubService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/sensorhub/ISensorHubService;

    move-object/from16 v155, v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2f

    .line 958
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SensorHubService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v155

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    if-eqz v155, :cond_19

    .line 960
    const-string v7, "sensorhubservice"

    invoke-interface/range {v155 .. v155}, Lcom/mediatek/common/sensorhub/ISensorHubService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 968
    .end local v155           #sensorHubService:Lcom/mediatek/common/sensorhub/ISensorHubService;
    :cond_19
    :goto_35
    if-nez v100, :cond_1a

    .line 970
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v106, Lcom/android/server/DockObserver;

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .end local v105           #dock:Lcom/android/server/DockObserver;
    .local v106, dock:Lcom/android/server/DockObserver;
    move-object/from16 v105, v106

    .line 978
    .end local v106           #dock:Lcom/android/server/DockObserver;
    .restart local v105       #dock:Lcom/android/server/DockObserver;
    :cond_1a
    :goto_36
    if-nez v98, :cond_1b

    .line 980
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 989
    :cond_1b
    :goto_37
    if-nez v100, :cond_1c

    .line 991
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v180, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v180

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .line 994
    .end local v179           #usb:Lcom/android/server/usb/UsbService;
    .local v180, usb:Lcom/android/server/usb/UsbService;
    :try_start_4f
    const-string v7, "usb"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.os.servicemanager"

    new-instance v9, Landroid/os/MiuiServiceManagerInternal;

    invoke-direct {v9}, Landroid/os/MiuiServiceManagerInternal;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_59

    move-object/from16 v179, v180

    .line 1000
    .end local v180           #usb:Lcom/android/server/usb/UsbService;
    .restart local v179       #usb:Lcom/android/server/usb/UsbService;
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v157, Lcom/android/server/SerialService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_33

    .line 1003
    .end local v156           #serial:Lcom/android/server/SerialService;
    .local v157, serial:Lcom/android/server/SerialService;
    :try_start_51
    const-string v7, "serial"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_58

    move-object/from16 v156, v157

    .line 1010
    .end local v157           #serial:Lcom/android/server/SerialService;
    .restart local v156       #serial:Lcom/android/server/SerialService;
    :cond_1c
    :goto_39

    const-string v7, "security"

    new-instance v9, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v9, v5}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v176, Lcom/android/server/TwilightService;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    .end local v175           #twilight:Lcom/android/server/TwilightService;
    .local v176, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v175, v176

    .line 1017
    .end local v176           #twilight:Lcom/android/server/TwilightService;
    .restart local v175       #twilight:Lcom/android/server/TwilightService;
    :goto_3a
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v178, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v178

    move-object/from16 v1, v175

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_35

    .end local v177           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v178, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v177, v178

    .line 1024
    .end local v178           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v177       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_3b
    if-nez v100, :cond_1d

    .line 1026
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_36

    .line 1034
    :goto_3c
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v76, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_37

    .line 1036
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .local v76, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_56
    const-string v7, "appwidget"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_57

    move-object/from16 v75, v76

    .line 1042
    .end local v76           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_3d
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v152, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_38

    .end local v151           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v152, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v151, v152

    .line 1053
    .end local v152           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v151       #recognition:Lcom/android/server/RecognitionManagerService;
    :cond_1d
    :goto_3e
    :try_start_58
    const-class v7, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfServiceManager;

    move-object/from16 v144, v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_39

    .line 1059
    :goto_3f
    const/16 v143, 0x0

    .line 1061
    .local v143, perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :try_start_59
    const-class v7, Lcom/mediatek/common/perfservice/IPerfService;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v144, v9, v10

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    move-object/from16 v143, v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_3b

    .line 1065
    :goto_40
    :try_start_5a
    const-string v7, "perfservice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v143

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    if-eqz v143, :cond_1e

    .line 1067
    const-string v7, "mtk-perfservice"

    invoke-interface/range {v143 .. v143}, Lcom/mediatek/common/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_3b

    .line 1077
    :cond_1e
    :goto_41
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3c

    .line 1088
    :goto_42
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3d

    .line 1095
    :goto_43
    if-nez v99, :cond_1f

    .line 1097
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v137, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3e

    .end local v136           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v137, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v136, v137

    .line 1104
    .end local v137           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v136       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :cond_1f
    :goto_44
    if-nez v98, :cond_20

    .line 1106
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v84, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3f

    .line 1108
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v84, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5f
    const-string v7, "commontime_management"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_56

    move-object/from16 v83, v84

    .line 1114
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :cond_20
    :goto_45
    if-nez v99, :cond_21

    .line 1116
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_40

    .line 1123
    :cond_21
    :goto_46
    if-nez v100, :cond_22

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110048

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1126
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v108, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_41

    .line 1129
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v108, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_62
    const-string v7, "dreams"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_55

    move-object/from16 v107, v108

    .line 1135
    .end local v108           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v107       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_22
    :goto_47
    if-nez v100, :cond_23

    .line 1137
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    new-instance v78, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_42

    .line 1139
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .local v78, atlas:Lcom/android/server/AssetAtlasService;
    :try_start_64
    const-string v7, "assetatlas"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_54

    move-object/from16 v77, v78

    .line 1146
    .end local v78           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v77       #atlas:Lcom/android/server/AssetAtlasService;
    :cond_23
    :goto_48
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_43

    .line 1153
    :goto_49
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v148, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_44

    .line 1155
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .local v148, printManager:Lcom/android/server/print/PrintManagerService;
    :try_start_67
    const-string v7, "print"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_53

    move-object/from16 v147, v148

    .line 1160
    .end local v148           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v147       #printManager:Lcom/android/server/print/PrintManagerService;
    :goto_4a
    if-nez v100, :cond_24

    .line 1162
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v128, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_45

    .line 1164
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .local v128, mediaRouter:Lcom/android/server/media/MediaRouterService;
    :try_start_69
    const-string v7, "media_router"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_52

    move-object/from16 v127, v128

    .line 1182
    .end local v128           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v127       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    :cond_24
    :goto_4b
    :try_start_6a
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v142, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v142 .. v142}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_46

    .line 1184
    .end local v141           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .local v142, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :try_start_6b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v142

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_51

    move-object/from16 v141, v142

    .line 1191
    .end local v142           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v141       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :goto_4c
    if-nez v100, :cond_25

    .line 1218
    .end local v143           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :cond_25
    :goto_4d
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .line 1219
    .local v48, safeMode:Z
    if-eqz v48, :cond_3b

    .line 1220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1222
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1224
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1233
    :goto_4e
    :try_start_6c
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_47

    .line 1238
    :goto_4f
    if-eqz v125, :cond_26

    .line 1240
    :try_start_6d
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_48

    .line 1246
    :cond_26
    :goto_50
    if-eqz v94, :cond_27

    .line 1248
    :try_start_6e
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_49

    .line 1254
    :cond_27
    :goto_51
    if-eqz v138, :cond_28

    .line 1256
    :try_start_6f
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_4a

    .line 1263
    :cond_28
    :goto_52
    :try_start_70
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_4b

    .line 1268
    :goto_53
    if-eqz v48, :cond_29

    .line 1269
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1275
    :cond_29
    invoke-virtual/range {v190 .. v190}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v85

    .line 1276
    .local v85, config:Landroid/content/res/Configuration;
    new-instance v129, Landroid/util/DisplayMetrics;

    invoke-direct/range {v129 .. v129}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1277
    .local v129, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/view/WindowManager;

    .line 1278
    .local v183, w:Landroid/view/WindowManager;
    invoke-interface/range {v183 .. v183}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v129

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1279
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v85

    move-object/from16 v1, v129

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1282
    :try_start_71
    move-object/from16 v0, v175

    move-object/from16 v1, v107

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_4c

    .line 1288
    :goto_54
    :try_start_72
    invoke-interface/range {v145 .. v145}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_4d

    .line 1294
    :goto_55
    :try_start_73
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_4e

    .line 1300
    :goto_56
    move-object/from16 v35, v5

    .line 1301
    .local v35, contextF:Landroid/content/Context;
    move-object/from16 v36, v131

    .line 1302
    .local v36, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .line 1303
    .local v37, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v38, v30

    .line 1304
    .local v38, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v29

    .line 1305
    .local v39, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v25

    .line 1306
    .local v40, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v86

    .line 1307
    .local v41, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v105

    .line 1308
    .local v42, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v43, v179

    .line 1309
    .local v43, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v44, v175

    .line 1310
    .local v44, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v45, v177

    .line 1311
    .local v45, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v75

    .line 1312
    .local v47, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v184

    .line 1313
    .local v49, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v117

    .line 1314
    .local v50, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v46, v151

    .line 1315
    .local v46, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v123

    .line 1316
    .local v52, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v91

    .line 1317
    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v136

    .line 1318
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v83

    .line 1319
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v173

    .line 1320
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v160

    .line 1321
    .local v51, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v107

    .line 1322
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v77

    .line 1323
    .local v58, atlasF:Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .line 1324
    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v162

    .line 1326
    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v164

    .line 1327
    .local v61, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v166

    .line 1328
    .local v62, telephonyRegistryF3:Ljava/lang/Object;
    move-object/from16 v63, v167

    .line 1331
    .local v63, telephonyRegistryF4:Ljava/lang/Object;
    move-object/from16 v64, v168

    .line 1333
    .local v64, telephonyRegistryLteDcF:Ljava/lang/Object;
    move-object/from16 v65, v169

    .line 1334
    .local v65, thermalF:Ljava/lang/Object;
    move-object/from16 v66, v144

    .line 1335
    .local v66, perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    move-object/from16 v67, v147

    .line 1336
    .local v67, printManagerF:Lcom/android/server/print/PrintManagerService;
    move-object/from16 v68, v127

    .line 1337
    .local v68, mediaRouterF:Lcom/android/server/media/MediaRouterService;
    move-object/from16 v33, v130

    .line 1338
    .local v33, momF:Lcom/mediatek/common/mom/IMobileManagerService;
    move-object/from16 v69, v153

    .line 1345
    .local v69, recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v69}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/IPerfServiceManager;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;Lcom/mediatek/common/recovery/IRecoveryManagerService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1550
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1551
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_2a
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1558
    if-eqz v153, :cond_2b

    .line 1559
    :try_start_74
    invoke-interface/range {v153 .. v153}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->stopBootMonitor()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_4f

    .line 1566
    :cond_2b
    :goto_57
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1567
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void

    .line 206
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #momF:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v34           #headless:Z
    .end local v35           #contextF:Landroid/content/Context;
    .end local v36           #mountServiceF:Lcom/android/server/MountService;
    .end local v37           #batteryF:Lcom/android/server/BatteryService;
    .end local v38           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v39           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v40           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v42           #dockF:Lcom/android/server/DockObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #atlasF:Lcom/android/server/AssetAtlasService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v63           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v64           #telephonyRegistryLteDcF:Ljava/lang/Object;
    .end local v65           #thermalF:Ljava/lang/Object;
    .end local v66           #perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v67           #printManagerF:Lcom/android/server/print/PrintManagerService;
    .end local v68           #mediaRouterF:Lcom/android/server/media/MediaRouterService;
    .end local v69           #recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    .end local v70           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v72           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v81           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v85           #config:Landroid/content/res/Configuration;
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v90           #contentService:Lcom/android/server/content/ContentService;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v96           #disableBluetooth:Z
    .end local v97           #disableLocation:Z
    .end local v98           #disableMedia:Z
    .end local v99           #disableNetwork:Z
    .end local v100           #disableNonCoreServices:Z
    .end local v101           #disableStorage:Z
    .end local v102           #disableSystemUI:Z
    .end local v103           #disableTelephony:Z
    .end local v105           #dock:Lcom/android/server/DockObserver;
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v113           #factoryTest:I
    .end local v114           #factoryTestStr:Ljava/lang/String;
    .end local v115           #firstBoot:Z
    .end local v116           #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v120           #installer:Lcom/android/server/pm/Installer;
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v129           #metrics:Landroid/util/DisplayMetrics;
    .end local v130           #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v131           #mountService:Lcom/android/server/MountService;
    .end local v136           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .end local v140           #passpointManager:Lcom/mediatek/common/passpoint/IPasspointManager;
    .end local v141           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v144           #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v145           #pm:Landroid/content/pm/IPackageManager;
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v151           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v153           #recovery:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    .end local v156           #serial:Lcom/android/server/SerialService;
    .end local v158           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v166           #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .end local v167           #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .end local v168           #telephonyRegistryLteDc:Lcom/android/server/TelephonyRegistry;
    .end local v169           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v175           #twilight:Lcom/android/server/TwilightService;
    .end local v177           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v179           #usb:Lcom/android/server/usb/UsbService;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .end local v183           #w:Landroid/view/WindowManager;
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v186           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v188           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v190           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v191           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_2c
    const/16 v150, 0x0

    goto/16 :goto_0

    .line 212
    .restart local v150       #reboot:Z
    :cond_2d
    const/16 v149, 0x0

    .restart local v149       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 220
    .end local v149           #reason:Ljava/lang/String;
    .end local v150           #reboot:Z
    .restart local v114       #factoryTestStr:Ljava/lang/String;
    :cond_2e
    invoke-static/range {v114 .. v114}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v113

    goto/16 :goto_2

    .line 316
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v34       #headless:Z
    .restart local v70       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v72       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v81       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v90       #contentService:Lcom/android/server/content/ContentService;
    .restart local v104       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v105       #dock:Lcom/android/server/DockObserver;
    .restart local v113       #factoryTest:I
    .restart local v115       #firstBoot:Z
    .restart local v116       #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v121       #installer:Lcom/android/server/pm/Installer;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v130       #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v131       #mountService:Lcom/android/server/MountService;
    .restart local v133       #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v134       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v136       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v140       #passpointManager:Lcom/mediatek/common/passpoint/IPasspointManager;
    .restart local v145       #pm:Landroid/content/pm/IPackageManager;
    .restart local v151       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v153       #recovery:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    .restart local v156       #serial:Lcom/android/server/SerialService;
    .restart local v158       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v166       #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .restart local v167       #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #telephonyRegistryLteDc:Lcom/android/server/TelephonyRegistry;
    .restart local v175       #twilight:Lcom/android/server/TwilightService;
    .restart local v177       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v179       #usb:Lcom/android/server/usb/UsbService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    .restart local v186       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v188       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v190       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v191       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v109

    .line 317
    .local v109, e:Ljava/lang/Exception;
    :try_start_75
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create message monitor service Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_75} :catch_2

    goto/16 :goto_3

    .line 321
    .end local v109           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v109

    .line 322
    .local v109, e:Ljava/lang/Throwable;
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_76} :catch_2

    goto/16 :goto_4

    .line 336
    .end local v109           #e:Ljava/lang/Throwable;
    .end local v133           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v109

    move-object/from16 v120, v121

    .line 337
    .end local v121           #installer:Lcom/android/server/pm/Installer;
    .local v109, e:Ljava/lang/RuntimeException;
    .restart local v120       #installer:Lcom/android/server/pm/Installer;
    :goto_58
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 359
    .end local v109           #e:Ljava/lang/RuntimeException;
    .restart local v96       #disableBluetooth:Z
    .restart local v97       #disableLocation:Z
    .restart local v98       #disableMedia:Z
    .restart local v99       #disableNetwork:Z
    .restart local v100       #disableNonCoreServices:Z
    .restart local v101       #disableStorage:Z
    .restart local v102       #disableSystemUI:Z
    .restart local v103       #disableTelephony:Z
    :catch_3
    move-exception v109

    .line 360
    .local v109, e:Ljava/lang/Throwable;
    const-string v7, "Failure starting Recovery Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 412
    .end local v104           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v109           #e:Ljava/lang/Throwable;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_2f
    :try_start_77
    const-string v7, "1"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 413
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_77} :catch_6

    .line 414
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 418
    :cond_30
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 421
    :catch_4
    move-exception v110

    .line 423
    .local v110, ex:Ljava/lang/Exception;
    if-eqz v153, :cond_31

    .line 425
    :try_start_78
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_5

    .line 426
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v172, v7, v9

    .line 427
    .local v172, trace:Ljava/lang/StackTraceElement;
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v112

    .line 428
    .local v112, exceptionClassName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v171

    .line 429
    .local v171, throwMethodName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v170

    .line 430
    .local v170, throwClassName:Ljava/lang/String;
    move-object/from16 v0, v153

    move-object/from16 v1, v112

    move-object/from16 v2, v171

    move-object/from16 v3, v170

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->parseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_78} :catch_6

    goto/16 :goto_9

    .line 432
    .end local v112           #exceptionClassName:Ljava/lang/String;
    .end local v170           #throwClassName:Ljava/lang/String;
    .end local v171           #throwMethodName:Ljava/lang/String;
    .end local v172           #trace:Ljava/lang/StackTraceElement;
    :catch_5
    move-exception v111

    .line 433
    .local v111, exc:Ljava/lang/Exception;
    :try_start_79
    const-string v7, "Failure parseException"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_79} :catch_6

    goto/16 :goto_9

    .line 582
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v110           #ex:Ljava/lang/Exception;
    .end local v111           #exc:Ljava/lang/Exception;
    :catch_6
    move-exception v109

    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .line 583
    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .local v109, e:Ljava/lang/RuntimeException;
    :goto_59
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 436
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #e:Ljava/lang/RuntimeException;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v110       #ex:Ljava/lang/Exception;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_31
    :try_start_7a
    new-instance v7, Ljava/lang/RuntimeException;

    move-object/from16 v0, v110

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7a} :catch_6

    .line 448
    .end local v110           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v110

    .line 450
    .restart local v110       #ex:Ljava/lang/Exception;
    if-eqz v153, :cond_32

    .line 452
    :try_start_7b
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_6

    .line 453
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v172, v7, v9

    .line 454
    .restart local v172       #trace:Ljava/lang/StackTraceElement;
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v112

    .line 455
    .restart local v112       #exceptionClassName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v171

    .line 456
    .restart local v171       #throwMethodName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v170

    .line 457
    .restart local v170       #throwClassName:Ljava/lang/String;
    move-object/from16 v0, v153

    move-object/from16 v1, v112

    move-object/from16 v2, v171

    move-object/from16 v3, v170

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->parseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7b} :catch_6

    goto/16 :goto_b

    .line 459
    .end local v112           #exceptionClassName:Ljava/lang/String;
    .end local v170           #throwClassName:Ljava/lang/String;
    .end local v171           #throwMethodName:Ljava/lang/String;
    .end local v172           #trace:Ljava/lang/StackTraceElement;
    :catch_8
    move-exception v111

    .line 460
    .restart local v111       #exc:Ljava/lang/Exception;
    :try_start_7c
    const-string v7, "Failure parseException"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 463
    .end local v111           #exc:Ljava/lang/Exception;
    :cond_32
    new-instance v7, Ljava/lang/RuntimeException;

    move-object/from16 v0, v110

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 483
    .end local v110           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v109

    .line 484
    .local v109, e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 493
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v109

    .line 494
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7c} :catch_6

    goto/16 :goto_d

    .line 500
    .end local v109           #e:Ljava/lang/Throwable;
    :cond_33
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 540
    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #battery:Lcom/android/server/BatteryService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v122           #lights:Lcom/android/server/LightsService;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :cond_34
    const/16 v22, 0x0

    goto/16 :goto_f

    :cond_35
    const/16 v23, 0x0

    goto/16 :goto_10

    .line 559
    :cond_36
    const/4 v7, 0x1

    move/from16 v0, v113

    if-ne v0, v7, :cond_37

    .line 560
    :try_start_7d
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 582
    :catch_b
    move-exception v109

    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .line 561
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :cond_37
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 563
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 564
    :cond_38
    if-eqz v96, :cond_39

    .line 565
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 570
    :cond_39
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v82, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_7d} :catch_b

    .line 572
    .end local v81           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v82, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_7e
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 574
    invoke-static {}, Landroid/bluetooth/ConfigHelper;->isAdvanceSettingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 575
    new-instance v71, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_7e} :catch_73

    .line 576
    .end local v70           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v71, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_7f
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_7f} :catch_74

    move-object/from16 v70, v71

    .end local v71           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v70       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v81       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_11

    .line 613
    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v77       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v107       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v117       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v123       #location:Lcom/android/server/LocationManagerService;
    .restart local v125       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v127       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v138       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v141       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v144       #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v147       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v160       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v169       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    .restart local v184       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_c
    move-exception v109

    .line 614
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 621
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v109

    .line 622
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 629
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v109

    .line 630
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 635
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v109

    .line 636
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 645
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v110

    .line 647
    .restart local v110       #ex:Ljava/lang/Exception;
    if-eqz v153, :cond_3a

    .line 649
    :try_start_80
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_8

    .line 650
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v172, v7, v9

    .line 651
    .restart local v172       #trace:Ljava/lang/StackTraceElement;
    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v112

    .line 652
    .restart local v112       #exceptionClassName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v171

    .line 653
    .restart local v171       #throwMethodName:Ljava/lang/String;
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v170

    .line 654
    .restart local v170       #throwClassName:Ljava/lang/String;
    move-object/from16 v0, v153

    move-object/from16 v1, v112

    move-object/from16 v2, v171

    move-object/from16 v3, v170

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/common/recovery/IRecoveryManagerService;->parseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_11

    goto/16 :goto_17

    .line 656
    .end local v112           #exceptionClassName:Ljava/lang/String;
    .end local v170           #throwClassName:Ljava/lang/String;
    .end local v171           #throwMethodName:Ljava/lang/String;
    .end local v172           #trace:Ljava/lang/StackTraceElement;
    :catch_11
    move-exception v111

    .line 657
    .restart local v111       #exc:Ljava/lang/Exception;
    const-string v7, "Failure parseException"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 660
    .end local v111           #exc:Ljava/lang/Exception;
    :cond_3a
    new-instance v7, Ljava/lang/RuntimeException;

    move-object/from16 v0, v110

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 676
    .end local v110           #ex:Ljava/lang/Exception;
    :catch_12
    move-exception v109

    .line 677
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 686
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v109

    .line 687
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 694
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v109

    .line 695
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 704
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v109

    .line 705
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 714
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v109

    .line 715
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 724
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v109

    .line 725
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 734
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v109

    .line 735
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 744
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v109

    .line 745
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 754
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v109

    move-object/from16 v25, v134

    .line 755
    .end local v134           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 762
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v109

    .line 763
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 770
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v109

    .line 771
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 784
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v109

    .line 785
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 793
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v109

    .line 794
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 803
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v109

    .line 804
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 820
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v109

    .line 821
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 827
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v109

    .line 828
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 836
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v109

    .line 837
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 844
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v109

    .line 845
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 853
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v109

    .line 854
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 861
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v109

    .line 862
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 871
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v109

    .line 872
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 883
    .end local v109           #e:Ljava/lang/Throwable;
    .restart local v154       #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_27
    move-exception v109

    .line 884
    .local v109, e:Ljava/lang/Exception;
    :try_start_81
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_28

    goto/16 :goto_2d

    .line 891
    .end local v109           #e:Ljava/lang/Exception;
    .end local v154           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_28
    move-exception v109

    .line 892
    .local v109, e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 900
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v109

    .line 901
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 912
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v109

    .line 913
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 921
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v109

    .line 922
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 934
    .end local v109           #e:Ljava/lang/Throwable;
    .restart local v79       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_2c
    move-exception v109

    .line 935
    .local v109, e:Ljava/lang/Exception;
    :try_start_82
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_2d

    goto/16 :goto_32

    .line 942
    .end local v109           #e:Ljava/lang/Exception;
    :catch_2d
    move-exception v109

    .line 943
    .local v109, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 955
    .end local v79           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v109           #e:Ljava/lang/Throwable;
    .restart local v155       #sensorHubService:Lcom/mediatek/common/sensorhub/ISensorHubService;
    :catch_2e
    move-exception v109

    .line 956
    .local v109, e:Ljava/lang/Exception;
    :try_start_83
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SystemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_2f

    goto/16 :goto_34

    .line 962
    .end local v109           #e:Ljava/lang/Exception;
    :catch_2f
    move-exception v109

    .line 963
    .local v109, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting SensorHub Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 973
    .end local v109           #e:Ljava/lang/Throwable;
    .end local v155           #sensorHubService:Lcom/mediatek/common/sensorhub/ISensorHubService;
    :catch_30
    move-exception v109

    .line 974
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 984
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v109

    .line 985
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 995
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v109

    .line 996
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1004
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v109

    .line 1005
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 1012
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v109

    .line 1013
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1020
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v109

    .line 1021
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1029
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v109

    .line 1030
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 1037
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v109

    .line 1038
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1044
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v109

    .line 1045
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1054
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v109

    .line 1055
    .local v109, e:Ljava/lang/Exception;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAIL starting PerfService Manager"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v109

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1062
    .end local v109           #e:Ljava/lang/Exception;
    .restart local v143       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :catch_3a
    move-exception v109

    .line 1063
    .restart local v109       #e:Ljava/lang/Exception;
    :try_start_84
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perfservice systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_3b

    goto/16 :goto_40

    .line 1070
    .end local v109           #e:Ljava/lang/Exception;
    :catch_3b
    move-exception v109

    .line 1071
    .local v109, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "perfservice Failure starting PerfService"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 1079
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v109

    .line 1080
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1091
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v109

    .line 1092
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1099
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v109

    .line 1100
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1109
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v109

    .line 1110
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1118
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v109

    .line 1119
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1130
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v109

    .line 1131
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1140
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v109

    .line 1141
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_6f
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1148
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v109

    .line 1149
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1156
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_44
    move-exception v109

    .line 1157
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_70
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1165
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_45
    move-exception v109

    .line 1166
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_71
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1185
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_46
    move-exception v109

    .line 1186
    .restart local v109       #e:Ljava/lang/Throwable;
    :goto_72
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v109

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 1227
    .end local v109           #e:Ljava/lang/Throwable;
    .end local v143           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v48       #safeMode:Z
    :cond_3b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_4e

    .line 1234
    :catch_47
    move-exception v109

    .line 1235
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1241
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_48
    move-exception v109

    .line 1242
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1249
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_49
    move-exception v109

    .line 1250
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1257
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_4a
    move-exception v109

    .line 1258
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1264
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_4b
    move-exception v109

    .line 1265
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1283
    .end local v109           #e:Ljava/lang/Throwable;
    .restart local v85       #config:Landroid/content/res/Configuration;
    .restart local v129       #metrics:Landroid/util/DisplayMetrics;
    .restart local v183       #w:Landroid/view/WindowManager;
    :catch_4c
    move-exception v109

    .line 1284
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1289
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_4d
    move-exception v109

    .line 1290
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1295
    .end local v109           #e:Ljava/lang/Throwable;
    :catch_4e
    move-exception v109

    .line 1296
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 1561
    .end local v109           #e:Ljava/lang/Throwable;
    .restart local v33       #momF:Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v35       #contextF:Landroid/content/Context;
    .restart local v36       #mountServiceF:Lcom/android/server/MountService;
    .restart local v37       #batteryF:Lcom/android/server/BatteryService;
    .restart local v38       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v39       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v40       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v42       #dockF:Lcom/android/server/DockObserver;
    .restart local v43       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v44       #twilightF:Lcom/android/server/TwilightService;
    .restart local v45       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v46       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v47       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v49       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v50       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v51       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v52       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v53       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #atlasF:Lcom/android/server/AssetAtlasService;
    .restart local v59       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v60       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #telephonyRegistryF3:Ljava/lang/Object;
    .restart local v63       #telephonyRegistryF4:Ljava/lang/Object;
    .restart local v64       #telephonyRegistryLteDcF:Ljava/lang/Object;
    .restart local v65       #thermalF:Ljava/lang/Object;
    .restart local v66       #perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v67       #printManagerF:Lcom/android/server/print/PrintManagerService;
    .restart local v68       #mediaRouterF:Lcom/android/server/media/MediaRouterService;
    .restart local v69       #recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    :catch_4f
    move-exception v109

    .line 1562
    .restart local v109       #e:Ljava/lang/Throwable;
    const-string v7, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 443
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v33           #momF:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v35           #contextF:Landroid/content/Context;
    .end local v36           #mountServiceF:Lcom/android/server/MountService;
    .end local v37           #batteryF:Lcom/android/server/BatteryService;
    .end local v38           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v39           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v40           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v42           #dockF:Lcom/android/server/DockObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #atlasF:Lcom/android/server/AssetAtlasService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v63           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v64           #telephonyRegistryLteDcF:Ljava/lang/Object;
    .end local v65           #thermalF:Ljava/lang/Object;
    .end local v66           #perfServiceF:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v67           #printManagerF:Lcom/android/server/print/PrintManagerService;
    .end local v68           #mediaRouterF:Lcom/android/server/media/MediaRouterService;
    .end local v69           #recoveryF:Lcom/mediatek/common/recovery/IRecoveryManagerService;
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v85           #config:Landroid/content/res/Configuration;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v109           #e:Ljava/lang/Throwable;
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v129           #metrics:Landroid/util/DisplayMetrics;
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .end local v141           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v144           #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v169           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v183           #w:Landroid/view/WindowManager;
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v134       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_50
    move-exception v7

    goto/16 :goto_a

    .line 1185
    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #battery:Lcom/android/server/BatteryService;
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v122           #lights:Lcom/android/server/LightsService;
    .end local v134           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v77       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v107       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v117       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v123       #location:Lcom/android/server/LocationManagerService;
    .restart local v125       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v127       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v138       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v142       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v143       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v144       #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v147       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v160       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v169       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v184       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_51
    move-exception v109

    move-object/from16 v141, v142

    .end local v142           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v141       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_72

    .line 1165
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v128       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    :catch_52
    move-exception v109

    move-object/from16 v127, v128

    .end local v128           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v127       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_71

    .line 1156
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v148       #printManager:Lcom/android/server/print/PrintManagerService;
    :catch_53
    move-exception v109

    move-object/from16 v147, v148

    .end local v148           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v147       #printManager:Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_70

    .line 1140
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v78       #atlas:Lcom/android/server/AssetAtlasService;
    :catch_54
    move-exception v109

    move-object/from16 v77, v78

    .end local v78           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v77       #atlas:Lcom/android/server/AssetAtlasService;
    goto/16 :goto_6f

    .line 1130
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v108       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_55
    move-exception v109

    move-object/from16 v107, v108

    .end local v108           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v107       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_6e

    .line 1109
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_56
    move-exception v109

    move-object/from16 v83, v84

    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_6d

    .line 1037
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v143           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v76       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_57
    move-exception v109

    move-object/from16 v75, v76

    .end local v76           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_6c

    .line 1004
    .end local v156           #serial:Lcom/android/server/SerialService;
    .restart local v157       #serial:Lcom/android/server/SerialService;
    :catch_58
    move-exception v109

    move-object/from16 v156, v157

    .end local v157           #serial:Lcom/android/server/SerialService;
    .restart local v156       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_6b

    .line 995
    .end local v179           #usb:Lcom/android/server/usb/UsbService;
    .restart local v180       #usb:Lcom/android/server/usb/UsbService;
    :catch_59
    move-exception v109

    move-object/from16 v179, v180

    .end local v180           #usb:Lcom/android/server/usb/UsbService;
    .restart local v179       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_6a

    .line 912
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v185       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5a
    move-exception v109

    move-object/from16 v184, v185

    .end local v185           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v184       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_69

    .line 861
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v92       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_5b
    move-exception v109

    move-object/from16 v91, v92

    .end local v92           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_68

    .line 853
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .restart local v124       #location:Lcom/android/server/LocationManagerService;
    :catch_5c
    move-exception v109

    move-object/from16 v123, v124

    .end local v124           #location:Lcom/android/server/LocationManagerService;
    .restart local v123       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_67

    .line 836
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v139       #notification:Lcom/android/server/NotificationManagerService;
    :catch_5d
    move-exception v109

    move-object/from16 v138, v139

    .end local v139           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v138       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_66

    .line 784
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_5e
    move-exception v109

    move-object/from16 v86, v87

    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_65

    .line 770
    .end local v186           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v187       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_5f
    move-exception v109

    move-object/from16 v186, v187

    .end local v187           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v186       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_64

    .line 762
    .end local v188           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v189       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_60
    move-exception v109

    move-object/from16 v188, v189

    .end local v189           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v188       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_63

    .line 754
    :catch_61
    move-exception v109

    goto/16 :goto_62

    .line 744
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v134       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v135       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_62
    move-exception v109

    move-object/from16 v29, v135

    .end local v135           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_61

    .line 734
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v174       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_63
    move-exception v109

    move-object/from16 v173, v174

    .end local v174           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v173       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_60

    .line 704
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v161       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_64
    move-exception v109

    move-object/from16 v160, v161

    .end local v161           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v160       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_5f

    .line 694
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_65
    move-exception v109

    move-object/from16 v94, v95

    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_5e

    .line 686
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v126       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_66
    move-exception v109

    move-object/from16 v125, v126

    .end local v126           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v125       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_5d

    .line 676
    .end local v131           #mountService:Lcom/android/server/MountService;
    .restart local v132       #mountService:Lcom/android/server/MountService;
    :catch_67
    move-exception v109

    move-object/from16 v131, v132

    .end local v132           #mountService:Lcom/android/server/MountService;
    .restart local v131       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_5c

    .line 644
    :catch_68
    move-exception v7

    goto/16 :goto_17

    .line 613
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v118       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_69
    move-exception v109

    move-object/from16 v117, v118

    .end local v118           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v117       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_5b

    .line 582
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .end local v141           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v144           #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v169           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v104       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    :catch_6a
    move-exception v109

    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v11, v104

    .end local v104           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v122

    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_59

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    :catch_6b
    move-exception v109

    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_59

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_6c
    move-exception v109

    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_59

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v72           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6d
    move-exception v109

    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v122

    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v72, v73

    .end local v73           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v72       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_59

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v109

    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_59

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6f
    move-exception v109

    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    goto/16 :goto_59

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :catch_70
    move-exception v109

    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :catch_71
    move-exception v109

    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v74

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :catch_72
    move-exception v109

    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v119

    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .end local v81           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v82       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :catch_73
    move-exception v109

    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v81, v82

    .end local v82           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v81       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .end local v70           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v81           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v82       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :catch_74
    move-exception v109

    move-object/from16 v88, v89

    .end local v89           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v88       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v164, v165

    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v70, v71

    .end local v71           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v70       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v81       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v181, v182

    .end local v182           #vibrator:Lcom/android/server/VibratorService;
    .restart local v181       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_59

    .line 483
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v72           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v74       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v80       #battery:Lcom/android/server/BatteryService;
    .restart local v119       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v122       #lights:Lcom/android/server/LightsService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_75
    move-exception v109

    move-object/from16 v72, v73

    .end local v73           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v72       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_5a

    .line 336
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v96           #disableBluetooth:Z
    .end local v97           #disableLocation:Z
    .end local v98           #disableMedia:Z
    .end local v99           #disableNetwork:Z
    .end local v100           #disableNonCoreServices:Z
    .end local v101           #disableStorage:Z
    .end local v102           #disableSystemUI:Z
    .end local v103           #disableTelephony:Z
    .end local v163           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v165           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v104       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v162       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v164       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_76
    move-exception v109

    goto/16 :goto_58

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v120           #installer:Lcom/android/server/pm/Installer;
    .restart local v121       #installer:Lcom/android/server/pm/Installer;
    .restart local v146       #power:Lcom/android/server/power/PowerManagerService;
    :catch_77
    move-exception v109

    move-object/from16 v4, v146

    .end local v146           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v120, v121

    .end local v121           #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_58

    .end local v74           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #battery:Lcom/android/server/BatteryService;
    .end local v104           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v119           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v122           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v77       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v96       #disableBluetooth:Z
    .restart local v97       #disableLocation:Z
    .restart local v98       #disableMedia:Z
    .restart local v99       #disableNetwork:Z
    .restart local v100       #disableNonCoreServices:Z
    .restart local v101       #disableStorage:Z
    .restart local v102       #disableSystemUI:Z
    .restart local v103       #disableTelephony:Z
    .restart local v107       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v117       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v123       #location:Lcom/android/server/LocationManagerService;
    .restart local v125       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v127       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v138       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v141       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v144       #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .restart local v147       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v160       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v169       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v173       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v184       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_3c
    move-object/from16 v25, v134

    .end local v134           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_24

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3d
    move-object/from16 v25, v134

    .end local v134           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4d

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v81           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v88           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v107           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v117           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v123           #location:Lcom/android/server/LocationManagerService;
    .end local v125           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v127           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v138           #notification:Lcom/android/server/NotificationManagerService;
    .end local v141           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v144           #perfServiceMgr:Lcom/mediatek/common/perfservice/IPerfServiceManager;
    .end local v147           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v160           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v162           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v164           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v169           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v173           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v181           #vibrator:Lcom/android/server/VibratorService;
    .end local v184           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v82       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v89       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v134       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v163       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v182       #vibrator:Lcom/android/server/VibratorService;
    :cond_3e
    move-object/from16 v81, v82

    .end local v82           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v81       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_11
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 165
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return-void
.end method
