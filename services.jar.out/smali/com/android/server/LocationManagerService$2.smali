.class Lcom/android/server/LocationManagerService$2;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 271
    :try_start_0
    const-string v0, "LocationManagerService"

    const-string v2, "LOCATION_PROVIDERS_ALLOWED : location_providers_allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->triggerProviderCheck()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
