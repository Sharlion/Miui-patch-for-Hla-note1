.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z = true


# instance fields
.field private mAuthRetry:Z

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private final mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "context"
    .parameter "iGatt"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    .line 641
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mContext:Landroid/content/Context;

    .line 642
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 643
    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    .line 646
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 647
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    return v0
.end method

.method static synthetic access$802(Landroid/bluetooth/BluetoothGatt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    return p1
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 6
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 693
    const-string v3, "BluetoothGatt"

    const-string/jumbo v4, "registerApp()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_0

    .line 707
    :goto_0
    return v2

    .line 696
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 697
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 698
    .local v1, uuid:Ljava/util/UUID;
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerApp() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    const/4 v2, 0x1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterApp()V
    .locals 4

    .prologue
    .line 714
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp() - mClientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 719
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 720
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abortReliableWrite()V
    .locals 5

    .prologue
    .line 1123
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortReliableWrite() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "mDevice"

    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    .line 1138
    return-void
.end method

.method public beginReliableWrite()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1074
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginReliableWrite() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v2, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return v1

    .line 1078
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    const/4 v1, 0x1

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 656
    const-string v0, "BluetoothGatt"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    .line 659
    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 660
    return-void
.end method

.method public connect()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 798
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    const/4 v1, 0x1

    .line 803
    :goto_0
    return v1

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 5
    .parameter "autoConnect"
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 750
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", auto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 752
    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-eqz v3, :cond_0

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not idle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 755
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 756
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 760
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 761
    const-string v1, "BluetoothGatt"

    const-string v2, "Failed to register callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_0
    return v0

    .line 760
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 766
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    move v0, v1

    .line 767
    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 777
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelOpen() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public discoverServices()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 830
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverServices() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v2, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v1

    .line 833
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 836
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    const/4 v1, 0x1

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public executeReliableWrite()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1101
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeReliableWrite() - device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1111
    :goto_0
    return v1

    .line 1105
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1108
    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .parameter "device"
    .parameter "uuid"
    .parameter "instanceId"
    .parameter "type"

    .prologue
    .line 668
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 669
    .local v1, svc:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p4, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    .end local v1           #svc:Landroid/bluetooth/BluetoothGattService;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4
    .parameter "uuid"

    .prologue
    .line 886
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 887
    .local v1, service:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    .end local v1           #service:Landroid/bluetooth/BluetoothGattService;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 861
    .local v2, service:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 866
    .end local v2           #service:Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v1
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 13
    .parameter "characteristic"

    .prologue
    const/4 v12, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    move v0, v12

    .line 931
    :goto_0
    return v0

    .line 912
    :cond_0
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readCharacteristic() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_2

    :cond_1
    move v0, v12

    goto :goto_0

    .line 915
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 916
    .local v11, service:Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_3

    move v0, v12

    goto :goto_0

    .line 918
    :cond_3
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 919
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_4

    move v0, v12

    goto :goto_0

    .line 922
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    const/4 v0, 0x1

    goto :goto_0

    .line 926
    :catch_0
    move-exception v10

    .line 927
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v12

    .line 928
    goto :goto_0
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 15
    .parameter "descriptor"

    .prologue
    .line 988
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readDescriptor() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1011
    :goto_0
    return v0

    .line 991
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 992
    .local v11, characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v14

    .line 995
    .local v14, service:Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 997
    :cond_3
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 998
    .local v12, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v12, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 1001
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v8

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    const/4 v0, 0x1

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v13

    .line 1007
    .local v13, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRemoteRssi()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1210
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readRssi() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v2, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    const/4 v1, 0x1

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refresh()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1186
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v2, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v1

    .line 1190
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    const/4 v1, 0x1

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 13
    .parameter "characteristic"
    .parameter "enable"

    .prologue
    const/4 v12, 0x0

    .line 1156
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v12

    .line 1177
    :goto_0
    return v0

    .line 1160
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 1161
    .local v11, service:Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_2

    move v0, v12

    goto :goto_0

    .line 1163
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1164
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_3

    move v0, v12

    goto :goto_0

    .line 1167
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v8, p2

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    const/4 v0, 0x1

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v10

    .line 1173
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v12

    .line 1174
    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 14
    .parameter "characteristic"

    .prologue
    .line 947
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0

    .line 951
    :cond_0
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCharacteristic() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 954
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v13

    .line 955
    .local v13, service:Landroid/bluetooth/BluetoothGattService;
    if-nez v13, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 957
    :cond_3
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 958
    .local v11, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v11, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 961
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    const/4 v0, 0x1

    goto :goto_0

    .line 967
    :catch_0
    move-exception v12

    .line 968
    .local v12, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 18
    .parameter "descriptor"

    .prologue
    .line 1026
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeDescriptor() - uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1050
    :goto_0
    return v1

    .line 1029
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v14

    .line 1030
    .local v14, characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v14, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v17

    .line 1033
    .local v17, service:Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 1035
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 1036
    .local v15, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 1039
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v7

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v9

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v13

    invoke-interface/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    const/4 v1, 0x1

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v16

    .line 1046
    .local v16, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    const/4 v1, 0x0

    goto :goto_0
.end method
