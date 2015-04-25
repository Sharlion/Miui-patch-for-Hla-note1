.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 6042
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6042
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6044
    if-nez p2, :cond_0

    .line 6133
    :goto_0
    return-void

    .line 6045
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 6046
    .local v1, action:Ljava/lang/String;
    const-string v11, "ConnectivityService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received intent ==> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 6048
    :try_start_0
    const-string v11, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 6050
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "gprs_connection_setting"

    const/4 v14, -0x4

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .line 6051
    .local v7, preSlotId:I
    const-string v11, "simid"

    const-wide/16 v13, -0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 6053
    .local v9, simId:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, -0x5

    cmp-long v11, v13, v15

    if-nez v11, :cond_3

    .line 6054
    :cond_1
    const/4 v10, -0x1

    .line 6060
    .local v10, slotId:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "gprs_connection_setting"

    add-int/lit8 v14, v10, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6061
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getIdBySlot(I)J
    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 6062
    .local v2, changeSimId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "gprs_connection_sim_setting"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v11, v13, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6064
    const-string v11, "persist.ril.gprs.setting"

    add-int/lit8 v13, v10, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6065
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set ril.gprs.setting: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v13, v10, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6067
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 6068
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "mobile_data"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6070
    const-string v11, "ril.mobile.data"

    const-string v13, "1"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6077
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v11, v7, v10}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;II)V

    .line 6132
    .end local v2           #changeSimId:Ljava/lang/Long;
    .end local v7           #preSlotId:I
    .end local v9           #simId:Ljava/lang/Long;
    .end local v10           #slotId:I
    :cond_2
    :goto_3
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 6056
    .restart local v7       #preSlotId:I
    .restart local v9       #simId:Ljava/lang/Long;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    #calls: Lcom/android/server/ConnectivityService;->getSlotById(J)I
    invoke-static {v11, v13, v14}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;J)I

    move-result v10

    .restart local v10       #slotId:I
    goto/16 :goto_1

    .line 6072
    .restart local v2       #changeSimId:Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "mobile_data"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6074
    const-string v11, "ril.mobile.data"

    const-string v13, "0"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6091
    .end local v2           #changeSimId:Ljava/lang/Long;
    .end local v7           #preSlotId:I
    .end local v9           #simId:Ljava/lang/Long;
    .end local v10           #slotId:I
    :cond_5
    const-string v11, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 6092
    const-string v11, "tethering_isconnected"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 6093
    .local v5, isConnected:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11, v5}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto :goto_3

    .line 6094
    .end local v5           #isConnected:Z
    :cond_6
    const-string v11, "android.intent.action.ACTION_ENABLE_NSIOT_TESTING"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 6096
    const-string v11, "nsiot_enabled"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6097
    .local v3, enabled:Z
    const-string v11, "nsiot_ip_addr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6098
    .local v4, ipAddr:Ljava/lang/String;
    const-string v11, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NS-IOT]Receieve ACTION_ENABLE_NSIOT_TESTING:nsiot_enabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "nsiot_ip_addr"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->enableUdpForwardingForUsb(ZLjava/lang/String;)Z
    invoke-static {v11, v3, v4}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;ZLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v3, :cond_7

    .line 6101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mNeedEnableUdpForwarding:Z
    invoke-static {v11, v13}, Lcom/android/server/ConnectivityService;->access$6502(Lcom/android/server/ConnectivityService;Z)Z

    goto/16 :goto_3

    .line 6103
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mNeedEnableUdpForwarding:Z
    invoke-static {v11, v13}, Lcom/android/server/ConnectivityService;->access$6502(Lcom/android/server/ConnectivityService;Z)Z

    goto/16 :goto_3

    .line 6105
    .end local v3           #enabled:Z
    .end local v4           #ipAddr:Ljava/lang/String;
    :cond_8
    const-string v11, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 6106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNeedEnableUdpForwarding:Z
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v13, 0x1

    const/4 v14, 0x0

    #calls: Lcom/android/server/ConnectivityService;->enableUdpForwardingForUsb(ZLjava/lang/String;)Z
    invoke-static {v11, v13, v14}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;ZLjava/lang/String;)Z

    goto/16 :goto_3

    .line 6109
    :cond_9
    const-string v11, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 6110
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 6111
    .local v6, obtainBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_b

    .line 6113
    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v8

    .line 6114
    .local v8, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-nez v11, :cond_2

    .line 6115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v11, 0x1

    :goto_4
    const/4 v14, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v13, v11, v14}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;ZZ)V

    goto/16 :goto_3

    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 6120
    .end local v8           #serviceState:Landroid/telephony/ServiceState;
    :cond_b
    const-string v11, "get bundle error!!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6122
    .end local v6           #obtainBundle:Landroid/os/Bundle;
    :cond_c
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x1

    :goto_5
    const/4 v14, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v13, v11, v14}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_5
.end method
