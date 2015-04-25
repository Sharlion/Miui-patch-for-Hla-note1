.class Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PsArbitrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PsArbitrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PsArbitratorBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PsArbitrator;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PsArbitrator;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/PsArbitrator;Lcom/android/internal/telephony/PsArbitrator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;-><init>(Lcom/android/internal/telephony/PsArbitrator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 896
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 900
    return-void
.end method
