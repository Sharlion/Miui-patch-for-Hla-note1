.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field private mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

.field private mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] enter active state [dp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 593
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 598
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 599
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 518
    const/4 v3, 0x0

    .line 519
    .local v3, retVal:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 582
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DedicateDataConnection receive unhandled message [ActiveState, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 584
    :goto_0
    return v3

    .line 521
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_CONNECT"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v5, v4, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 523
    const/4 v3, 0x1

    .line 524
    goto :goto_0

    .line 526
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_DISCONNECT"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onDisconnect(Ljava/lang/Object;)V

    .line 528
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$3200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 529
    const/4 v3, 0x1

    .line 530
    goto :goto_0

    .line 532
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_MODIFY"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 533
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onModification(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V

    .line 534
    const/4 v3, 0x1

    .line 535
    goto :goto_0

    .line 537
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState: msg.what=EVENT_UPDATE (handle update directly)"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 538
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 539
    .local v1, dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$3300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v4

    iget-object v2, v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 540
    .local v2, result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$android$internal$telephony$dataconnection$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 551
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveState unknown SetupResult, should not happen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_UPDATE and SUCCESS"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 543
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "modification"

    #setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 553
    :goto_1
    const/4 v3, 0x1

    .line 554
    goto/16 :goto_0

    .line 547
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_UPDATE and FAIL"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 548
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_1

    .line 557
    .end local v1           #dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .end local v2           #result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 558
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 559
    .restart local v1       #dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$3300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v4

    iget-object v2, v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 560
    .restart local v2       #result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 561
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$android$internal$telephony$dataconnection$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 572
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveState unknown SetupResult, should not happen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and SUCCESS"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 564
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "modification"

    #setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 578
    :goto_2
    const/4 v3, 0x1

    .line 579
    goto/16 :goto_0

    .line 568
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and FAIL"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 569
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 575
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActiveState receive EVENT_MODIFY_DATA_CONNECTION_DONE and exception"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 519
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 540
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 561
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .parameter "dp"
    .parameter "cause"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 603
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 604
    return-void
.end method
