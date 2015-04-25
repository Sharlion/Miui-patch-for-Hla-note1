.class public Lcom/android/internal/telephony/cdma/ViaDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "ViaDcTracker.java"


# static fields
.field private static final EVENT_DELAYED_RESTART_RADIO:I = 0x420de

.field private static final PDP_POOL_SIZE:I = 0x1

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I


# instance fields
.field private mPCModemConnected:Z

.field private mPendingRestartRadio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 16
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPCModemConnected:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPendingRestartRadio:Z

    .line 20
    return-void
.end method

.method private onRestartRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "onRestartRadio : ************TURN OFF/ON RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 117
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPendingRestartRadio:Z

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method protected getPdpConnectionPoolSize()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action2"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, action:I
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 76
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mIsDisposed:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    const-string v0, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->loge(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->onRestartRadio()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x420de
        :pswitch_0
    .end packed-switch
.end method

.method protected isAggressiveRecovery(I)Z
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 88
    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v0

    .line 61
    .local v0, allow:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPCModemConnected:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 62
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPCModemConnected:Z

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "isDataAllowed: not allowed due to -- PCModemConnected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 65
    :cond_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .local v0, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const-string v1, "ViaDcTracker onDataStateChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 39
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataStateChanged  active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 42
    const-string v1, "PC Modem enabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPCModemConnected:Z

    .line 44
    const-string v1, "pcModemConnected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 47
    const-string v1, "PC Modem disconnected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 48
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPCModemConnected:Z

    .line 49
    const-string v1, "pcModemDisconnected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 123
    const-string v0, "onDisconnectDone: process pending restart radio"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    const v0, 0x420de

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->removeMessages(I)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->onRestartRadio()V

    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 134
    return-void
.end method

.method protected onlySupportOnePdp()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 p1, 0x1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio.data.stall.recovery.action2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected restartRadio()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "restartRadio : ************TURN OFF/ON RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/ViaDcTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->log(Ljava/lang/String;)V

    .line 106
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 107
    const v0, 0x420de

    sget v1, Lcom/android/internal/telephony/cdma/ViaDcTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/ViaDcTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/ViaDcTracker;->mPendingRestartRadio:Z

    goto :goto_0
.end method
