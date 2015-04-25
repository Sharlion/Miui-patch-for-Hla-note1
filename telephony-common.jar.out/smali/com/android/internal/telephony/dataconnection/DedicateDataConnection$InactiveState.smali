.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field private mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

.field private mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mIsConnect:Z

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] enter InactiveState state [dp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eqz v0, :cond_1

    .line 437
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->clearSettings()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    .line 445
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DedicateDataConnection enter InactiveState without notification"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 450
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 451
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    .line 382
    const/4 v4, 0x0

    .line 383
    .local v4, retVal:Z
    const/4 v0, 0x0

    .line 384
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 385
    .local v1, dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v6, :cond_1

    .line 386
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 393
    .restart local v1       #dp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 428
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DedicateDataConnection receive unhandled message [InactiveState, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    :goto_0
    move v5, v4

    .line 430
    .end local v4           #retVal:Z
    .local v5, retVal:I
    :goto_1
    return v5

    .line 387
    .end local v5           #retVal:I
    .restart local v4       #retVal:Z
    :cond_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 388
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg object class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    move v5, v4

    .line 389
    .restart local v5       #retVal:I
    goto :goto_1

    .line 395
    .end local v5           #retVal:I
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState msg.what=EVENT_CONNECT"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V

    .line 397
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 398
    const/4 v4, 0x1

    .line 399
    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState: msg.what=EVENT_DISCONNECT"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 403
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v6, v1, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 404
    const/4 v4, 0x1

    .line 405
    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState receive EVENT_UPDATE"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 408
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onUpdate(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v3

    .line 409
    .local v3, result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$android$internal$telephony$dataconnection$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 422
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InactiveState unknown SetupResult, should not happen ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "InactiveState receive EVENT_UPDATE and is connected"

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v7, "activation"

    #setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 414
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 424
    :goto_2
    const/4 v4, 0x1

    .line 425
    goto/16 :goto_0

    .line 417
    :pswitch_5
    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 418
    .local v2, failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InactiveState receive EVENT_UPDATE and is disconnected ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 419
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    #calls: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v6, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_2

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setEnterNotificationParams(ZLcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .parameter "isToConnect"
    .parameter "dp"
    .parameter "cause"

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    .line 455
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 456
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 457
    return-void
.end method
