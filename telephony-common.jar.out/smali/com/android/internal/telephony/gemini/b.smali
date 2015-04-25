.class Lcom/android/internal/telephony/gemini/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1148
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/b;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "Time out"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/b;->H:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1153
    return-void
.end method
