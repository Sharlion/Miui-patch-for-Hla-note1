.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# instance fields
.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-string v0, "CellBroadcastHandler"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "debugTag"
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 57
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 58
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, actualClassName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 68
    .end local v0           #actualClassName:Ljava/lang/String;
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v2, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "FAIL! No IOnlyOwnerSimSupport"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, handler:Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    .line 78
    return-object v0
.end method


# virtual methods
.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;Z)V

    .line 105
    return-void
.end method

.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;Z)V
    .locals 9
    .parameter "message"
    .parameter "isPrimary"

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching emergency SMS CB:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "isPrimary"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 123
    .local v2, receiverPermission:Ljava/lang/String;
    const/16 v3, 0x11

    .line 137
    .local v3, appOp:I
    :cond_0
    :goto_0
    const-string v0, "message"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v0, "simId"

    iget v4, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mSimId:I

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void

    .line 125
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #receiverPermission:Ljava/lang/String;
    .end local v3           #appOp:I
    :cond_1
    const-string v0, "Dispatching SMS CB"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.permission.RECEIVE_SMS"

    .line 128
    .restart local v2       #receiverPermission:Ljava/lang/String;
    const/16 v3, 0x10

    .line 132
    .restart local v3       #appOp:I
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const-string v0, "mediatek.Telephony.NORMALUSER_CB_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected handleEtwsPrimaryNotification(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage got object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method
