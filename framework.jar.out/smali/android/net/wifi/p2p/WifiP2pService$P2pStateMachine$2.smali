.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field final synthetic val$this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->val$this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x23015

    const/4 v5, 0x0

    .line 706
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.extra.HR_P2P_DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 710
    .local v1, token:[B
    if-eqz v1, :cond_1

    .line 711
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v3, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 712
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #calls: Landroid/net/wifi/p2p/WifiP2pService;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$800(Landroid/net/wifi/p2p/WifiP2pService;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 739
    .end local v1           #token:[B
    :cond_0
    :goto_0
    return-void

    .line 714
    .restart local v1       #token:[B
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "No HR token!"

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .end local v1           #token:[B
    :cond_2
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    const-string/jumbo v2, "mtk.nfc.wfa.p2p.extra.HS_P2P_DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 718
    .restart local v1       #token:[B
    if-eqz v1, :cond_3

    .line 719
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mReceivedHR:Z
    invoke-static {v2, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 720
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #calls: Landroid/net/wifi/p2p/WifiP2pService;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$800(Landroid/net/wifi/p2p/WifiP2pService;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 722
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "No HS token!"

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v1           #token:[B
    :cond_4
    const-string/jumbo v2, "mtk.nfc.wfa.tag.RECEIVE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 725
    const-string/jumbo v2, "mtk.nfc.wfa.tag.extra.DEV_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 726
    .restart local v1       #token:[B
    if-eqz v1, :cond_5

    .line 727
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v4, 0x23014

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #calls: Landroid/net/wifi/p2p/WifiP2pService;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {v5, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$800(Landroid/net/wifi/p2p/WifiP2pService;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 729
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "No device info!"

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    .end local v1           #token:[B
    :cond_6
    const-string v2, "com.android.server.WifiManager.action.CLEAR_TMP_GO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 732
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mTmpGoAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 733
    :cond_7
    const-string v2, "com.android.server.WifiManager.action.CLEAR_LISTEN_FLAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 734
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mListening:Z
    invoke-static {v2, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_0

    .line 735
    :cond_8
    const-string/jumbo v2, "mtk.nfc.p2p.STOP_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v3, 0x23016

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 737
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "get MTK_NFC_P2P_STOP_ACTION!"

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
