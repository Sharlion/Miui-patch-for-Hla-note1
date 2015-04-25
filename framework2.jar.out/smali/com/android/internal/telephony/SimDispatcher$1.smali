.class Lcom/android/internal/telephony/SimDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SimDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 156
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v8, "[BroadcastReceiver]+"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 160
    .local v6, simType:I
    const/4 v2, 0x0

    .line 161
    .local v2, eventId:I
    const/4 v4, 0x0

    .line 163
    .local v4, needToNotify:Z
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, simState:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " sim State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 166
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    #setter for: Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/SimDispatcher;->access$002(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    const-string v7, "LOADED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 168
    const v2, 0x187d2

    .line 169
    const/4 v6, 0x1

    .line 170
    const/4 v4, 0x1

    .line 187
    .end local v5           #simState:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eventId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", needToNotify:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 189
    if-eqz v4, :cond_1

    .line 190
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 193
    .local v1, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 196
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 199
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 200
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 202
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v8, "Notify VA for USIM ready."

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    #getter for: Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    invoke-static {v7}, Lcom/android/internal/telephony/SimDispatcher;->access$200(Lcom/android/internal/telephony/SimDispatcher;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 208
    .end local v1           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v8, "[BroadcastReceiver]-"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 209
    return-void

    .line 171
    .restart local v5       #simState:Ljava/lang/String;
    :cond_2
    const-string v7, "ABSENT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    const v2, 0x187d3

    .line 173
    const/4 v6, 0x0

    .line 174
    const/4 v4, 0x1

    goto :goto_0

    .line 176
    .end local v5           #simState:Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, isimState:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isim State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 179
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    #setter for: Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/android/internal/telephony/SimDispatcher;->access$102(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    #getter for: Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/SimDispatcher;->access$100(Lcom/android/internal/telephony/SimDispatcher;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LOADED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    const v2, 0x187d2

    .line 182
    const/4 v6, 0x2

    .line 183
    const/4 v4, 0x1

    goto/16 :goto_0
.end method
