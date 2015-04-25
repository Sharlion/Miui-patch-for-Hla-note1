.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2952
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2955
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2956
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 3314
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error! unhandled message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3317
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 2958
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 2959
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v6, 0x11001

    invoke-virtual {v4, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 2961
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiP2pService connection failure, error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2965
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2970
    :sswitch_3
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$1502(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 2979
    :sswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 2982
    :sswitch_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    check-cast v4, Ljava/util/List;

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 2985
    :sswitch_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_3

    move v6, v5

    :cond_3
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 2988
    :sswitch_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_4

    move v6, v5

    :cond_4
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$1902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 2991
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_5

    .line 2992
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v11, v6}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 2994
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v11, v5}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 2998
    :sswitch_9
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    .line 2999
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3000
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "wifi_country_code"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3007
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 3008
    .local v3, sequenceNum:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x20050

    #calls: Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v4, v7, v3, v6, v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3013
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v3           #sequenceNum:I
    :sswitch_a
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    #calls: Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v6, v7, v8, v4}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 3016
    :sswitch_b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3019
    :sswitch_c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3122
    :sswitch_d
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v11, :cond_6

    .line 3123
    const-string v6, "WifiStateMachine"

    const-string v7, "Set mDhcpV6StateMachine to null!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$2702(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 3126
    :cond_6
    const-string v6, "WifiStateMachine"

    const-string v7, "Set mDhcpStateMachine to null!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$2802(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 3134
    :sswitch_e
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_7

    .line 3135
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3136
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 3138
    :cond_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v7, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v7, v6}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 3142
    :sswitch_f
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 3143
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 3146
    :sswitch_10
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25002

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3150
    :sswitch_11
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25005

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3154
    :sswitch_12
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25008

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3158
    :sswitch_13
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2500c

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3162
    :sswitch_14
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2500f

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3166
    :sswitch_15
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25012

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3170
    :sswitch_16
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25016

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3174
    :sswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3175
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3178
    .end local v1           #info:Landroid/net/NetworkInfo;
    :sswitch_18
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_8

    move v6, v5

    :cond_8
    #setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$3102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3179
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2300d

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, p1, v6}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 3183
    :sswitch_19
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v6, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3184
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3188
    :sswitch_1a
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v6, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3189
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3199
    :sswitch_1b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3202
    :sswitch_1c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3205
    :sswitch_1d
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_9

    move v6, v5

    :cond_9
    invoke-static {v6}, Landroid/net/wifi/WifiNative;->setTxPowerEnabled(Z)Z

    move-result v2

    .line 3206
    .local v2, ok:Z
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_a

    move v4, v5

    :goto_2
    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v8, v4}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_a
    move v4, v7

    goto :goto_2

    .line 3209
    .end local v2           #ok:Z
    :sswitch_1e
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->setTxPower(I)Z

    move-result v2

    .line 3210
    .restart local v2       #ok:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_b

    move v7, v5

    :cond_b
    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3224
    .end local v2           #ok:Z
    :sswitch_1f
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->getDisconnectFlag()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3227
    :sswitch_20
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_f

    .line 3228
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWfdConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBeamPlusStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3229
    :cond_c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_d

    move v6, v5

    :cond_d
    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectCalled:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$3802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3234
    :cond_e
    :goto_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, p1, v6}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 3232
    :cond_f
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_10

    move v6, v5

    :cond_10
    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectCalled:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$3802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_3

    .line 3237
    :sswitch_21
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$3902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3238
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x200ad

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3241
    :sswitch_22
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3247
    :sswitch_23
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x25019

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v7, v6}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3254
    :sswitch_24
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x2501c

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v7, v6}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3259
    :sswitch_25
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2502d

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3262
    :sswitch_26
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25030

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3265
    :sswitch_27
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25033

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3268
    :sswitch_28
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25039

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3271
    :sswitch_29
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25036

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3274
    :sswitch_2a
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 3281
    :sswitch_2b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2500c

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3286
    :sswitch_2c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->setWoWlanNormalModeCommand()Z

    move-result v2

    .line 3287
    .restart local v2       #ok:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_11

    move v7, v5

    :cond_11
    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3290
    .end local v2           #ok:Z
    :sswitch_2d
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->setWoWlanMagicModeCommand()Z

    move-result v2

    .line 3291
    .restart local v2       #ok:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_12

    move v7, v5

    :cond_12
    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3296
    .end local v2           #ok:Z
    :sswitch_2e
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SET_WIFI_DISCONNECT trap at default state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3297
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_13

    .line 3298
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "get 1"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3299
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotknotConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3300
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2503b

    #calls: Landroid/net/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3301
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x2503b

    invoke-virtual {v8, v9, v6, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3306
    :goto_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x200ad

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3303
    :cond_13
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v7, "reset hotknot flag"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3304
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotknotConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    .line 3311
    :sswitch_2f
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2956
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20013 -> :sswitch_0
        0x20014 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_0
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_5
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004d -> :sswitch_8
        0x20050 -> :sswitch_0
        0x20052 -> :sswitch_6
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_e
        0x20058 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_7
        0x20085 -> :sswitch_0
        0x20086 -> :sswitch_9
        0x20087 -> :sswitch_a
        0x20088 -> :sswitch_c
        0x20089 -> :sswitch_b
        0x2008c -> :sswitch_19
        0x2008d -> :sswitch_1a
        0x2008e -> :sswitch_0
        0x20097 -> :sswitch_0
        0x20099 -> :sswitch_0
        0x200a3 -> :sswitch_1b
        0x200a4 -> :sswitch_1b
        0x200a5 -> :sswitch_1b
        0x200a6 -> :sswitch_1c
        0x200a7 -> :sswitch_1b
        0x200a8 -> :sswitch_1d
        0x200a9 -> :sswitch_1e
        0x200aa -> :sswitch_1b
        0x200ab -> :sswitch_1b
        0x200ac -> :sswitch_0
        0x200ae -> :sswitch_1b
        0x200af -> :sswitch_0
        0x200b0 -> :sswitch_0
        0x200b1 -> :sswitch_0
        0x200b2 -> :sswitch_1f
        0x200b3 -> :sswitch_20
        0x200b4 -> :sswitch_21
        0x200b5 -> :sswitch_22
        0x200b6 -> :sswitch_0
        0x200b7 -> :sswitch_2b
        0x200b8 -> :sswitch_2b
        0x200ba -> :sswitch_2a
        0x200bb -> :sswitch_2c
        0x200bc -> :sswitch_2d
        0x200c0 -> :sswitch_0
        0x200c1 -> :sswitch_0
        0x200c2 -> :sswitch_0
        0x200c3 -> :sswitch_0
        0x200c4 -> :sswitch_0
        0x200c5 -> :sswitch_0
        0x200c6 -> :sswitch_0
        0x200c7 -> :sswitch_0
        0x200c8 -> :sswitch_0
        0x200c9 -> :sswitch_0
        0x200ca -> :sswitch_0
        0x200cb -> :sswitch_0
        0x200cc -> :sswitch_0
        0x200cd -> :sswitch_0
        0x200ce -> :sswitch_0
        0x200cf -> :sswitch_0
        0x200d0 -> :sswitch_0
        0x200d1 -> :sswitch_0
        0x200d2 -> :sswitch_0
        0x200d3 -> :sswitch_0
        0x200d4 -> :sswitch_0
        0x200d5 -> :sswitch_0
        0x200d6 -> :sswitch_0
        0x200d7 -> :sswitch_0
        0x200d8 -> :sswitch_0
        0x200d9 -> :sswitch_0
        0x200da -> :sswitch_2f
        0x200db -> :sswitch_2f
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_0
        0x2300b -> :sswitch_17
        0x2300c -> :sswitch_18
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x2400a -> :sswitch_0
        0x2400c -> :sswitch_f
        0x2402b -> :sswitch_0
        0x2403c -> :sswitch_0
        0x2403d -> :sswitch_0
        0x2403e -> :sswitch_0
        0x2403f -> :sswitch_0
        0x24042 -> :sswitch_0
        0x24043 -> :sswitch_0
        0x24044 -> :sswitch_0
        0x24046 -> :sswitch_0
        0x24047 -> :sswitch_0
        0x24048 -> :sswitch_0
        0x24049 -> :sswitch_0
        0x2404a -> :sswitch_0
        0x2404b -> :sswitch_0
        0x2404c -> :sswitch_0
        0x2404d -> :sswitch_0
        0x2404e -> :sswitch_0
        0x2404f -> :sswitch_0
        0x24050 -> :sswitch_0
        0x24051 -> :sswitch_0
        0x24052 -> :sswitch_0
        0x24053 -> :sswitch_0
        0x24054 -> :sswitch_0
        0x24055 -> :sswitch_0
        0x24056 -> :sswitch_0
        0x25001 -> :sswitch_10
        0x25004 -> :sswitch_11
        0x25007 -> :sswitch_12
        0x2500a -> :sswitch_13
        0x2500e -> :sswitch_14
        0x25011 -> :sswitch_15
        0x25014 -> :sswitch_16
        0x25017 -> :sswitch_23
        0x2501a -> :sswitch_24
        0x25029 -> :sswitch_2b
        0x2502a -> :sswitch_2b
        0x2502b -> :sswitch_2b
        0x2502c -> :sswitch_25
        0x2502f -> :sswitch_26
        0x25032 -> :sswitch_27
        0x25035 -> :sswitch_29
        0x25038 -> :sswitch_28
        0x2503b -> :sswitch_2e
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
        0x30006 -> :sswitch_d
    .end sparse-switch
.end method
