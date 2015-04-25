.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3294
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3297
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3298
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #calls: Lcom/android/internal/telephony/uicc/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$500(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3371
    :cond_0
    :goto_0
    return-void

    .line 3300
    :cond_1
    const-string v7, "action_pin_dismiss"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3301
    const-string v7, "simslot"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3302
    .local v2, simId:I
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 3303
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3304
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3306
    .end local v2           #simId:I
    :cond_2
    const-string v7, "action_melock_dismiss"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3307
    const-string v7, "simslot"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3308
    .restart local v2       #simId:I
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 3309
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3310
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3312
    .end local v2           #simId:I
    :cond_3
    const-string v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3313
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #calls: Lcom/android/internal/telephony/uicc/SIMRecords;->processShutdownIPO()V
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$700(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3315
    const-string v7, "gsm.sim.operator.default-name"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    const-string v7, "gsm.sim.operator.default-name.2"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$800(Lcom/android/internal/telephony/uicc/SIMRecords;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v8, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3324
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-boolean v12, v7, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3327
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$900(Lcom/android/internal/telephony/uicc/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3328
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v7, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1002(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3329
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mEfRat:[B
    invoke-static {v7, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1102(Lcom/android/internal/telephony/uicc/SIMRecords;[B)[B

    .line 3332
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 3333
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v8, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3334
    :cond_5
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3335
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIMBroadCastReceiver action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3336
    const-string v7, "gsm.sim.locale.waiting"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #calls: Lcom/android/internal/telephony/uicc/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1200(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto/16 :goto_0

    .line 3339
    :cond_6
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3340
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3341
    .local v1, reasonExtra:Ljava/lang/String;
    const-string v7, "simId"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3342
    .local v4, slot:I
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3343
    .local v3, simState:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",simState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3344
    const-string v7, "PUK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3345
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v7

    if-ne v4, v7, :cond_8

    .line 3346
    const/4 v6, 0x0

    .line 3347
    .local v6, strPuk1Count:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v8

    aget-object v7, v7, v8

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3348
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3349
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3350
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->setPhbReady(Z)V

    .line 3353
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 3354
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #calls: Lcom/android/internal/telephony/uicc/SIMRecords;->setNumberToSimInfo()V
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1300(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 3357
    .end local v6           #strPuk1Count:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v7

    if-ne v4, v7, :cond_0

    .line 3358
    const/4 v5, 0x0

    .line 3359
    .local v5, strPhbReady:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$600(Lcom/android/internal/telephony/uicc/SIMRecords;)I

    move-result v8

    aget-object v7, v7, v8

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3361
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sim state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPhbReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$400(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",strPhbReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3362
    const-string v7, "READY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3363
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$400(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3364
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v7, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3365
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$400(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0
.end method
