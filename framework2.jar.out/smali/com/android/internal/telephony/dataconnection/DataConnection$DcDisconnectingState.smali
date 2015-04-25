.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1843
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1891
    :pswitch_0
    const/4 v5, 0x0

    .line 1894
    .local v5, retVal:Z
    :goto_0
    return v5

    .line 1845
    .end local v5           #retVal:Z
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcDisconnectingState msg.what=EVENT_CONNECT. Defer. RefCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1847
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #calls: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7900(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 1848
    const/4 v5, 0x1

    .line 1849
    .restart local v5       #retVal:Z
    goto :goto_0

    .line 1852
    .end local v5           #retVal:Z
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcDisconnectingState msg.what=EVENT_DEACTIVATE_DONE RefCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1854
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1855
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1856
    .local v4, dp:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v6, v7, :cond_3

    .line 1861
    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v6, v6, [I

    if-eqz v6, :cond_1

    .line 1862
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setCidArray([I)V

    .line 1877
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v7

    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1878
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$8000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1883
    :goto_2
    const/4 v5, 0x1

    .line 1884
    .restart local v5       #retVal:Z
    goto/16 :goto_0

    .line 1864
    .end local v5           #retVal:Z
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 1865
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1866
    .local v0, apnCtx:Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1867
    .local v1, apnType:Ljava/lang/String;
    const-string v6, "ims"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "emergency"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1869
    :cond_2
    new-array v3, v10, [I

    .line 1870
    .local v3, cidArray:[I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    aput v6, v3, v9

    .line 1871
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setCidArray([I)V

    .line 1872
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcDisconnectingState set cid("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to deactivate cid array) for apn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1880
    .end local v0           #apnCtx:Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1           #apnType:Ljava/lang/String;
    .end local v3           #cidArray:[I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcDisconnectState stale EVENT_DEACTIVATE_DONE dp.tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1843
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
