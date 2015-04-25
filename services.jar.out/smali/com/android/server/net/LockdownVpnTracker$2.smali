.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    #getter for: Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$000(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    #getter for: Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$000(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->forceDisconnect()Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    .line 124
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    #getter for: Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;
    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    #getter for: Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;
    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 125
    :cond_1
    return-void
.end method
