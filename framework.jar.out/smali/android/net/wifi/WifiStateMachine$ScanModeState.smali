.class Landroid/net/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4546
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4550
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$22800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4551
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    .line 4552
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4555
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 4594
    :goto_0
    return v0

    .line 4557
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_2

    .line 4559
    iget v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v2, v3, :cond_0

    .line 4560
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4563
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 4564
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20083

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4569
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotknotConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 4570
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v2, "stay disconnect because hotknot is on .."

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$22900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4571
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mStopSupplicantScan:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4572
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 4578
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$13402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4579
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$23000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_3
    move v0, v1

    .line 4594
    goto :goto_0

    .line 4566
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_1

    .line 4574
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mStopSupplicantScan:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$8702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4575
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto :goto_2

    :cond_2
    move v0, v1

    .line 4582
    goto :goto_0

    .line 4588
    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/WorkSource;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v2, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 4589
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_3

    .line 4555
    nop

    :pswitch_data_0
    .packed-switch 0x20047
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
