.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field final synthetic val$gprsDefaultSIM:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4007
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$gprsDefaultSIM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4009
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mCreateApnLock:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 4010
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->syncRoamingSetting()V

    .line 4011
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #calls: Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4013
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 4015
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    .line 4016
    .local v1, slotId:I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4017
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v4, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4018
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v4, "simLoaded"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 4022
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRecordsLoaded: try to enableApnTypeGemini mUserDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4025
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$gprsDefaultSIM:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v2, :cond_1

    .line 4027
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #calls: Lcom/android/internal/telephony/dataconnection/DcTracker;->isGeminiDcStateDetachingOrDetached(I)Z
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4028
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 4029
    .local v0, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->enableApnTypeGemini(Ljava/lang/String;I)I

    .line 4043
    .end local v0           #geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v5, 0x42003

    const-string v6, "simLoaded"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4044
    monitor-exit v3

    .line 4045
    return-void

    .line 4031
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApnType(Ljava/lang/String;)I

    goto :goto_0

    .line 4044
    .end local v1           #slotId:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
