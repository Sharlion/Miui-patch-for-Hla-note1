.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 826
    if-nez p2, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntentReceiver Receive action "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 830
    const-string v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 831
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v10, "mIntentReceiver ACTION_SHUTDOWN_IPO"

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 832
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    goto :goto_0

    .line 833
    :cond_2
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 834
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ss"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 835
    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 836
    .local v8, stateExtra:Ljava/lang/String;
    const/4 v7, 0x0

    .line 838
    .local v7, slot:I
    const-string v9, "simId"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 841
    sget v9, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v7, v9, :cond_3

    .line 842
    const-string v9, "UiccController"

    const-string v10, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, iccType:Ljava/lang/String;
    const-string v9, "READY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v9

    if-ne v7, v9, :cond_0

    const-string v9, "USIM"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 850
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v12, 0xc8

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->openIccApplication(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 852
    .end local v6           #iccType:Ljava/lang/String;
    .end local v7           #slot:I
    .end local v8           #stateExtra:Ljava/lang/String;
    :cond_4
    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 855
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccController$1$1;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/uicc/UiccController$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController$1;)V

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccController$1$1;->start()V

    goto/16 :goto_0

    .line 873
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 874
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$500(Lcom/android/internal/telephony/uicc/UiccController;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 875
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$502(Lcom/android/internal/telephony/uicc/UiccController;Z)Z

    .line 876
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 880
    .local v2, airplaneMode:I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dual_sim_mode_setting"

    const/4 v11, 0x3

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 885
    .local v4, dualSimMode:I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntentReceiver EVENT_INITIALIZATION_FRAMEWORK_DONE airplaneMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dualSimMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 886
    if-nez v2, :cond_0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v10

    shl-int/2addr v9, v10

    and-int/2addr v9, v4

    if-lez v9, :cond_0

    .line 888
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v11, 0x6f

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 895
    .end local v2           #airplaneMode:I
    .end local v4           #dualSimMode:I
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v9, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 899
    .local v3, currentPhone:Lcom/android/internal/telephony/Phone;
    const/4 v5, 0x0

    .line 900
    .local v5, exist:Z
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 901
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v5

    .line 903
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntentReceiver EVENT_INITIALIZATION_FRAMEWORK_DONE, exist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 904
    if-eqz v5, :cond_0

    .line 905
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    goto/16 :goto_0

    .line 908
    .end local v3           #currentPhone:Lcom/android/internal/telephony/Phone;
    .end local v5           #exist:Z
    :cond_8
    const-string v9, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 909
    const-string v9, "gsm.3gswitch"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 910
    .local v0, SimIdFor3G:I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v9

    if-ne v0, v9, :cond_0

    .line 911
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " will reset modem"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 912
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
