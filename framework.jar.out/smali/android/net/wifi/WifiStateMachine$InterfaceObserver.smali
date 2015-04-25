.class Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter
    .parameter "wifiStateMachine"

    .prologue
    .line 277
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 278
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 279
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 280
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "address"
    .parameter "iface"
    .parameter "flags"
    .parameter "scope"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addressRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2008d

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 302
    :cond_0
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "address"
    .parameter "iface"
    .parameter "flags"
    .parameter "scope"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addressUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2008c

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 291
    :cond_0
    return-void
.end method
