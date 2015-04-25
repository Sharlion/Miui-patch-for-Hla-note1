.class Lcom/android/server/power/PowerManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 701
    const-string v0, "PowerManagerService"

    const-string v1, "SCREEN_TIMEOUT_MINIMUM."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    #setter for: Lcom/android/server/power/PowerManagerService;->mPreWakeUpWhenPluggedOrUnpluggedConfig:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2402(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 704
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 705
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutMin:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 706
    return-void
.end method
