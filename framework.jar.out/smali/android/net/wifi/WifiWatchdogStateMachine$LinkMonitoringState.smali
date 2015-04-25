.class Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mLastFailedCount:J

.field private mLastMultipleRetryCount:J

.field private mLastRetryCount:J

.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 901
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 902
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 903
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v3, 0x3fe0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 904
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 906
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 907
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mCm:Landroid/net/ConnectivityManager;

    .line 910
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "good link"

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 912
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1117
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1118
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 1119
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 47
    .parameter "msg"

    .prologue
    .line 916
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    sparse-switch v41, :sswitch_data_0

    .line 1108
    const/16 v41, 0x0

    .line 1110
    :goto_0
    return v41

    .line 918
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v42

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v41

    const/16 v42, 0x4

    move/from16 v0, v41

    move/from16 v1, v42

    if-gt v0, v1, :cond_1

    .line 1110
    :cond_0
    :goto_1
    const/16 v41, 0x1

    goto :goto_0

    .line 923
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 928
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 932
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 934
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v41

    const v42, 0x25014

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v44

    const/16 v45, 0x0

    invoke-virtual/range {v42 .. v45}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    const-wide/16 v43, 0x3e8

    invoke-virtual/range {v41 .. v44}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 942
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/RssiPacketCountInfo;

    .line 943
    .local v18, info:Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v36, v0

    .line 944
    .local v36, rssi:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    move/from16 v41, v0

    add-int v41, v41, v36

    div-int/lit8 v26, v41, 0x2

    .line 945
    .local v26, mrssi:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v39, v0

    .line 946
    .local v39, txbad:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v40, v0

    .line 949
    .local v40, txgood:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    move-wide/from16 v30, v0

    .line 950
    .local v30, rFailedCount:J
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    move-wide/from16 v34, v0

    .line 951
    .local v34, rRetryCount:J
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    move-wide/from16 v32, v0

    .line 952
    .local v32, rMultipleRetryCount:J
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    move/from16 v21, v0

    .line 953
    .local v21, linkspeed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    move/from16 v42, v0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4402(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v36

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    .line 966
    .local v27, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v41

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$7500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v41

    sub-long v41, v27, v41

    const-wide/16 v43, 0x7d0

    cmp-long v41, v41, v43

    if-gez v41, :cond_7

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    move/from16 v41, v0

    sub-int v11, v39, v41

    .line 970
    .local v11, dbad:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    move/from16 v41, v0

    sub-int v13, v40, v41

    .line 971
    .local v13, dgood:I
    add-int v14, v11, v13

    .line 974
    .local v14, dtotal:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastFailedCount:J

    move-wide/from16 v41, v0

    sub-long v4, v30, v41

    .line 975
    .local v4, dFailCount:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRetryCount:J

    move-wide/from16 v41, v0

    sub-long v8, v34, v41

    .line 976
    .local v8, dRetryCount:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastMultipleRetryCount:J

    move-wide/from16 v41, v0

    sub-long v6, v32, v41

    .line 979
    .local v6, dMultipleRetryCount:J
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v41

    if-eqz v41, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Fetch RSSI succeed, rssi="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " mrssi="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " txbad="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " txgood="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " linkspeed="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " dbad="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " dRetryCount="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " dMultipleRetryCount="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 984
    :cond_3
    if-lez v14, :cond_7

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWeightAlgo:Z

    move/from16 v41, v0

    if-nez v41, :cond_8

    .line 988
    int-to-double v0, v11

    move-wide/from16 v41, v0

    int-to-double v0, v14

    move-wide/from16 v43, v0

    div-double v22, v41, v43

    .line 990
    .local v22, loss:D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 992
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v41

    if-eqz v41, :cond_4

    .line 993
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v41, "#.##"

    move-object/from16 v0, v41

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 994
    .local v12, df:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Incremental loss="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " Current loss="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v43

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v43

    const-wide/high16 v45, 0x4059

    mul-double v43, v43, v45

    move-wide/from16 v0, v43

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "% volume="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v43

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7800(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v43

    move-wide/from16 v0, v43

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 999
    .end local v12           #df:Ljava/text/DecimalFormat;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1034
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v41

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v43

    cmpl-double v41, v41, v43

    if-lez v41, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v41

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7800(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v41

    const-wide/high16 v43, 0x4000

    cmpl-double v41, v41, v43

    if-lez v41, :cond_d

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4004(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_7

    .line 1037
    const/4 v10, 0x1

    .line 1038
    .local v10, dataenabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "gprs_connection_sim_setting"

    const-wide/16 v43, -0x5

    invoke-static/range {v41 .. v44}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v37

    .line 1040
    .local v37, simId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "simId="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1041
    const-wide/16 v41, 0x0

    cmp-long v41, v37, v41

    if-lez v41, :cond_b

    .line 1043
    :try_start_0
    const-string/jumbo v41, "phoneEx"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v17

    .line 1044
    .local v17, iTel:Lcom/mediatek/common/telephony/ITelephonyEx;
    const-string/jumbo v41, "phone"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 1045
    .local v29, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_5

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v41

    if-eqz v41, :cond_5

    if-nez v17, :cond_a

    .line 1046
    :cond_5
    const/4 v10, 0x0

    .line 1065
    .end local v17           #iTel:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v29           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "dataenabled="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "getMobileDataEnabled="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1067
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v10, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v41

    if-eqz v41, :cond_c

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    const-string v42, "get true"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 1085
    .end local v4           #dFailCount:J
    .end local v6           #dMultipleRetryCount:J
    .end local v8           #dRetryCount:J
    .end local v10           #dataenabled:Z
    .end local v11           #dbad:I
    .end local v13           #dgood:I
    .end local v14           #dtotal:I
    .end local v22           #loss:D
    .end local v37           #simId:J
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v27

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$7502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1086
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    .line 1087
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    .line 1088
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    .line 1091
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastFailedCount:J

    .line 1092
    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRetryCount:J

    .line 1093
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastMultipleRetryCount:J

    goto/16 :goto_1

    .line 1004
    .restart local v4       #dFailCount:J
    .restart local v6       #dMultipleRetryCount:J
    .restart local v8       #dRetryCount:J
    .restart local v11       #dbad:I
    .restart local v13       #dgood:I
    .restart local v14       #dtotal:I
    :cond_8
    int-to-double v0, v11

    move-wide/from16 v41, v0

    int-to-double v0, v14

    move-wide/from16 v43, v0

    div-double v22, v41, v43

    .line 1005
    .restart local v22       #loss:D
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v41, "#.##"

    move-object/from16 v0, v41

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1009
    .restart local v12       #df:Ljava/text/DecimalFormat;
    mul-int/lit8 v41, v11, 0x10

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    add-long v41, v41, v8

    move-wide/from16 v0, v41

    long-to-double v0, v0

    move-wide/from16 v41, v0

    mul-int/lit8 v43, v11, 0x10

    add-int v43, v43, v13

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    add-long v43, v43, v8

    move-wide/from16 v0, v43

    long-to-double v0, v0

    move-wide/from16 v43, v0

    div-double v24, v41, v43

    .line 1011
    .local v24, loss_withRetry:D
    mul-int/lit8 v41, v11, 0x10

    add-int v41, v41, v13

    long-to-int v0, v8

    move/from16 v42, v0

    add-int v15, v41, v42

    .line 1014
    .local v15, dtotalRetry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v41

    const/16 v42, 0x5

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_9

    const/16 v41, -0x55

    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_9

    .line 1016
    mul-int/lit8 v41, v11, 0x10

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    add-long v41, v41, v8

    move-wide/from16 v0, v41

    long-to-double v0, v0

    move-wide/from16 v41, v0

    mul-int/lit8 v43, v11, 0x10

    add-int v43, v43, v13

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    add-long v43, v43, v8

    move-wide/from16 v0, v43

    long-to-double v0, v0

    move-wide/from16 v43, v0

    div-double v24, v41, v43

    .line 1017
    mul-int/lit8 v41, v11, 0x10

    add-int v41, v41, v13

    long-to-int v0, v8

    move/from16 v42, v0

    add-int v15, v41, v42

    .line 1024
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "conclusion, LinkSpeed="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " Current loss="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v43

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v43

    const-wide/high16 v45, 0x4059

    mul-double v43, v43, v45

    move-wide/from16 v0, v43

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "%"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " rssi="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " txgood="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " txbad="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " dtotal="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " dRetryCount="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1019
    :cond_9
    int-to-double v0, v11

    move-wide/from16 v41, v0

    int-to-double v0, v14

    move-wide/from16 v43, v0

    div-double v24, v41, v43

    .line 1020
    move v15, v14

    goto/16 :goto_5

    .line 1048
    .end local v12           #df:Ljava/text/DecimalFormat;
    .end local v15           #dtotalRetry:I
    .end local v24           #loss_withRetry:D
    .restart local v10       #dataenabled:Z
    .restart local v17       #iTel:Lcom/mediatek/common/telephony/ITelephonyEx;
    .restart local v29       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v37       #simId:J
    :cond_a
    const/16 v41, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z

    move-result v19

    .line 1049
    .local v19, isSim1Insert:Z
    const/16 v20, 0x0

    .line 1051
    .local v20, isSim2Insert:Z
    const/16 v41, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    .line 1053
    if-nez v19, :cond_6

    if-nez v20, :cond_6

    .line 1054
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1057
    .end local v17           #iTel:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v19           #isSim1Insert:Z
    .end local v20           #isSim2Insert:Z
    .end local v29           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v16

    .line 1058
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Failed to get phone service, error:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1059
    const/4 v10, 0x0

    .line 1060
    goto/16 :goto_3

    .line 1063
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1074
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    const-string v42, "dont\' count cause !dataenabled==true && mCm.getMobileDataEnabled()"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1079
    .end local v10           #dataenabled:Z
    .end local v37           #simId:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSampleCount:I
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    .line 1100
    .end local v4           #dFailCount:J
    .end local v6           #dMultipleRetryCount:J
    .end local v8           #dRetryCount:J
    .end local v11           #dbad:I
    .end local v13           #dgood:I
    .end local v14           #dtotal:I
    .end local v18           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .end local v21           #linkspeed:I
    .end local v22           #loss:D
    .end local v26           #mrssi:I
    .end local v27           #now:J
    .end local v30           #rFailedCount:J
    .end local v32           #rMultipleRetryCount:J
    .end local v34           #rRetryCount:J
    .end local v36           #rssi:I
    .end local v39           #txbad:I
    .end local v40           #txgood:I
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v41

    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    const-string v42, "RSSI_FETCH_FAILED"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1104
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v41, v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static/range {v41 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 916
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
