.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 808
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 809
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .parameter
    .parameter "simId"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 812
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 813
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 814
    return-void
.end method

.method private getRilSocketName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 817
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 824
    :goto_0
    return-object v0

    .line 819
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_3:Ljava/lang/String;

    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_4:Ljava/lang/String;

    goto :goto_0

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 831
    const/4 v6, 0x0

    .line 832
    .local v6, retryCount:I
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 837
    .local v9, socketRil:Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-boolean v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v11, :cond_0

    .line 981
    :goto_1
    return-void

    .line 839
    :cond_0
    const/4 v7, 0x0

    .line 843
    .local v7, s:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v11

    if-nez v11, :cond_1

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 845
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->setSocketNames()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;)V

    .line 849
    :cond_1
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 851
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v11

    if-gez v11, :cond_3

    .line 853
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v4

    .line 855
    .local v4, m3GsimId:I
    const/4 v11, 0x1

    if-lt v4, v11, :cond_5

    .line 856
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-nez v11, :cond_4

    .line 857
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    .line 862
    :cond_2
    :goto_2
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIM Switched, switch sockets ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v4           #m3GsimId:I
    :cond_3
    :goto_3
    :try_start_1
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 888
    .end local v7           #s:Landroid/net/LocalSocket;
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 890
    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 923
    const/4 v6, 0x0

    .line 925
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v8, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 926
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 927
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 929
    const/4 v3, 0x0

    .line 931
    .local v3, length:I
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 936
    .local v1, is:Ljava/io/InputStream;
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v11}, Lcom/android/internal/telephony/RIL;->access$1000(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 938
    if-gez v3, :cond_9

    .line 960
    .end local v1           #is:Ljava/io/InputStream;
    :goto_5
    :try_start_5
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 966
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 970
    :goto_6
    :try_start_7
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 971
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-static {v11}, Lcom/android/internal/telephony/RILRequest;->resetSerial(I)V

    .line 974
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    const/4 v13, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/RIL;->access$1200(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 975
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v8           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v10

    .line 976
    .local v10, tr:Ljava/lang/Throwable;
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$1300(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_1

    .line 859
    .end local v10           #tr:Ljava/lang/Throwable;
    .restart local v4       #m3GsimId:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :cond_4
    :try_start_8
    iget v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-ne v11, v4, :cond_2

    .line 860
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 865
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 891
    .end local v4           #m3GsimId:I
    :catch_1
    move-exception v0

    .line 893
    .local v0, ex:Ljava/io/IOException;
    :goto_7
    if-eqz v7, :cond_6

    .line 894
    :try_start_9
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 903
    :cond_6
    :goto_8
    const/16 v11, 0x10

    if-ne v6, v11, :cond_8

    .line 904
    :try_start_a
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 915
    :cond_7
    :goto_9
    const-wide/16 v11, 0xfa0

    :try_start_b
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 919
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 920
    goto/16 :goto_0

    .line 908
    :cond_8
    if-lez v6, :cond_7

    const/16 v11, 0x10

    if-ge v6, v11, :cond_7

    .line 909
    :try_start_c
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_9

    .line 943
    .end local v0           #ex:Ljava/io/IOException;
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :cond_9
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 944
    .local v5, p:Landroid/os/Parcel;
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 945
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 949
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v11, v5}, Lcom/android/internal/telephony/RIL;->access$1100(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 950
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 952
    .end local v1           #is:Ljava/io/InputStream;
    .end local v5           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v0

    .line 953
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_e
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 955
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 956
    .restart local v10       #tr:Ljava/lang/Throwable;
    sget-object v11, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_5

    .line 896
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v8           #s:Landroid/net/LocalSocket;
    .end local v10           #tr:Ljava/lang/Throwable;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_4
    move-exception v11

    goto/16 :goto_8

    .line 916
    :catch_5
    move-exception v11

    goto/16 :goto_a

    .line 967
    .end local v0           #ex:Ljava/io/IOException;
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    goto/16 :goto_6

    .line 891
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_7
    move-exception v0

    move-object v7, v8

    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v7       #s:Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
