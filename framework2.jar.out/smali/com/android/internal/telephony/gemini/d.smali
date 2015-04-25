.class Lcom/android/internal/telephony/gemini/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 3633
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 3637
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3639
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3640
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3641
    const-string v2, "simId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3642
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3643
    const-string v5, "IMSI"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3644
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 3646
    if-eqz v0, :cond_5

    .line 3647
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 3652
    if-eqz v5, :cond_8

    .line 3653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.op"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_7

    const-string v0, ""

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3655
    iget-object v6, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 3656
    iget-object v6, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertImsi2Op (simIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", opStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imsi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3658
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOpStr[slotId] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 3667
    :goto_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_d

    .line 3668
    const-string v2, ""

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3669
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOpStr[i]) is empty : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    move v0, v1

    .line 3674
    :goto_2
    if-eqz v0, :cond_6

    .line 3675
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v2, "get all imsi, check if need sim switch again"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3676
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->bc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3677
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3678
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    move v2, v0

    .line 3679
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 3680
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I

    move-result v5

    .line 3681
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", target3GSim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_6

    if-ltz v5, :cond_1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v0, :cond_1

    if-ne v6, v5, :cond_2

    :cond_1
    if-ne v5, v9, :cond_6

    if-eq v6, v4, :cond_6

    .line 3683
    :cond_2
    if-ne v5, v9, :cond_c

    if-eq v6, v4, :cond_c

    move v0, v4

    .line 3686
    :goto_4
    if-eq v6, v4, :cond_3

    if-eq v0, v4, :cond_4

    :cond_3
    if-ne v6, v4, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v4

    if-ne v0, v4, :cond_b

    .line 3689
    :cond_4
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 3690
    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 3691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v2, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3692
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_6

    .line 3693
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 3692
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3649
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "Null iccRec"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 3700
    :cond_6
    :goto_7
    return-void

    .line 3653
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3661
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/d;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "Null sIccRecordsInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    goto :goto_7

    .line 3667
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v2, v3

    .line 3678
    goto/16 :goto_3

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    move v0, v5

    goto :goto_4

    :cond_d
    move v0, v3

    goto/16 :goto_2
.end method
