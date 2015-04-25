.class Landroid/app/Activity$2;
.super Landroid/app/MultiWindowListener;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->initMultiWindowListener()Landroid/app/MultiWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 5581
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/MultiWindowListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseFloatingWindow()V
    .locals 2

    .prologue
    .line 5589
    :try_start_0
    const-string v0, "Activity"

    const-string/jumbo v1, "onCloseFloatingWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeStack(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5594
    :goto_0
    return-void

    .line 5591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMaxFloatingWindow()V
    .locals 3

    .prologue
    .line 5603
    :try_start_0
    const-string v0, "Activity"

    const-string/jumbo v1, "onMaxFloatingWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->restoreStack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5608
    :goto_0
    return-void

    .line 5605
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStickFloatingWindow()V
    .locals 2

    .prologue
    .line 5617
    :try_start_0
    const-string v0, "Activity"

    const-string/jumbo v1, "onStickFloatingWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    #getter for: Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->stickStack(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5622
    :goto_0
    return-void

    .line 5619
    :catch_0
    move-exception v0

    goto :goto_0
.end method
