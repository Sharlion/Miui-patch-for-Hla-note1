.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 719
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 720
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 721
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 722
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 725
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 726
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "poor link"

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 728
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 815
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 732
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 807
    :goto_0
    return v5

    .line 734
    :sswitch_0
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 735
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 736
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    :cond_0
    :goto_1
    move v5, v6

    .line 807
    goto :goto_0

    .line 741
    :sswitch_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 745
    :sswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 746
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v8, 0x25014

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 747
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v9, 0x2100b

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v9, v10, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 753
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 754
    .local v0, info:Landroid/net/wifi/RssiPacketCountInfo;
    iget v2, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 755
    .local v2, rssi:I
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 756
    .local v1, linkspeed:I
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v8, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4402(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 757
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v7, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 759
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch RSSI succeed, rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 761
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v3, v7, v9

    .line 762
    .local v3, time:J
    cmp-long v7, v3, v11

    if-gtz v7, :cond_3

    .line 764
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Max avoid time elapsed"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 765
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 767
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5

    .line 768
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "Roaming case with privious connected- always send true at first"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 769
    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v7, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 770
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 771
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "isRoaming = false"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_8

    .line 774
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 775
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Roaming case with privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 782
    :cond_6
    :goto_2
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v2, v7, :cond_9

    .line 783
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4004(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 785
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Good link detected, rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 786
    :cond_7
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v5, v11, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 787
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 778
    :cond_8
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 790
    :cond_9
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v7, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 791
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link is still poor, time left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 797
    .end local v0           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1           #linkspeed:I
    .end local v2           #rssi:I
    .end local v3           #time:J
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "RSSI_FETCH_FAILED"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    :sswitch_5
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 732
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
