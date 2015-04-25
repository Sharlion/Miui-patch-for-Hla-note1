.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1673
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientIp:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1674
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "mClientIp clear"

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientIp:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1676
    monitor-exit v1

    .line 1678
    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 25
    .parameter "message"

    .prologue
    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 1985
    const/16 v19, 0x0

    .line 1987
    :goto_0
    return v19

    .line 1685
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " sending connect:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1687
    .local v4, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dropping connect requeset "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22008

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1987
    .end local v4           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_1
    :sswitch_1
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1693
    .restart local v4       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1703
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22009

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_1

    .line 1700
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1709
    .end local v4           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22006

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1716
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22005

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1721
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1722
    .restart local v4       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dropping GO neg request "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1726
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$9002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1732
    .end local v4           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1733
    .local v10, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    .line 1735
    .local v15, owner:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v15, :cond_5

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "Ignored invitation from null owner"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1740
    :cond_5
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1741
    .restart local v4       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dropping invitation request "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1747
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    iget-object v0, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1752
    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1761
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$9002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1754
    :cond_8
    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1756
    :cond_9
    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1774
    .end local v4           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v10           #group:Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v15           #owner:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1775
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1776
    .local v13, netId:I
    const/16 v17, 0x0

    .line 1777
    .local v17, ret:Z
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$5700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v13

    .line 1780
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_a

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v17

    .line 1789
    :goto_4
    if-eqz v17, :cond_c

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x2200f

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1783
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v17

    goto :goto_4

    .line 1786
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v17

    goto :goto_4

    .line 1793
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x2200e

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1799
    .end local v13           #netId:I
    .end local v17           #ret:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " group started"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v19

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1808
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unexpected group creation, remove "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1834
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1835
    .local v16, p2pChannels:Landroid/os/Bundle;
    const-string v19, "lc"

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1836
    .local v11, lc:I
    const-string/jumbo v19, "oc"

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1837
    .local v14, oc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " set listen and operating channel"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v14}, Landroid/net/wifi/WifiNative;->p2pSetChannel(II)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22049

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1841
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22048

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1846
    .end local v11           #lc:I
    .end local v14           #oc:I
    .end local v16           #p2pChannels:Landroid/os/Bundle;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x2205c

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    goto/16 :goto_1

    .line 1849
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$3302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$2702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x2205d

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    .line 1853
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9800()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$9802(I)I

    goto/16 :goto_1

    .line 1857
    :sswitch_a
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$9900(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pBeamPlusGO(I)V

    .line 1861
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1867
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAST_CONNECT_AS_GC, mFoundGo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService;->access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " inMpeers="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 1873
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$5802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$5902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x2205e

    const-wide/16 v21, 0xbb8

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x23009

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9804()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7530

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "Send FAST_CONNECT_FIND_GO_TIMED_OUT message"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1881
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v7

    .line 1882
    .local v7, gc2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Fast connect join Group, is peer GO? "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isGroupOwner(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService;->access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1896
    .end local v7           #gc2:I
    :sswitch_c
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9800()I

    move-result v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "FAST CONNECT FIND GO timed out"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure(I)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$5802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$5902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_1

    .line 1908
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1909
    .local v5, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "P2P_NFC_DEVICE_FOUND_EVENT, device:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mListening:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mReceivedHR:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$5700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const/16 v20, 0x78

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pListen(I)Z

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1922
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 1923
    iget v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->oobRoleIndication:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "No match role!"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1925
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pNfcConnectWithOob(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1932
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->goIface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "GO is in device list!"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1934
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v8}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1935
    .local v8, goConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->goIface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1936
    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22007

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1941
    .end local v8           #goConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "GO is not in device list! Try to find!"

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->goIface:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/32 v23, 0x1d4c0

    add-long v21, v21, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v23, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClearTmpGoIntent:Landroid/app/PendingIntent;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v19 .. v23}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22001

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1948
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pNfcConnectWithOob(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1958
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$1002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClearListenFlagIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingPhase:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mHfcConnectingDeviceName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1969
    .end local v5           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1970
    .local v9, goInvitedStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "P2P_NFC_GO_INVITED_EVENT, goInvitedStr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1971
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1972
    .local v18, tokens:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1973
    const/16 v19, 0x1

    aget-object v19, v18, v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1974
    .local v12, nameValue:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1975
    const/16 v19, 0x1

    aget-object v6, v12, v19

    .line 1976
    .local v6, deviceAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/net/wifi/WifiNative;->p2pNfcConnectWithOob(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1683
    :sswitch_data_0
    .sparse-switch
        0x22004 -> :sswitch_2
        0x22007 -> :sswitch_0
        0x2200d -> :sswitch_5
        0x22047 -> :sswitch_7
        0x2205a -> :sswitch_8
        0x2205b -> :sswitch_9
        0x2205c -> :sswitch_a
        0x2205d -> :sswitch_b
        0x23009 -> :sswitch_c
        0x24017 -> :sswitch_3
        0x2401d -> :sswitch_6
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
        0x24038 -> :sswitch_d
        0x2403b -> :sswitch_e
    .end sparse-switch

    .line 1923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
