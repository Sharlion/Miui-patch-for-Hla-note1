.class Lcom/android/internal/telephony/uicc/SIMRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3261
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 3263
    if-nez p2, :cond_1

    .line 3291
    :cond_0
    :goto_0
    return-void

    .line 3264
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHandlePhbReadyReceiver Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3266
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3267
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3268
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSIMInfoReady:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$302(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3271
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3272
    .local v1, phbFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3273
    const-string v3, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3274
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3277
    .end local v1           #phbFilter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3278
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v4, "mHandlePhbReadyReceiver ACTION_SHUTDOWN_IPO: reset PHB_READY"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3280
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3283
    :cond_3
    const-string v3, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3284
    const-string v3, "simId"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3285
    .local v2, simId:I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHandlePhbReadyReceiver ACTION_IVSR_NOTIFY: reset SIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PHB_READY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3286
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3287
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    goto/16 :goto_0
.end method
