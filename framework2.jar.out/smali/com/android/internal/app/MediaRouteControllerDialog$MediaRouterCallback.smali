.class final Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #calls: Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$700(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 345
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #calls: Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$700(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 358
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #calls: Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$700(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 363
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #calls: Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$700(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 340
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #calls: Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$200(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 352
    :cond_0
    return-void
.end method
