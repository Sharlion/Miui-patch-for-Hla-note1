.class Landroid/bluetooth/BluetoothMap$2;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 374
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 375
    :try_start_0
    const-string v0, "Proxy object connected"

    #calls: Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$300(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v2

    #setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v2, 0x9

    iget-object v3, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 380
    :cond_0
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 384
    :try_start_0
    const-string v0, "Proxy object disconnected"

    #calls: Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$300(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 386
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    #getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 389
    :cond_0
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
