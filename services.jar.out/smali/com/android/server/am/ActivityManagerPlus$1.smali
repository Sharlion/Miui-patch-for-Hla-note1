.class Lcom/android/server/am/ActivityManagerPlus$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPlus;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 280
    const-string v12, "ActivityManagerPlus"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v12, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 285
    .local v2, bundle:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 432
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v2       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v12, "package_name"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, pkgName:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 290
    const-string v12, "enabled"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 291
    .local v4, enabled:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 292
    .local v3, count:I
    add-int/lit8 v5, v3, -0x1

    .line 293
    .local v5, i:I
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 295
    .local v1, alreadyInList:Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    .line 296
    :goto_1
    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 297
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 299
    :cond_2
    if-gez v5, :cond_4

    .line 300
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 305
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_5

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_4
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 307
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 310
    .end local v1           #alreadyInList:Ljava/lang/Boolean;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #count:I
    .end local v4           #enabled:Ljava/lang/Boolean;
    .end local v5           #i:I
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v12, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 311
    const-string v12, "ActivityManagerPlus"

    const-string v13, "ipo PREBOOT_IPO"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v10, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v10}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 313
    .local v10, stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    .line 317
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcessListSize()I

    move-result v12

    if-eqz v12, :cond_7

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/ActivityManagerPlus$1$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lcom/android/server/am/ActivityManagerPlus$1$1;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #calls: Lcom/android/server/am/ActivityManagerPlus;->removeAllTasks()V
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)V

    .line 360
    const-string v12, "ActivityManagerPlus"

    const-string v13, "finished"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs()V

    .line 365
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_4
    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z
    invoke-static {v13, v12}, Lcom/android/server/am/ActivityManagerPlus;->access$402(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$400(Lcom/android/server/am/ActivityManagerPlus;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 371
    const-string v12, "ActivityManagerPlus"

    const-string v13, "ActivityManagerPlus turn on flight mode for powerOffAlarm"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v12, "persist.sys.ams.recover"

    const-string v13, "true"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 357
    :cond_7
    const-string v12, "ActivityManagerPlus"

    const-string v13, "prebootKillProcess list empty, don\'t need to perform kill"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 367
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 377
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    goto/16 :goto_0

    .line 379
    .end local v10           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_a
    const-string v12, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 380
    const-string v12, "ActivityManagerPlus"

    const-string v13, "ipo BOOT_IPO"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 384
    const-string v12, "ActivityManagerPlus"

    const-string v13, "power off alarm enabled"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/ActivityManagerPlus$1$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/am/ActivityManagerPlus$1$2;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 391
    :cond_b
    new-instance v10, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v10}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 393
    .restart local v10       #stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 394
    const-string v12, "ro.crypto.state"

    const-string v13, "unsupported"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "encrypted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 395
    const-string v12, "ActivityManagerPlus"

    const-string v13, "ipo BOOT_IPO: removeIPOWin"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    .line 398
    const-string v12, "ActivityManagerPlus"

    const-string v13, "PMS wakeup"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "power"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 401
    .local v8, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    .line 404
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    .line 405
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 409
    .end local v8           #pm:Landroid/os/PowerManager;
    .end local v10           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_c
    const-string v12, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #calls: Lcom/android/server/am/ActivityManagerPlus;->removeAllTasks()V
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v13, 0x1

    const-string v14, "IPO Bootup Start"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 416
    const-string v12, "ActivityManagerPlus"

    const-string v13, "handling SHUTDOWN_IPO finished"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :cond_d
    const-string v12, "android.intent.action.black.mode"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 419
    const-string v12, "_black_mode"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 420
    .local v6, mode:Z
    const/4 v12, 0x1

    if-ne v6, v12, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 423
    .end local v6           #mode:Z
    :cond_e
    const-string v12, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 424
    const-string v12, "android.media.EXTRA_RINGER_MODE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 425
    .local v9, ringerMode:I
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, state:Ljava/lang/String;
    const-string v12, "persist.sys.mute.state"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    .end local v9           #ringerMode:I
    .end local v11           #state:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$300(Lcom/android/server/am/ActivityManagerPlus;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "android.intent.action.normal.boot"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 428
    new-instance v10, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v10}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 429
    .restart local v10       #stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    goto/16 :goto_0
.end method
