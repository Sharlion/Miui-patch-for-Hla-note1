.class Lcom/android/internal/telephony/gemini/e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    move-result v1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_DETACH: request_use_gprs_sim_id["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aget v0, v0, v1

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()I

    move-result v0

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, -0x1

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isPeerPhoneGettingAvailableNetwork()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    const-string v0, "PLMN search, don\'t attach"

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "persist.ril.gprs.setting"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    const/4 v1, 0x0

    .line 145
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    :cond_1
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    add-int/lit8 v0, v1, -0x1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data on and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to acting state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data off and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to acting state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    goto/16 :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v2

    aget v2, v2, v1

    aput v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    aput v3, v0, v1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 170
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v4

    aget v4, v4, v1

    aget-object v4, v0, v4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    goto :goto_2

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 175
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    .line 182
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 183
    monitor-exit v2

    goto/16 :goto_0

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v3

    aget v1, v3, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 190
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v0, -0x5

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 193
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_NOT_AVAILABLE."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToIdleState(I)V

    .line 200
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/e;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    .line 198
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_RADIO_OFF."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_4

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
