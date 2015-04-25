.class Landroid/net/wifi/WifiStateMachine$9;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 6973
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x200b9

    const v8, 0x200b7

    const/4 v7, 0x0

    .line 6976
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6977
    .local v0, action:Ljava/lang/String;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    const-string v4, "com.android.server.WifiManager.action.CLEAR_WAIT_FLAG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6979
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$9102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7019
    :cond_0
    :goto_0
    return-void

    .line 6980
    :cond_1
    const-string/jumbo v4, "mtk.wps.nfc.testbed.configuration.received"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6981
    const-string/jumbo v4, "mtk.wps.nfc.testbed.extra.configuration"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 6982
    .local v1, configurationToken:[B
    if-eqz v1, :cond_2

    .line 6983
    const-string v4, "com.mediatek.nfc.wps.extra.WPS_SSID_STRING"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6984
    .local v2, deviceName:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mNfcWpsSsid:Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$14102(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6985
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v5, "mtk.wps.nfc.testbed.extra.closeWifiIfError"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Landroid/net/wifi/WifiStateMachine;->mStopWifiIfFail:I
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$14202(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6986
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mStopWifiIfFail="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mStopWifiIfFail:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$14200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6987
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 6989
    .end local v2           #deviceName:Ljava/lang/String;
    :cond_2
    const-string v4, "WifiStateMachine"

    const-string v5, "No configuration token!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6991
    .end local v1           #configurationToken:[B
    :cond_3
    const-string/jumbo v4, "mtk.wps.nfc.testbed.hs.received"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6992
    const-string/jumbo v4, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 6993
    .local v3, passwordToken:[B
    if-eqz v3, :cond_4

    .line 6994
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x200b8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6996
    :cond_4
    const-string v4, "WifiStateMachine"

    const-string v5, "No password token!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6998
    .end local v3           #passwordToken:[B
    :cond_5
    const-string/jumbo v4, "mtk.wps.nfc.testbed.hr.received"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6999
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received HR action, mWaitingForHrToken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7000
    const-string/jumbo v4, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 7001
    .restart local v3       #passwordToken:[B
    if-eqz v3, :cond_7

    .line 7002
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7003
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 7005
    :cond_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 7008
    :cond_7
    const-string v4, "WifiStateMachine"

    const-string v5, "No password token!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7010
    .end local v3           #passwordToken:[B
    :cond_8
    const-string/jumbo v4, "mtk.wps.nfc.testbed.password.received"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "mtk.wps.nfc.testbed.externalRegistrar.password.received"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7012
    :cond_9
    const-string/jumbo v4, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 7013
    .restart local v3       #passwordToken:[B
    if-eqz v3, :cond_a

    .line 7014
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 7016
    :cond_a
    const-string v4, "WifiStateMachine"

    const-string v5, "No password token!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
