.class Landroid/net/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5232
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 5235
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$27500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5236
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27608(Landroid/net/wifi/WifiStateMachine;)I

    .line 5237
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5238
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20053

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 5240
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5244
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)V

    .line 5247
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5248
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9402(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5251
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    const v13, 0x20053

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5255
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->getName()Ljava/lang/String;

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
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$27700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5256
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 5494
    :cond_0
    :goto_0
    return v8

    .line 5259
    :sswitch_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPreDhcpSetupDone:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$27800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5260
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 5262
    :cond_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_3

    .line 5263
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v8, 0x30007

    invoke-virtual {v6, v8}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    :cond_2
    :goto_1
    move v8, v7

    .line 5494
    goto :goto_0

    .line 5265
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v8, 0x30007

    invoke-virtual {v6, v8}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 5274
    :sswitch_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_5

    .line 5275
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$27902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5282
    :cond_4
    :goto_2
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_POST_DHCP_ACTION for:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDhcpV4Status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDhcpV6Status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 5287
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_9

    .line 5288
    const-string v8, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DHCP succeed for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_7

    const-string v6, "V4"

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_8

    .line 5290
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/DhcpResults;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$28100(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 5294
    :goto_4
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$28300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$28400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5276
    :cond_5
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v11, :cond_6

    .line 5277
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$28002(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_2

    .line 5278
    :cond_6
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v12, :cond_4

    .line 5279
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$27902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5280
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v6, v11}, Landroid/net/wifi/WifiStateMachine;->access$28002(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_2

    .line 5288
    :cond_7
    const-string v6, "V6"

    goto :goto_3

    .line 5292
    :cond_8
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/DhcpResults;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpV6Configuration(Landroid/net/DhcpResults;)V
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$28200(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    goto :goto_4

    .line 5295
    :cond_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v11, :cond_2

    .line 5296
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v6, v11, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 5298
    const-string v6, "WifiStateMachine"

    const-string v8, "DHCP failed!"

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;)V

    .line 5300
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5317
    :sswitch_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 5318
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5321
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_2

    .line 5322
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 5323
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$3102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5324
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$28800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5328
    :sswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_2

    .line 5329
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x20049

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5330
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5334
    :sswitch_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5338
    :sswitch_6
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/WorkSource;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 5339
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 5343
    :sswitch_7
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 5344
    .local v4, netId:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v6, v4, :cond_0

    goto/16 :goto_1

    .line 5349
    .end local v4           #netId:I
    :sswitch_8
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v9, :cond_0

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_0

    .line 5350
    const-string v6, "WifiStateMachine"

    const-string v8, "Ignore connection to same network!"

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v8, v7}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5356
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 5357
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5358
    const-string v6, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAVE_NETWORK, mLastNetworkId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", config.networkId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v9, :cond_b

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5362
    :cond_a
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$9802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5365
    :cond_b
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v5

    .line 5366
    .local v5, result:Landroid/net/wifi/NetworkUpdateResult;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v9

    if-ne v6, v9, :cond_d

    .line 5367
    invoke-virtual {v5}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5368
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Reconfiguring IP on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5369
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$29200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5371
    :cond_c
    invoke-virtual {v5}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5372
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Reconfiguring proxy on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$29300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5373
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)V

    .line 5374
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$29400(Landroid/net/wifi/WifiStateMachine;)V

    .line 5378
    :cond_d
    invoke-virtual {v5}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_e

    .line 5379
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x25009

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v8}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 5381
    :cond_e
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Failed to save network"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$29500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5382
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x25008

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v9, v8}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5388
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_a
    const-string v8, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mLastBssid:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", newBssid:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->sendRoamingDetectBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$29600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$8202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5393
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 5398
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "L2ConnectedState, mMtkPasspointR1Support is true"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$29700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5399
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->isHsSigmaTesting()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 5400
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "L2ConnectedState, isHsSigmaTesting() == 1"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$29800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5406
    :cond_f
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 5407
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v8, 0x30002

    invoke-virtual {v6, v8}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 5408
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 5409
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop dhcp on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    :cond_10
    :goto_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 5416
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v8, 0x30002

    invoke-virtual {v6, v8}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 5417
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 5418
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop dhcpv6 on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    :cond_11
    :goto_6
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 5426
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5430
    :goto_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$29900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5411
    :cond_12
    const-string v6, "WifiStateMachine"

    const-string v8, "Stop dhcp successfully!"

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5420
    :cond_13
    const-string v6, "WifiStateMachine"

    const-string v8, "Stop dhcpv6 successfully!"

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5427
    :catch_0
    move-exception v2

    .line 5428
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear addresses or disable ipv6:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5433
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_b
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    if-ne v6, v9, :cond_2

    .line 5435
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 5436
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v13, v10, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 5443
    :sswitch_c
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_14

    move v6, v7

    :goto_8
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5444
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$27608(Landroid/net/wifi/WifiStateMachine;)I

    .line 5445
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5447
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 5448
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v13, v10, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :cond_14
    move v6, v8

    .line 5443
    goto :goto_8

    .line 5453
    :sswitch_d
    new-instance v3, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v3}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 5454
    .local v3, info:Landroid/net/wifi/RssiPacketCountInfo;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 5455
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 5457
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 5458
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$30100(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 5459
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x25015

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v8, v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 5463
    .end local v3           #info:Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_e
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v0

    .line 5464
    .local v0, answer:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v8, v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 5468
    .end local v0           #answer:Ljava/lang/String;
    :sswitch_f
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x25019

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v9, v8}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5488
    :sswitch_10
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/DhcpResults;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulPppoeConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$30600(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    goto/16 :goto_1

    .line 5256
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x20036 -> :sswitch_8
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_4
        0x20049 -> :sswitch_2
        0x20050 -> :sswitch_5
        0x20052 -> :sswitch_c
        0x20053 -> :sswitch_b
        0x200b5 -> :sswitch_e
        0x2300c -> :sswitch_3
        0x24003 -> :sswitch_a
        0x25001 -> :sswitch_7
        0x25007 -> :sswitch_9
        0x25014 -> :sswitch_d
        0x25017 -> :sswitch_f
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch
.end method
