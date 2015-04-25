.class Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 227
    const-string v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 231
    packed-switch v0, :pswitch_data_0

    .line 253
    const-string v0, "Recv SERVICE_STATE_CHANGED invalid state"

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    move-result v2

    aget v0, v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SIM is none and default SIM is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", then enableApnTypeGemini()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    .line 267
    :cond_1
    monitor-exit p0

    .line 268
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_POWER_OFF Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 240
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_IN_SERVICE Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_OUT_OF_SERVICE Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->v:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1

    goto/16 :goto_0

    .line 250
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv STATE_EMERGENCY_ONLY Intent from simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->access$200(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
