.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field static final LTE_MAX_CONNECTIONS:I = 0xe

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field causeCode:I

.field crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

.field delayedClirMode:I

.field delayedDialString:Ljava/lang/String;

.field delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private dmAgent:Lcom/mediatek/common/dm/DmAgent;

.field hasPendingHangupRequest:Z

.field hasPendingReplaceRequest:Z

.field private hasSendAgpsStartIntent:Z

.field private isFullLock:Z

.field private isInLock:Z

.field isPendingSwap:Z

.field isSwitchBeforeDial:Z

.field private mAddedMemberConnectionCreated:Z

.field mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mCallIdToMerge:I

.field mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field private mContainForwardingAddress:Z

.field protected mContext:Landroid/content/Context;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field mEnableTest:Z

.field mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mForwardingAddress:Ljava/lang/String;

.field private mForwardingAddressCallId:I

.field mHangupPendingMO:Z

.field private mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mPendingCnap:Ljava/lang/String;

.field mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPhoneNumberToMerge:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mTempEmergencyNumber:Ljava/lang/String;

.field private mTreatedAsEmergencyNumber:Z

.field mVoLteConfCallActiveCallId:I

.field mVoLteConfCallId:I

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private needHangupMOCall:Z

.field private needHangupMTCall:Z

.field pendingHangupRequest:I

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 217
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 132
    const/16 v5, 0xe

    new-array v5, v5, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 134
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 135
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 143
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 145
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 147
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 154
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 156
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 159
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 160
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 161
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 162
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 163
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 165
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 167
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 170
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 171
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 174
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 178
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 184
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 185
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 191
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    .line 193
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 194
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 199
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    .line 203
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    .line 204
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    .line 205
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 208
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 209
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    .line 232
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 233
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    .line 234
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    .line 235
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEnableTest:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mTreatedAsEmergencyNumber:Z

    .line 239
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mTempEmergencyNumber:Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 249
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 251
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x9

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xa

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    .line 262
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x11

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallProgressInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x14

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x18

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    const-string v5, "DmAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .local v0, binder:Landroid/os/IBinder;
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 275
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v5, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v5, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCallTracker$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 284
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v5, :cond_1

    .line 285
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 286
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFullLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needHangupMOCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needHangupMTCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1a

    invoke-interface {v3, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1b

    invoke-interface {v3, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    return-void

    :cond_2
    move v3, v4

    .line 286
    goto :goto_0

    .line 292
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DmAgent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return p1
.end method

.method private dumpState()V
    .locals 8

    .prologue
    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, callId:I
    const/4 v1, 0x0

    .line 1076
    .local v1, count:I
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone State:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ringing call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 1081
    .local v3, l:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1082
    const-string v5, "GsmCallTracker"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Foreground call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MPTY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v7, v7, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 1088
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_1

    .line 1089
    const-string v5, "GsmCallTracker"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1092
    :cond_1
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Background call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MPTY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v7, v7, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 1095
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_2

    .line 1096
    const-string v5, "GsmCallTracker"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1100
    :cond_2
    const/4 v2, 0x0

    const/16 v4, 0xe

    :goto_3
    if-ge v2, v4, :cond_4

    .line 1101
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    .line 1102
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v5, 0x1

    .line 1103
    add-int/lit8 v1, v1, 0x1

    .line 1104
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "* conn id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1109
    :cond_4
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "* GsmCT has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " connection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 400
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 402
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 405
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getCurrentTotalConnections()I
    .locals 4

    .prologue
    .line 2798
    const/4 v0, 0x0

    .line 2799
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x7

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2800
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 2801
    add-int/lit8 v0, v0, 0x1

    .line 2799
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2804
    :cond_1
    return v0
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1438
    packed-switch p1, :pswitch_data_0

    .line 1448
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1440
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1442
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1444
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1446
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1438
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 2573
    const/4 v7, 0x0

    .line 2574
    .local v7, mode:I
    iget-object v11, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v6, v11

    check-cast v6, [Ljava/lang/String;

    .line 2575
    .local v6, incomingCallInfo:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2576
    .local v0, callId:I
    const/4 v11, 0x3

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2577
    .local v1, callMode:I
    const/4 v11, 0x4

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2581
    .local v10, seqNumber:I
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 2582
    const/4 v11, 0x5

    aget-object v11, v6, v11

    if-eqz v11, :cond_0

    const/4 v11, 0x5

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 2584
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 2585
    const/4 v11, 0x5

    aget-object v11, v6, v11

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 2586
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    .line 2587
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAIC message contains forwarding address - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2590
    :cond_0
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    .line 2592
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_6

    .line 2593
    const/4 v7, 0x1

    .line 2619
    :cond_1
    :goto_0
    if-nez v7, :cond_3

    .line 2621
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v11, :cond_2

    .line 2622
    const-string v11, "mobile"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 2625
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getInterceptionEnabledSetting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v12}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2626
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v11}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2627
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2628
    .local v8, parameter:Landroid/os/Bundle;
    const-string v11, "phoneNumber"

    const/4 v12, 0x1

    aget-object v12, v6, v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const-string v11, "callType"

    invoke-virtual {v8, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2630
    const-string v11, "slotId"

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2631
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-interface {v11, v12, v8, v13}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v9

    .line 2632
    .local v9, result:I
    if-nez v9, :cond_d

    const/4 v7, 0x0

    .line 2633
    :goto_1
    const/4 v11, 0x1

    if-ne v7, v11, :cond_e

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2642
    .end local v8           #parameter:Landroid/os/Bundle;
    .end local v9           #result:I
    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 2643
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2644
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2645
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2646
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notify mVoiceCallIncomingIndicationRegistrants "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2649
    :cond_4
    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    .line 2650
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 2651
    .local v3, dc:Lcom/android/internal/telephony/DriverCall;
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 2652
    iput v0, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 2653
    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2655
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v7, v0, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2657
    if-nez v1, :cond_f

    .line 2658
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2659
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2669
    :goto_4
    const/4 v11, 0x1

    aget-object v11, v6, v11

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2670
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v11, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2671
    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 2672
    iget-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v12, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v11, v12}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2674
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11, v3, p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 2675
    .local v2, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2677
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_5
    return-void

    .line 2594
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_1

    .line 2595
    const/16 v11, 0xa

    if-eq v1, v11, :cond_7

    const/16 v11, 0x15

    if-ne v1, v11, :cond_9

    .line 2597
    :cond_7
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    const/4 v11, 0x7

    if-ge v5, v11, :cond_1

    .line 2598
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v11, v5

    .line 2599
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v11

    if-nez v11, :cond_8

    .line 2600
    const/4 v7, 0x1

    .line 2601
    goto/16 :goto_0

    .line 2597
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2604
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_9
    if-eqz v1, :cond_a

    const/16 v11, 0x14

    if-ne v1, v11, :cond_c

    .line 2606
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    const/4 v11, 0x7

    if-ge v5, v11, :cond_1

    .line 2607
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v11, v5

    .line 2608
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2609
    const/4 v7, 0x1

    .line 2610
    goto/16 :goto_0

    .line 2606
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2614
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2632
    .restart local v8       #parameter:Landroid/os/Bundle;
    .restart local v9       #result:I
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2633
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2635
    .end local v8           #parameter:Landroid/os/Bundle;
    .end local v9           #result:I
    :catch_0
    move-exception v4

    .line 2636
    .local v4, e:Landroid/os/RemoteException;
    const-string v11, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2661
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v3       #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_f
    const/16 v11, 0xa

    if-ne v1, v11, :cond_10

    .line 2662
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2663
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_4

    .line 2666
    :cond_10
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2667
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_4
.end method

.method private handleRadioNotAvailable()V
    .locals 2

    .prologue
    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 1067
    return-void
.end method

.method private hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "msg"

    .prologue
    .line 3176
    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    .line 3178
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3179
    .local v0, address:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3180
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getPau()Ljava/lang/String;

    move-result-object v0

    .line 3182
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 3186
    .end local v0           #address:Ljava/lang/String;
    :goto_0
    return-void

    .line 3184
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 760
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 777
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 793
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 798
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-gez v0, :cond_0

    .line 805
    const-string v0, "GsmCallTracker"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    goto :goto_0
.end method

.method private removeConnectionSilently(I)V
    .locals 6
    .parameter "idx"

    .prologue
    const/4 v5, 0x0

    .line 3224
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3225
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3226
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    if-ne v3, v4, :cond_0

    .line 3227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove ringing connection silently - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3228
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 3229
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aput-object v5, v3, p1

    .line 3266
    :goto_1
    return-void

    .line 3225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3234
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3235
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_3

    .line 3236
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    if-ne v3, v4, :cond_2

    .line 3237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove foreground connection silently - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3238
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 3239
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aput-object v5, v3, p1

    goto :goto_1

    .line 3235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3244
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3245
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_5

    .line 3246
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    if-ne v3, v4, :cond_4

    .line 3247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove background connection silently - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3248
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 3249
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aput-object v5, v3, p1

    goto :goto_1

    .line 3245
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3254
    :cond_5
    const-string v3, "[removeConnectionSilently]Remove nothing!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private resumeBackgroundAfterDialFailed()V
    .locals 5

    .prologue
    .line 1820
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1822
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1823
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1825
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->resumeHoldAfterDialFailed()V

    .line 1822
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1827
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private updateConferenceConnections([I)V
    .locals 7
    .parameter "connectionIds"

    .prologue
    const/4 v6, 0x0

    .line 3193
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V

    .line 3194
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    .line 3197
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    aget v3, p1, v6

    if-gt v0, v3, :cond_2

    .line 3198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionIds["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3199
    const/4 v2, 0x7

    .local v2, j:I
    :goto_1
    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 3200
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConferenceUserData()Lcom/android/internal/telephony/ConferenceCallXml$User;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3202
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConferenceUserData()Lcom/android/internal/telephony/ConferenceCallXml$User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getIndex()I

    move-result v1

    .line 3203
    .local v1, index:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3204
    if-ne v1, v0, :cond_1

    .line 3205
    const-string v3, "found it"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3206
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    aget v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->changeIndex(I)V

    .line 3207
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setRoleOfConnection(I)V

    .line 3208
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    .line 3209
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 3197
    .end local v1           #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3199
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3216
    .end local v2           #j:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 3217
    return-void
.end method

.method private updateMptyState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1929
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1934
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1936
    return-void

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_0

    .line 1932
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_1
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 814
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 823
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 830
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState: old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 834
    :cond_1
    return-void

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 818
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 820
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 826
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 570
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEnableTest:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 572
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 573
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 575
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 577
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 579
    const/4 v1, 0x7

    .local v1, i:I
    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 579
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 620
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v1           #i:I
    :goto_1
    return-void

    .line 593
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    .line 594
    const-string v2, "phone"

    const-string v3, "acceptCall: incoming..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 597
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_1

    .line 598
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    .line 599
    const-string v2, "acceptCall: waiting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_1

    .line 617
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method acceptVtCallWithVoiceOnly()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1912
    const-string v1, "acceptVtCallWithVoiceOnly"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1915
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V

    .line 1917
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;I)V
    .locals 2
    .parameter "confCallId"
    .parameter "address"
    .parameter "callIdToAdd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 3158
    return-void
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 731
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 732
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 742
    .local v1, ret:Z
    :goto_0
    return v1

    .line 735
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 715
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 716
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 718
    return-void
.end method

.method conference()V
    .locals 7

    .prologue
    const/16 v2, 0xb

    const/4 v6, -0x1

    .line 673
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v1, v6, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 702
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->CONFERENCE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 703
    return-void

    .line 678
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_3

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-eq v1, v2, :cond_4

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    .line 682
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getPau()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    .line 685
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    .line 686
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 693
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEnableTest:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCallMode()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v1

    goto :goto_0

    .line 678
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 17
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v12

    if-nez v12, :cond_0

    .line 418
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string v13, "cannot dial in current state"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 424
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_1

    .line 430
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v12, v13, :cond_2

    .line 442
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    const-string v13, "cannot dial in current state"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 445
    :cond_2
    new-instance v12, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v14, v0, v15}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 447
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    const/16 v13, 0x4e

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_5

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v13, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v13, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 456
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v12, :cond_4

    .line 457
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 459
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 460
    .local v8, msg:Landroid/os/Message;
    const/16 v12, 0x12

    iput v12, v8, Landroid/os/Message;->what:I

    .line 461
    new-instance v12, Landroid/os/AsyncResult;

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/telephony/CommandException;

    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v12, v13, v14, v15}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v12, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    const-wide/16 v12, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 542
    .end local v8           #msg:Landroid/os/Message;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 545
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v12

    .line 468
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 469
    .local v6, len:I
    const/4 v4, 0x0

    .line 470
    .local v4, i:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 471
    .local v9, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 473
    .local v3, firstCharAdded:Z
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_a

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 476
    .local v2, c:C
    const/16 v12, 0x2c

    if-ne v2, v12, :cond_7

    .line 477
    const/16 v12, 0x70

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 478
    :cond_7
    const/16 v12, 0x3b

    if-ne v2, v12, :cond_8

    .line 479
    const/16 v12, 0x77

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 481
    :cond_8
    const/16 v12, 0x2b

    if-ne v2, v12, :cond_9

    if-nez v3, :cond_6

    .line 482
    :cond_9
    const/4 v3, 0x1

    .line 483
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 489
    .end local v2           #c:C
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 493
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 494
    .local v11, string:Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-nez v12, :cond_b

    .line 495
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v7, mbundle:Landroid/os/Bundle;
    const-string v12, "EM_Call_State"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    const-string v12, "Call_Number"

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 502
    const-string v12, "Broadcast ecc start intent for AGPS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 507
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #mbundle:Landroid/os/Bundle;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-nez v12, :cond_d

    .line 508
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 510
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v10

    .line 511
    .local v10, serviceCategory:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12, v10}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v13, v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 523
    .end local v10           #serviceCategory:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v13, v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 535
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 536
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 537
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 307
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 308
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 310
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 313
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallProgressInfo(Landroid/os/Handler;)V

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIncomingCallIndication(Landroid/os/Handler;)V

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCnapNotify(Landroid/os/Handler;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 319
    .local v1, c:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 323
    const-string v5, "GsmCallTracker"

    const-string v6, "dispose: call connnection onDisconnect, cause LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GsmCallTracker"

    const-string v6, "dispose: unexpected error on hangup"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 332
    .end local v1           #c:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v5, :cond_2

    .line 333
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 334
    const-string v5, "GsmCallTracker"

    const-string v6, "dispose: call mPendingMO.onDsiconnect, cause LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 342
    return-void

    .line 337
    :catch_1
    move-exception v2

    .line 338
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GsmCallTracker"

    const-string v6, "dispose: unexpected error on hangup"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1793
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1797
    const-string v1, "  mConnections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1799
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1803
    const-string v1, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1805
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRingingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForegroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBackgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 708
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "GsmCallTracker"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method findVoLteConfCallConnection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "address"
    .parameter "uri"

    .prologue
    .line 3128
    const/4 v1, -0x1

    .line 3129
    .local v1, index:I
    const/4 v0, 0x7

    .local v0, i:I
    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 3130
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConferenceUserData()Lcom/android/internal/telephony/ConferenceCallXml$User;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3132
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getPau()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getPau()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3136
    :cond_0
    move v1, v0

    .line 3142
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[findVoLteConfCallConnection] index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3144
    return v1

    .line 3129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2719
    const-string v0, "getAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2720
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2721
    return-void
.end method

.method getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2724
    const-string v0, "getAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2726
    return-void
.end method

.method public getConferenceCallId()I
    .locals 1

    .prologue
    .line 3167
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    return v0
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1426
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1427
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1428
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1429
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1434
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1427
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1434
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2714
    const-string v0, "getCurrentCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2716
    return-void
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    return v0
.end method

.method getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2729
    const-string v0, "getPpuAndCurrency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2731
    return-void
.end method

.method protected handleCallProgressInfo(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "ar"

    .prologue
    .line 1941
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v4, v32

    check-cast v4, [Ljava/lang/String;

    .line 1942
    .local v4, CallProgressInfo:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1943
    .local v5, callId:I
    const/16 v32, 0x1

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1944
    .local v23, msgType:I
    const/16 v12, 0xff

    .line 1945
    .local v12, dir:I
    const/16 v6, 0xff

    .line 1946
    .local v6, callMode:I
    const/16 v26, 0x0

    .line 1947
    .local v26, number:Ljava/lang/String;
    const/16 v30, 0xff

    .line 1948
    .local v30, toa:I
    const/16 v27, 0x0

    .line 1950
    .local v27, oldParent:Lcom/android/internal/telephony/gsm/GsmCall;
    const/16 v25, 0x0

    .line 1951
    .local v25, newRinging:Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    .line 1952
    .local v16, hasNonHangupStateChanged:Z
    const/16 v31, 0x0

    .line 1953
    .local v31, unknownConnectionAppeared:Z
    const/16 v20, 0x0

    .line 1982
    .local v20, localHangup:Z
    if-eqz v23, :cond_1

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_1

    :cond_0
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_44

    .line 1985
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 2483
    :cond_2
    :goto_0
    return-void

    .line 1989
    :cond_3
    add-int/lit8 v17, v5, -0x1

    .line 1990
    .local v17, i:I
    if-ltz v17, :cond_4

    const/16 v32, 0x6

    move/from16 v0, v17

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 1991
    :cond_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error caller id. i = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1994
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v9, v32, v17

    .line 1995
    .local v9, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v11, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v11}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1996
    .local v11, dc:Lcom/android/internal/telephony/DriverCall;
    const/4 v10, 0x0

    .line 1997
    .local v10, count:I
    const/16 v19, 0x0

    .line 2001
    .local v19, j:I
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    if-nez v9, :cond_6

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    add-int/lit8 v33, v17, 0x7

    aget-object v9, v32, v33

    .line 2006
    :cond_6
    if-eqz v23, :cond_7

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 2008
    :cond_7
    const/16 v32, 0x4

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2009
    const/16 v32, 0x5

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2011
    const/16 v32, 0x6

    aget-object v32, v4, v32

    if-eqz v32, :cond_8

    const/16 v32, 0x6

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_8

    .line 2013
    const/16 v32, 0x6

    aget-object v26, v4, v32

    .line 2015
    const/16 v32, 0x7

    aget-object v32, v4, v32

    if-eqz v32, :cond_8

    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_8

    .line 2016
    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2020
    :cond_8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", dir="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", mode="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", number=\""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\", toa="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2023
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2024
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2025
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2028
    iput v5, v11, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 2030
    if-eqz v12, :cond_d

    const/16 v32, 0x1

    :goto_1
    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 2032
    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 2033
    :cond_9
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2064
    :cond_a
    :goto_2
    iput v6, v11, Lcom/android/internal/telephony/DriverCall;->callMode:I

    .line 2065
    const-string v32, ""

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->pau:Ljava/lang/String;

    .line 2066
    const/16 v32, 0x8

    aget-object v32, v4, v32

    if-eqz v32, :cond_b

    const/16 v32, 0x8

    aget-object v32, v4, v32

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    .line 2068
    const/16 v32, 0x8

    aget-object v32, v4, v32

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->pau:Ljava/lang/String;

    .line 2076
    :cond_b
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    .line 2077
    if-nez v6, :cond_17

    .line 2078
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2079
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2092
    :cond_c
    :goto_3
    move-object/from16 v0, v26

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2093
    if-nez v9, :cond_19

    .line 2094
    sget v32, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, v32

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2098
    :goto_4
    move/from16 v0, v30

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 2099
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    iget v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2101
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "driver call : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2103
    if-nez v9, :cond_27

    .line 2105
    const-string v32, "1. new connection appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_20

    .line 2109
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 2111
    const-string v32, "1.1. it is a MO call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    aput-object v33, v32, v17

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move/from16 v0, v17

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 2116
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    .line 2120
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 2122
    :try_start_0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2124
    :catch_0
    move-exception v15

    .line 2125
    .local v15, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "unexpected error on hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2030
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 2034
    :cond_e
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 2035
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 2036
    :cond_f
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-eq v5, v0, :cond_10

    .line 2037
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 2038
    :cond_10
    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 2039
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 2040
    :cond_11
    if-nez v23, :cond_a

    .line 2042
    const/16 v19, 0x0

    :goto_5
    const/16 v32, 0x7

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v19

    if-eqz v32, :cond_12

    .line 2044
    add-int/lit8 v10, v10, 0x1

    .line 2042
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 2048
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_14

    if-nez v10, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 2053
    :cond_14
    if-nez v10, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 2054
    const-string v32, "MO/MT conflict!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2056
    :cond_15
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 2059
    :cond_16
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 2081
    :cond_17
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ne v6, v0, :cond_18

    .line 2082
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2083
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 2086
    :cond_18
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2087
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 2096
    :cond_19
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getNumberPresentation()I

    move-result v32

    move/from16 v0, v32

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    goto/16 :goto_4

    .line 2133
    :cond_1a
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 2135
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Pending MO dropped before call id assigned!! fg state:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2139
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 2253
    :cond_1b
    :goto_6
    const/16 v16, 0x1

    .line 2328
    :cond_1c
    :goto_7
    if-eqz v25, :cond_1d

    .line 2329
    const-string v32, "notify CallNotifier for New Ringing connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 2336
    :cond_1d
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "dropped during poll size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v24, v32, -0x1

    .local v24, n:I
    :goto_8
    if-ltz v24, :cond_35

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2340
    .local v13, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v32

    if-eqz v32, :cond_32

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_32

    .line 2343
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_31

    .line 2344
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2349
    .local v7, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_9
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. missed/rejected call, conn.cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2350
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. setting cause to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2353
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2354
    const/16 v20, 0x1

    .line 2369
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1e
    :goto_a
    const/16 v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 2337
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_8

    .line 2141
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v24           #n:I
    :cond_1f
    if-nez v23, :cond_1b

    .line 2143
    const-string v32, "MO/MT conflict! Hang up MT call to prevent abnormal behavior."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 2149
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2155
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    move/from16 v32, v0

    add-int/lit8 v33, v17, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 2157
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 2158
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 2159
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    .line 2160
    const-string v32, "Reset mContainForwardingAddress 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2150
    :catch_1
    move-exception v15

    .line 2151
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GsmCallTracker"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2172
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_20
    if-nez v23, :cond_26

    .line 2174
    const-string v32, "1.2 it is a MT call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_21

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCnapName(Ljava/lang/String;)V

    .line 2179
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    .line 2184
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isHandledForVoLteConfCall(Lcom/android/internal/telephony/DriverCall;I)Z

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    move/from16 v32, v0

    if-eqz v32, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    move/from16 v32, v0

    add-int/lit8 v33, v17, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    .line 2191
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->setForwardingAddress(Ljava/lang/String;)V

    .line 2193
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Store forwarding address - "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2194
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Get forwarding address - "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2195
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 2196
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    .line 2201
    :cond_22
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "isInLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", isFullLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_23

    .line 2203
    const-string v32, "hang up MT call because of in DM lock state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2205
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 2206
    :catch_2
    move-exception v15

    .line 2207
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GsmCallTracker"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2212
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v25, v32, v17

    goto/16 :goto_6

    .line 2219
    :cond_24
    const-string v32, "Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2224
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_25

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_25

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    .line 2229
    :cond_25
    const/16 v31, 0x1

    goto/16 :goto_6

    .line 2239
    :cond_26
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 2241
    const-string v32, "1.3 Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 2247
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isHandledForVoLteConfCall(Lcom/android/internal/telephony/DriverCall;I)Z

    move-result v32

    if-nez v32, :cond_1b

    .line 2248
    const/16 v31, 0x1

    goto/16 :goto_6

    .line 2257
    :cond_27
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v27

    .line 2258
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_2c

    .line 2260
    const-string v32, "2. connection disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-nez v32, :cond_29

    :cond_28
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-eqz v32, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2a

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 2269
    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isHandledForVoLteConfCall(Lcom/android/internal/telephony/DriverCall;I)Z

    move-result v32

    if-nez v32, :cond_2b

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v33, v32, v17

    .line 2277
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 2278
    .local v29, string:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2b

    .line 2279
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 2280
    .local v22, mbundle:Landroid/os/Bundle;
    const-string v32, "EM_Call_State"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2281
    const-string v32, "Call_Number"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.location.agps.EMERGENCY_CALL"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2285
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 2286
    const-string v32, "Broadcast ecc end intent for AGPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2294
    .end local v18           #intent:Landroid/content/Intent;
    .end local v22           #mbundle:Landroid/os/Bundle;
    .end local v29           #string:Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    move/from16 v32, v0

    add-int/lit8 v33, v17, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    .line 2296
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 2297
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    .line 2298
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddressCallId:I

    .line 2299
    const-string v32, "Reset mContainForwardingAddress 2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2306
    :cond_2c
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. update current connection[i="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2307
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_2d

    .line 2308
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2313
    :cond_2d
    const/16 v32, 0xff

    move/from16 v0, v32

    if-ne v6, v0, :cond_2e

    .line 2314
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v32

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2320
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isHandledForVoLteConfCall(Lcom/android/internal/telephony/DriverCall;I)Z

    move-result v32

    if-nez v32, :cond_1c

    .line 2321
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v8

    .line 2322
    .local v8, changed:Z
    if-nez v16, :cond_2f

    if-eqz v8, :cond_30

    :cond_2f
    const/16 v16, 0x1

    :goto_c
    goto/16 :goto_7

    :cond_30
    const/16 v16, 0x0

    goto :goto_c

    .line 2346
    .end local v8           #changed:Z
    .restart local v13       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v24       #n:I
    :cond_31
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v7       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto/16 :goto_9

    .line 2355
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_32
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_34

    .line 2357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1e

    .line 2358
    :cond_33
    const-string v32, "2. local hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2360
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2361
    const/16 v20, 0x1

    goto/16 :goto_a

    .line 2363
    :cond_34
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 2364
    const-string v32, "3. invalid number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2366
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2367
    const/16 v20, 0x1

    goto/16 :goto_a

    .line 2373
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-nez v32, :cond_37

    .line 2374
    const-string v32, "get last call failed cause"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v32, v0

    const/16 v33, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 2387
    :cond_36
    :goto_d
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_38

    if-nez v20, :cond_38

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v21, v32, -0x1

    .local v21, m:I
    :goto_e
    if-ltz v21, :cond_38

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2390
    .local v14, dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "4. Force to invoke onDisconnect() of GsmConnection with callID="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", with cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2392
    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2388
    add-int/lit8 v21, v21, -0x1

    goto :goto_e

    .line 2377
    .end local v14           #dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v21           #m:I
    :cond_37
    if-nez v20, :cond_36

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    .line 2380
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "msgType=133:Other case:CallId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ,but not ivoke onDisconnect() of GsmConnection"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2411
    :cond_38
    if-nez v25, :cond_39

    if-eqz v16, :cond_3a

    .line 2412
    :cond_39
    const-string v32, "internal clear disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2413
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 2416
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2418
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3c

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_43

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 2431
    :cond_3b
    :goto_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v28

    .line 2432
    .local v28, pid:I
    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v32

    if-eqz v32, :cond_3c

    .line 2433
    const/16 v32, 0x0

    move/from16 v0, v28

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2434
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Current priority = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2438
    .end local v28           #pid:I
    :cond_3c
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_3d

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 2443
    :cond_3d
    if-eqz v31, :cond_3e

    .line 2444
    const-string v32, "notity unknown connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 2448
    :cond_3e
    if-nez v16, :cond_3f

    if-eqz v25, :cond_41

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_40

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_41

    .line 2449
    :cond_40
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mConfCallState = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_41

    .line 2451
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 2457
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCurrentTotalConnections()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_42

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 2462
    :cond_42
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2463
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2464
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2425
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_3b

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto/16 :goto_f

    .line 2466
    .end local v9           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v10           #count:I
    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v17           #i:I
    .end local v19           #j:I
    .end local v24           #n:I
    :cond_44
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_2

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 2468
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2470
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2471
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 2473
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 2476
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2477
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2478
    const-string v32, "========dump stop========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2480
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    goto/16 :goto_0
.end method

.method protected handleDialCallFailed()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2488
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2492
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_3

    .line 2493
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 2494
    .local v5, string:Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-eqz v6, :cond_0

    .line 2495
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2496
    .local v3, mbundle:Landroid/os/Bundle;
    const-string v6, "EM_Call_State"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2497
    const-string v6, "Call_Number"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2499
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2500
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2501
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 2502
    const-string v6, "Broadcast ecc end intent for AGPS"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2513
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mbundle:Landroid/os/Bundle;
    .end local v5           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "handleDialCallFailed - updatePendingHangupRequest"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 2516
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_1

    .line 2517
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2518
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2520
    :cond_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 2525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropped during poll size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2526
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, n:I
    :goto_1
    if-ltz v4, :cond_7

    .line 2527
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2529
    .local v1, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 2532
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_4

    .line 2533
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2538
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. missed/rejected call, conn.cause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. setting cause to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2541
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2542
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 2526
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2506
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4           #n:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    goto/16 :goto_0

    .line 2535
    .restart local v1       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v4       #n:I
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_2

    .line 2543
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_5
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 2545
    const-string v6, "2. local hangup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2546
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2547
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    goto :goto_3

    .line 2548
    :cond_6
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_2

    .line 2550
    const-string v6, "3. invalid number"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2551
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2552
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    goto :goto_3

    .line 2557
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 2558
    const-string v6, "non-local disconnect"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2559
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 2563
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2567
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2569
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1459
    const-string v18, "GsmCallTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] while being destroyed. Ignoring."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1465
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1467
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1468
    const-string v18, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1470
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 1471
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1472
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1478
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v18, "handle EVENT_CALL_PROGRESS_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleCallProgressInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1483
    :pswitch_3
    const-string v18, "handle EVENT_OPERATION_COMPLETE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1485
    .restart local v4       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1486
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1488
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 1497
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1498
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1504
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v18, "handle EVENT_SWITCH_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1505
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1506
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1516
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1517
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1518
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1520
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1557
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1558
    sget-object v18, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1559
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 1560
    const-string v18, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1562
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1522
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v17

    .line 1526
    .local v17, serviceCategory:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v18 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1550
    .end local v17           #serviceCategory:I
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1551
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 1552
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 1553
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    goto/16 :goto_1

    .line 1538
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v18 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_2

    .line 1566
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v18, "handle EVENT_CONFERENCE_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1567
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1568
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1569
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1571
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    .line 1572
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    .line 1573
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    .line 1576
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1581
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v18, "handle EVENT_SEPARATE_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1582
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1583
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1584
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1587
    :cond_8
    sget-object v18, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1588
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1592
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1593
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1596
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1600
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v18, "handle EVENT_DIAL_CALL_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1602
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1603
    const-string v18, "dial call failed!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1606
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1610
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v18, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1611
    const/4 v3, 0x0

    .line 1612
    .local v3, FgDiscConn:I
    const/4 v2, 0x0

    .line 1614
    .local v2, BgDiscConn:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1616
    .restart local v4       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1618
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1621
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 1622
    const-string v18, "GsmCallTracker"

    const-string v19, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x29

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x2a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x31

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    const v19, 0xffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1635
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    check-cast v15, Landroid/telephony/gsm/GsmCellLocation;

    .line 1636
    .local v15, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v19, 0xc3ba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v20, v18

    const/16 v21, 0x1

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v20, v21

    const/16 v18, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v20, v18

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1641
    .end local v15           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_c
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, s:I
    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_f

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1644
    .local v7, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1641
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1625
    .end local v7           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v12           #i:I
    .end local v16           #s:I
    :cond_d
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    goto/16 :goto_3

    .line 1636
    .restart local v15       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_e
    const/16 v18, -0x1

    goto :goto_4

    .line 1656
    .end local v15           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v12       #i:I
    .restart local v16       #s:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .local v13, j:I
    :goto_6
    if-ltz v13, :cond_11

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1661
    .local v5, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1662
    add-int/lit8 v3, v3, 0x1

    .line 1658
    :cond_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1666
    .end local v5           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v18, v18, v3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 1669
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1672
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, k:I
    :goto_7
    if-ltz v14, :cond_15

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1675
    .restart local v5       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 1676
    add-int/lit8 v2, v2, 0x1

    .line 1672
    :cond_14
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 1680
    .end local v5           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v18, v18, v2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_17

    .line 1683
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1686
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1691
    .end local v2           #BgDiscConn:I
    .end local v3           #FgDiscConn:I
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v14           #k:I
    .end local v16           #s:I
    :pswitch_a
    const-string v18, "handle EVENT_HANG_UP_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 1693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    move/from16 v18, v0

    if-nez v18, :cond_18

    .line 1695
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1698
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1699
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1703
    :pswitch_b
    const-string v18, "handle EVENT_INCOMING_CALL_INDICATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1704
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleIncomingCallIndication(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1714
    :pswitch_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1716
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1720
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1722
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v6, v18

    check-cast v6, [Ljava/lang/String;

    .line 1724
    .local v6, cnapResult:[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handle EVENT_CNAP_INDICATION : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v6, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v6, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1726
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ringingCall.isIdle() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v18

    if-nez v18, :cond_19

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1731
    .restart local v5       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCnapName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    .end local v5           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_19
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v19, v6, v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingCnap:Ljava/lang/String;

    goto/16 :goto_0

    .line 1738
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v6           #cnapResult:[Ljava/lang/String;
    :pswitch_e
    const-string v18, "Receives EVENT_ECONF_SRVCC_INDICATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1740
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v8, v18

    check-cast v8, [I

    .line 1741
    .local v8, connectionIds:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 1742
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConferenceConnections([I)V

    goto/16 :goto_0

    .line 1744
    :cond_1a
    const-string v18, "GsmCallTracker"

    const-string v19, "Receive EVENT_ECONF_SRVCC_INDICATION message but there is no VoLTE conferenece call!"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1750
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v8           #connectionIds:[I
    :pswitch_f
    :try_start_0
    const-string v18, "Receives EVENT_ECONF_RESULT_INDICATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1753
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1754
    .local v10, econfResult:[Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v18, v10, v18

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1757
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #econfResult:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1758
    .local v9, e:Ljava/lang/Exception;
    const-string v18, "Receives EVENT_ECONF_RESULT_INDICATION with error!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1763
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1765
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const-string v18, "Receives EVENT_RETRIEVE_HELD_CALL_RESULT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1766
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1769
    :try_start_1
    const-string v18, "[VoLTE]Hang up the held call since two held calls are not allowed !"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1774
    :goto_8
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    goto/16 :goto_0

    .line 1771
    :catch_1
    move-exception v11

    .line 1772
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v18, "Failed to hang up the held call!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 21
    .parameter "ar"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 842
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 854
    .local v15, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v14, 0x0

    .line 855
    .local v14, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 857
    .local v11, hasNonHangupStateChanged:Z
    const/4 v10, 0x0

    .line 858
    .local v10, hasAnyCallDisconnected:Z
    const/4 v13, 0x0

    .line 859
    .local v13, needsPollDelay:Z
    const/16 v16, 0x0

    .line 861
    .local v16, unknownConnectionAppeared:Z
    const/4 v12, 0x0

    .local v12, i:I
    const/4 v6, 0x0

    .local v6, curDC:I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .line 862
    .local v8, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_10

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v5, v17, v12

    .line 864
    .local v5, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v7, 0x0

    .line 867
    .local v7, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v6, v8, :cond_0

    .line 868
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 870
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v17, v0

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 871
    add-int/lit8 v6, v6, 0x1

    .line 877
    :cond_0
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "poll: conn[i="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", dc="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 880
    if-nez v5, :cond_a

    if-eqz v7, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 884
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "poll: pendingMO="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v18, v0

    aput-object v18, v17, v12

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 890
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 894
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1055
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v6           #curDC:I
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v8           #dcSize:I
    .end local v10           #hasAnyCallDisconnected:Z
    .end local v11           #hasNonHangupStateChanged:Z
    .end local v12           #i:I
    .end local v13           #needsPollDelay:Z
    .end local v14           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v15           #polledCalls:Ljava/util/List;
    .end local v16           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 843
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 846
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 850
    .end local v15           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 841
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 873
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v6       #curDC:I
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v8       #dcSize:I
    .restart local v10       #hasAnyCallDisconnected:Z
    .restart local v11       #hasNonHangupStateChanged:Z
    .restart local v12       #i:I
    .restart local v13       #needsPollDelay:Z
    .restart local v14       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v15       #polledCalls:Ljava/util/List;
    .restart local v16       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 899
    :catch_0
    move-exception v9

    .line 900
    .local v9, ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string v17, "GsmCallTracker"

    const-string v18, "unexpected error on hangup"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 908
    .end local v9           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v18, v17, v12

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v14, v17, v12

    .line 936
    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 862
    :cond_7
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 919
    :cond_8
    const-string v17, "GsmCallTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Phantom call appeared "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 927
    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 933
    :cond_9
    const/16 v16, 0x1

    goto :goto_4

    .line 937
    :cond_a
    if-eqz v5, :cond_b

    if-nez v7, :cond_b

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v18, v17, v12

    goto :goto_5

    .line 944
    :cond_b
    if-eqz v5, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v18, v17, v12

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aget-object v14, v17, v12

    .line 954
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 955
    :cond_d
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 957
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 958
    .local v4, changed:Z
    if-nez v11, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    const/4 v11, 0x1

    :goto_6
    goto/16 :goto_5

    :cond_f
    const/4 v11, 0x0

    goto :goto_6

    .line 984
    .end local v4           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 985
    const-string v17, "GsmCallTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 990
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 993
    :cond_11
    if-eqz v14, :cond_12

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1000
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v12, v17, -0x1

    :goto_7
    if-ltz v12, :cond_17

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1003
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_15

    .line 1006
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1007
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1013
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "missed/rejected call, conn.cause="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1014
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting cause to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1017
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v17

    or-int v10, v10, v17

    .line 1000
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_13
    :goto_9
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 1009
    :cond_14
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v3       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_8

    .line 1018
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_15
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16

    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1020
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1021
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v17

    or-int v10, v10, v17

    goto :goto_9

    .line 1026
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_18

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1031
    :cond_18
    if-eqz v13, :cond_19

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 1040
    :cond_19
    if-nez v14, :cond_1a

    if-nez v11, :cond_1a

    if-eqz v10, :cond_1b

    .line 1041
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1044
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1046
    if-eqz v16, :cond_1c

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 1050
    :cond_1c
    if-nez v11, :cond_1d

    if-nez v14, :cond_1d

    if-eqz v10, :cond_1

    .line 1051
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method public handleVoLteConfCallMessage(ILcom/android/internal/telephony/ConferenceCallXml;)V
    .locals 12
    .parameter "callId"
    .parameter "xmlData"

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0xe

    .line 3019
    :try_start_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v7, p1, :cond_1

    .line 3020
    const/4 v2, 0x7

    .local v2, i:I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 3021
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    if-eqz v7, :cond_0

    .line 3022
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConferenceUserData(Lcom/android/internal/telephony/ConferenceCallXml$User;)V

    .line 3020
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3027
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ConferenceCallXml;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 3028
    .local v6, users:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ConferenceCallXml$User;

    .line 3029
    .local v5, u:Lcom/android/internal/telephony/ConferenceCallXml$User;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ConferenceCallXml]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getDisplayText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3031
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3032
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    sget-object v8, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    :goto_2
    iput-object v7, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3033
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3034
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3035
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 3036
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3037
    const/16 v7, 0x81

    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3038
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getDisplayText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3039
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3040
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3041
    iget-object v7, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3052
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getSipTelUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->findVoLteConfCallConnection(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 3053
    .local v4, index:I
    if-eq v4, v11, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v4

    if-eqz v7, :cond_7

    .line 3054
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disconnected"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3055
    const-string v7, "The call is disconnected!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3056
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3104
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v5           #u:Lcom/android/internal/telephony/ConferenceCallXml$User;
    .end local v6           #users:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    :catch_0
    move-exception v1

    .line 3105
    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not handle VoLTE conference call message! - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3108
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "############################################################################"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3109
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v10, :cond_d

    .line 3110
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    if-eqz v7, :cond_4

    .line 3111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3109
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3032
    .end local v2           #i:I
    .restart local v0       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #u:Lcom/android/internal/telephony/ConferenceCallXml$User;
    .restart local v6       #users:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    :cond_5
    :try_start_1
    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 3060
    .restart local v4       #index:I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConferenceUserData(Lcom/android/internal/telephony/ConferenceCallXml$User;)V

    .line 3061
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v4

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCallMode(I)V

    .line 3062
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v4

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto/16 :goto_1

    .line 3065
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disconnected"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3067
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v7, p1, :cond_2

    .line 3068
    const/4 v2, 0x7

    .line 3069
    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    if-eqz v7, :cond_8

    .line 3070
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3072
    :cond_8
    if-ge v2, v10, :cond_9

    .line 3073
    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3074
    const/16 v7, 0x16

    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->callMode:I

    .line 3075
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v8, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v0, p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v8, v7, v2

    .line 3077
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConferenceUserData(Lcom/android/internal/telephony/ConferenceCallXml$User;)V

    .line 3078
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ConferenceCallXml]: create new connection, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3080
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    goto/16 :goto_1

    .line 3083
    :cond_9
    const-string v7, "Failed to create GsmConnection object for conference call joiner!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3090
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v2           #i:I
    .end local v4           #index:I
    .end local v5           #u:Lcom/android/internal/telephony/ConferenceCallXml$User;
    :cond_a
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v7, p1, :cond_3

    .line 3091
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-eq v7, v11, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_b

    .line 3093
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConferenceCallData(Lcom/android/internal/telephony/ConferenceCallXml;)V

    .line 3097
    :cond_b
    const/4 v2, 0x7

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v10, :cond_3

    .line 3098
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConferenceUserData()Lcom/android/internal/telephony/ConferenceCallXml$User;

    move-result-object v7

    if-nez v7, :cond_c

    .line 3100
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3097
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3114
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #users:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    :cond_d
    const-string v7, "############################################################################"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 3116
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 3117
    return-void
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 9
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1189
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1190
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "no connections in call"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1193
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v4, :cond_7

    .line 1196
    const/4 v1, 0x0

    .line 1198
    .local v1, bHangupDisconnectingCall:Z
    const-string v4, "GsmCallTracker"

    const-string v5, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 1201
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1202
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1203
    .local v2, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1206
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_2

    .line 1207
    const/4 v1, 0x1

    .line 1210
    .end local v3           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 1211
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1212
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1213
    .restart local v2       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1216
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_4

    .line 1217
    const/4 v1, 0x1

    .line 1220
    .end local v3           #i:I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_6

    .line 1221
    const-string v4, "[Not hang up]hangup(GsmCall call)"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1222
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1223
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1224
    .restart local v2       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1227
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_6

    .line 1228
    const/4 v1, 0x1

    .line 1233
    .end local v3           #i:I
    :cond_6
    if-eqz v1, :cond_7

    .line 1234
    const-string v4, "GsmCallTracker"

    const-string v5, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .end local v1           #bHangupDisconnectingCall:Z
    :goto_3
    return-void

    .line 1239
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_8

    .line 1240
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1241
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1242
    const-string v4, "(ringing) hangup incoming/waiting"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1287
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1288
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto :goto_3

    .line 1249
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_b

    .line 1250
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1251
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1252
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1254
    const-string v4, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_4

    .line 1258
    :cond_9
    const-string v4, "(foregnd) hangup active"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1262
    .restart local v2       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1264
    const-string v4, "(foregnd) hangup active Emergency call by connection index"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_4

    .line 1267
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_4

    .line 1270
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_d

    .line 1271
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1273
    const-string v4, "hangup all conns in background call"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_4

    .line 1277
    :cond_c
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1278
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1279
    const-string v4, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto/16 :goto_4

    .line 1283
    :cond_d
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "does not belong to GsmCallTracker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 9
    .parameter "call"
    .parameter "discRingingCallCause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1296
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1297
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "no connections in call"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1300
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v5, :cond_5

    .line 1303
    const/4 v0, 0x0

    .line 1305
    .local v0, bHangupDisconnectingCall:Z
    const-string v5, "GsmCallTracker"

    const-string v6, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 1308
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1309
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1310
    .local v1, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1308
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1314
    .end local v1           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v5, :cond_2

    .line 1315
    const/4 v0, 0x1

    .line 1318
    .end local v3           #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 1319
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1320
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1321
    .restart local v1       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1319
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1325
    .end local v1           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v5, :cond_4

    .line 1326
    const/4 v0, 0x1

    .line 1331
    .end local v3           #i:I
    :cond_4
    if-eqz v0, :cond_5

    .line 1332
    const-string v5, "GsmCallTracker"

    const-string v6, "hangup(GsmCall, DisconnectCause)Hang up disconnecting call, return directly"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .end local v0           #bHangupDisconnectingCall:Z
    :goto_2
    return-void

    .line 1337
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v5, :cond_7

    .line 1338
    const-string v5, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1340
    const-string v5, "Hang up waiting or background call by connection index."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v2, v5

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1342
    .local v2, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v6

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1354
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v5, :cond_6

    .line 1355
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v4, v5

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1356
    .local v4, ringingConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iput-object p2, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1358
    .end local v4           #ringingConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto :goto_2

    .line 1346
    .end local v2           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GsmCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "does not belong to GsmCallTracker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1117
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1118
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 1126
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1128
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1129
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1147
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1148
    return-void

    .line 1133
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v1

    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1139
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1140
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1142
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupActiveCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2698
    const-string v0, "hangupActiveCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2704
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_1

    .line 2705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 2710
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2711
    return-void

    .line 2707
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0
.end method

.method hangupAll()V
    .locals 2

    .prologue
    .line 2680
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2684
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2685
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2686
    return-void
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"

    .prologue
    .line 1413
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1414
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1415
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1416
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1418
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1419
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupAllEx()V
    .locals 2

    .prologue
    .line 2689
    const-string v0, "hangupAllEx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAllEx(Landroid/os/Message;)V

    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2693
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2694
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2695
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1380
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1381
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1382
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1383
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1403
    :goto_1
    return-void

    .line 1380
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1390
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 1391
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1392
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 1393
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1390
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1398
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1399
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 1400
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1401
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 1402
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1399
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1408
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1372
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1375
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1365
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1368
    return-void
.end method

.method protected isHandledForVoLteConfCall(Lcom/android/internal/telephony/DriverCall;I)Z
    .locals 10
    .parameter "dc"
    .parameter "msgType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, -0x1

    const/16 v8, 0x16

    const/16 v7, 0xe

    .line 2824
    const/4 v2, 0x0

    .line 2826
    .local v2, result:Z
    sparse-switch p2, :sswitch_data_0

    .line 2964
    :cond_0
    :goto_0
    const-string v3, "############################################################################"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_11

    .line 2966
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 2967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2965
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2828
    .end local v0           #i:I
    :sswitch_0
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->callMode:I

    if-ne v3, v8, :cond_0

    .line 2829
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->setRoleOfConnection(I)V

    goto :goto_0

    .line 2834
    :sswitch_1
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->callMode:I

    if-ne v5, v8, :cond_2

    move v2, v3

    .line 2835
    :goto_2
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2834
    goto :goto_2

    .line 2838
    :sswitch_2
    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->callMode:I

    if-ne v4, v8, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v4, v5, :cond_0

    .line 2840
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 2841
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    .line 2843
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    const/4 v4, 0x7

    if-ge v0, v4, :cond_5

    .line 2844
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    .line 2847
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCallMode()I

    move-result v4

    if-eq v4, v8, :cond_4

    .line 2850
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v1, v4, -0x1

    .line 2851
    .local v1, newIndex:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->changeIndex(I)V

    .line 2852
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 2853
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v0

    aput-object v5, v4, v1

    .line 2856
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEnableTest:Z

    if-eqz v4, :cond_3

    .line 2857
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x13

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 2858
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 2862
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v5, 0x0

    aput-object v5, v4, v0
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2843
    .end local v1           #newIndex:I
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2869
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v4, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 2870
    const/4 v2, 0x1

    .line 2871
    const-string v3, "[VoLTE]VoLTE conference call changed to active state."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2876
    .end local v0           #i:I
    :sswitch_3
    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->callMode:I

    if-ne v4, v8, :cond_0

    .line 2877
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 2878
    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    .line 2879
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setRoleOfConnection(I)V

    .line 2880
    const/4 v2, 0x1

    .line 2881
    const-string v3, "[VoLTE]This is VoLTE conference call."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2886
    :sswitch_4
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v3, v4, :cond_7

    .line 2887
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 2889
    const/4 v0, 0x7

    .restart local v0       #i:I
    :goto_5
    if-ge v0, v7, :cond_6

    .line 2890
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 2889
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2892
    :cond_6
    const-string v3, "[VoLTE]VoLTE conference call changed to HOLDING state."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2893
    .end local v0           #i:I
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    if-ne v3, v4, :cond_0

    .line 2896
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    goto/16 :goto_0

    .line 2900
    :sswitch_5
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    if-ne v3, v4, :cond_0

    .line 2902
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 2904
    const/4 v0, 0x7

    .restart local v0       #i:I
    :goto_6
    if-ge v0, v7, :cond_8

    .line 2905
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 2904
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2907
    :cond_8
    const-string v3, "[VoLTE]VoLTE conference call changed to ACTIVE state."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2912
    .end local v0           #i:I
    :sswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_b

    move v2, v3

    .line 2914
    :goto_7
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    if-ne v3, v5, :cond_e

    .line 2915
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    .line 2917
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    if-eq v3, v9, :cond_9

    .line 2919
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallActiveCallId:I

    const/16 v5, 0x1c

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->retrieveHeldCall(ILandroid/os/Message;)V

    .line 2923
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    if-ne v3, v4, :cond_c

    .line 2924
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V

    .line 2925
    const/4 v2, 0x1

    .line 2934
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 2936
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_DISCONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConfCallState:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 2937
    const-string v3, "[VoLTE]VoLTE conference call changed to idle state."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    .line 2912
    goto :goto_7

    .line 2927
    :cond_c
    const/4 v0, 0x7

    .restart local v0       #i:I
    :goto_8
    if-ge v0, v7, :cond_a

    .line 2928
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    if-eqz v3, :cond_d

    .line 2929
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V

    .line 2927
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2938
    .end local v0           #i:I
    :cond_e
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    if-ne v3, v5, :cond_0

    .line 2939
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberToMerge:Ljava/lang/String;

    .line 2940
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallIdToMerge:I

    .line 2941
    const/4 v2, 0x1

    .line 2943
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    if-eqz v3, :cond_f

    .line 2944
    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->removeConnectionSilently(I)V

    .line 2945
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAddedMemberConnectionCreated:Z

    goto/16 :goto_0

    .line 2948
    :cond_f
    const/4 v0, 0x7

    .line 2949
    .restart local v0       #i:I
    :goto_9
    if-ge v0, v7, :cond_10

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    if-eqz v3, :cond_10

    .line 2950
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2953
    :cond_10
    if-ge v0, v7, :cond_0

    .line 2954
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->changeIndex(I)V

    .line 2955
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 2956
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 2957
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 2970
    :cond_11
    const-string v3, "############################################################################"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VoLTE][isHandledForVoLteConfCall]msgType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2974
    return v2

    .line 2863
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 2826
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0x85 -> :sswitch_6
    .end sparse-switch
.end method

.method public isRejectedByMoms()Z
    .locals 1

    .prologue
    .line 2812
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1788
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 384
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 385
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 386
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 369
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 371
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 358
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 360
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 631
    return-void

    .line 629
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2739
    const-string v0, "resetAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2740
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2741
    return-void
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1153
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V

    .line 1160
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :goto_0
    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1164
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2734
    const-string v0, "setAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2736
    return-void
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 7
    .parameter "accept"

    .prologue
    const/4 v6, 0x0

    .line 2753
    const/4 v0, 0x0

    .line 2755
    .local v0, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2757
    if-eqz p1, :cond_1

    .line 2758
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2760
    .local v1, pid:I
    const/4 v0, 0x0

    .line 2761
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2766
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForwardingAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2767
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContainForwardingAddress:Z

    .line 2772
    .end local v1           #pid:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2773
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2774
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2775
    return-void

    .line 2770
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1173
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 1176
    return-void
.end method

.method setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2744
    const-string v2, "setPpuAndCurrency"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2745
    const-string v0, ""

    .line 2746
    .local v0, cur:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2749
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2750
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 636
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 637
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot be in the incoming state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    if-nez v2, :cond_4

    .line 643
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEnableTest:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 645
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 646
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 648
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 650
    :cond_1
    iput-boolean v4, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 651
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoLteConfCallId:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 652
    const/4 v1, 0x7

    .local v1, i:I
    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 653
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 652
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 662
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 663
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 664
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 665
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 669
    :cond_4
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 392
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 376
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 366
    return-void
.end method

.method updateConnection(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 3
    .parameter "dc"
    .parameter "c"

    .prologue
    .line 2984
    if-eqz p2, :cond_0

    .line 2985
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 2986
    .local v0, newDc:Lcom/android/internal/telephony/DriverCall;
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2987
    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2988
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2989
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 2990
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 2991
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2992
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2993
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 2994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ConferenceCallXml]: updateConnection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2996
    .end local v0           #newDc:Lcom/android/internal/telephony/DriverCall;
    :cond_0
    return-void
.end method

.method updatePendingHangupRequest()V
    .locals 2

    .prologue
    .line 2782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2783
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 2784
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 2785
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 2786
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 2787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 2791
    :cond_0
    return-void
.end method

.method vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1898
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x12

    .line 1836
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 1838
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1839
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial VT call in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1842
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_1

    .line 1843
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "can only dial VT call in idle state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1846
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v6, v7, p1, p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1847
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    .line 1848
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1850
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    const/16 v7, 0x4e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1854
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v7, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1890
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1891
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1893
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v6

    .line 1860
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1861
    .local v3, len:I
    const/4 v2, 0x0

    .line 1862
    .local v2, i:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1863
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1865
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    .line 1866
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1868
    .local v0, c:C
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_5

    .line 1869
    const/16 v6, 0x70

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1870
    :cond_5
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_6

    .line 1871
    const/16 v6, 0x77

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1873
    :cond_6
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_7

    if-nez v1, :cond_4

    .line 1874
    :cond_7
    const/4 v1, 0x1

    .line 1875
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1880
    .end local v0           #c:C
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1882
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v5

    .line 1883
    .local v5, serviceCategory:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 1884
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, p2, p3, v8}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1886
    .end local v5           #serviceCategory:I
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, p2, p3, v8}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1903
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
