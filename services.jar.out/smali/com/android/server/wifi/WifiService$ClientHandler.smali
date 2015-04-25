.class Lcom/android/server/wifi/WifiService$ClientHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method

.method private replyFailed(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, reply:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 282
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 284
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x25008

    const v8, 0x25002

    const v7, 0x25001

    .line 177
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 273
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 179
    :sswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_0

    .line 180
    const-string v4, "WifiService"

    const-string v5, "New client listening to asynchronous messages"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 185
    :cond_0
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection failure, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 191
    const-string v4, "WifiService"

    const-string v5, "Send failed, client connection lost"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection lost with reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 200
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 206
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 207
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 208
    .local v3, networkId:I
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-eq v4, v5, :cond_2

    .line 212
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect with config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, v4, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 215
    :cond_2
    const-string v4, "WifiService"

    const-string v5, "ClientHandler.handleMessage cannot process msg with PAC"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_3

    .line 217
    invoke-direct {p0, p1, v8}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 219
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 222
    :cond_4
    if-nez v1, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 224
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect with networkId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, v4, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 227
    :cond_5
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientHandler.handleMessage ignoring invalid msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_6

    .line 229
    invoke-direct {p0, p1, v8}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 231
    :cond_6
    invoke-direct {p0, p1, v9}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 256
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #networkId:I
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, v4, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 261
    :sswitch_5
    const-string v4, "WifiService"

    const-string v5, "AsyncServiceHandler, case WifiManager.START_WPS"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, "WifiService"

    const-string v5, "AsyncServiceHandler, case WifiManager.START_WPS, to disable passpoint"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiService;->enableHS(Z)Z

    move-result v2

    .line 266
    .local v2, isOK:Z
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsyncServiceHandler, isOK = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, v4, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_4
        0x25007 -> :sswitch_3
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_4
        0x25011 -> :sswitch_4
        0x25014 -> :sswitch_4
        0x25017 -> :sswitch_4
        0x2501a -> :sswitch_4
        0x25029 -> :sswitch_4
        0x2502a -> :sswitch_4
        0x2502b -> :sswitch_4
        0x2502c -> :sswitch_4
        0x2502f -> :sswitch_4
        0x25032 -> :sswitch_4
        0x25035 -> :sswitch_4
        0x25038 -> :sswitch_4
        0x2503b -> :sswitch_4
    .end sparse-switch
.end method
