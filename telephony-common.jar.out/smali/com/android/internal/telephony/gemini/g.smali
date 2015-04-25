.class Lcom/android/internal/telephony/gemini/g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/SimSwitchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/16 v2, 0x1f8

    const/16 v3, 0x1f6

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_POWER_OFF_MD_RIL1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 106
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 107
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "sim switch power off md failed."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->isSimSwitchSwapped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configSimSwitch(ZLandroid/os/Message;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_POWER_OFF_MD_RIL2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configSimSwitch(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive MGS_POWER_ON_MD_RIL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    check-cast v0, Landroid/os/AsyncResult;

    .line 127
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_POWER_ON_MD_RIL exception"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ints.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 132
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power on result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 134
    aget v0, v0, v6

    if-ne v0, v5, :cond_0

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1fa

    if-ne v0, v1, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 150
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH, waiting for radio available"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1fa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1fb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_CONFIG_SIM_SWITCH and exception happened"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->g(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V

    goto/16 :goto_0

    .line 172
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_7

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_SIM_INSERTED_STATUS_RIL1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both SIM inserted/error status received, finish SIM Switch configuration ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->g(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V

    goto/16 :goto_0

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    const-string v1, "Receive MGS_SIM_INSERTED_STATUS_RIL2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_2

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for SIM inserted status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/g;->ak:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
