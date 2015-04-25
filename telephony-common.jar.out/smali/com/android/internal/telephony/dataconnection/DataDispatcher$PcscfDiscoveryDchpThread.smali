.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcscfDiscoveryDchpThread"
.end annotation


# static fields
.field private static final ACTION_CLEAR:I = 0x3

.field private static final ACTION_GET_V4:I = 0x1

.field private static final ACTION_GET_V6:I = 0x2


# instance fields
.field private final SERVICE_TYPE_ARRAY:[Ljava/lang/String;

.field private mAction:I

.field private mEvent:Lcom/android/internal/telephony/ImsAdapter$VaEvent;

.field private mInterfaceName:Ljava/lang/String;

.field private mTransactionId:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILjava/lang/String;Lcom/android/internal/telephony/ImsAdapter$VaEvent;I)V
    .locals 3
    .parameter
    .parameter "transactionId"
    .parameter "interfaceName"
    .parameter "event"
    .parameter "action"

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1520
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SIP+D2T"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SIPS+D2T"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SIP+D2U"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->SERVICE_TYPE_ARRAY:[Ljava/lang/String;

    .line 1528
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    .line 1529
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    .line 1530
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mEvent:Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .line 1531
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    .line 1532
    return-void
.end method

.method private clearSipInfo()V
    .locals 3

    .prologue
    .line 1638
    :try_start_0
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 1639
    .local v1, netd:Landroid/os/INetworkManagementService;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearSipInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1647
    .end local v1           #netd:Landroid/os/INetworkManagementService;
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1642
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1643
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1644
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1645
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSipInfo()V
    .locals 18

    .prologue
    .line 1554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/NetworkUtils;->doSipDhcpRequest(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1555
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery doSipDhcpRequest response fail [interface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 1628
    :goto_0
    return-void

    .line 1560
    :cond_0
    const/4 v12, 0x0

    .line 1562
    .local v12, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->SERVICE_TYPE_ARRAY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_9

    aget-object v14, v1, v5

    .line 1563
    .local v14, serviceType:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1564
    .local v11, pcscfHost:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1565
    .local v10, pcscfByteArray:[B
    const/4 v9, 0x0

    .line 1566
    .local v9, pcscf:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1568
    .local v13, port:I
    :try_start_0
    const-string v15, "network_management"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 1569
    .local v8, netd:Landroid/os/INetworkManagementService;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    const-string v16, "v4"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v14, v0}, Landroid/os/INetworkManagementService;->getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 1582
    .end local v8           #netd:Landroid/os/INetworkManagementService;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->isInterrupted()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1583
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reject PCSCF discovery DHCP due to the dhcp thread is interrupted before DNS query ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    goto :goto_0

    .line 1572
    .restart local v8       #netd:Landroid/os/INetworkManagementService;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    const-string v16, "v6"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v14, v0}, Landroid/os/INetworkManagementService;->getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    goto :goto_2

    .line 1574
    .end local v8           #netd:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v3

    .line 1575
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1576
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1577
    .local v3, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1578
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 1579
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1586
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    if-eqz v11, :cond_3

    .line 1588
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP result [host="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", port="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1589
    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1590
    .local v6, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 1591
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v13

    .line 1599
    .end local v6           #inetAddress:Ljava/net/InetAddress;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->isInterrupted()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1600
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reject PCSCF discovery DHCP due to the dhcp thread is interrupted after DNS query ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    goto/16 :goto_0

    .line 1592
    :catch_3
    move-exception v3

    .line 1593
    .local v3, e:Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3

    .line 1596
    .end local v3           #e:Ljava/net/UnknownHostException;
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP but no SIP response ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    goto :goto_3

    .line 1603
    :cond_4
    if-eqz v10, :cond_8

    array-length v15, v10

    if-lez v15, :cond_8

    .line 1604
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v15, v10

    invoke-direct {v2, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1605
    .local v2, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    array-length v15, v10

    if-ge v4, v15, :cond_6

    .line 1606
    if-nez v4, :cond_5

    .line 1607
    aget-byte v15, v10, v4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1605
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1609
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v10, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1611
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1613
    if-nez v12, :cond_7

    .line 1615
    new-instance v12, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .end local v12           #pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-direct {v12}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 1617
    .restart local v12       #pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP get server address ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", port="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", serviceTYpe="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v12, v9, v13}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 1562
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1620
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP but empty SIP host ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Ljava/lang/String;)V

    goto :goto_6

    .line 1624
    .end local v9           #pcscf:Ljava/lang/String;
    .end local v10           #pcscfByteArray:[B
    .end local v11           #pcscfHost:[Ljava/lang/String;
    .end local v13           #port:I
    .end local v14           #serviceType:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 1625
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    move/from16 v0, v16

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    invoke-static {v15, v0, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto/16 :goto_0

    .line 1627
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interrupt()V
    .locals 0

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->clearSipInfo()V

    .line 1541
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1542
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1652
    const-class v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    monitor-enter v1

    .line 1653
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1654
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread started [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    if-ne v0, v4, :cond_1

    const-string v0, "ACTION_GET_V4]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1655
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getSipInfo()V

    .line 1661
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread finished [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1662
    monitor-exit v1

    .line 1663
    return-void

    .line 1654
    :cond_1
    const-string v0, "ACTION_GET_V6]"

    goto :goto_0

    .line 1657
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread started [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CLEAR]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1658
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->clearSipInfo()V

    goto :goto_1

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
