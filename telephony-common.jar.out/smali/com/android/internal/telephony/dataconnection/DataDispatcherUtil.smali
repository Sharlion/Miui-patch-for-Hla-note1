.class public Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final IMC_IPV4_ADDR_LEN:I = 0x4

.field static final IMC_IPV6_ADDR_LEN:I = 0x10

.field static final IMC_MAXIMUM_NW_IF_NAME_STRING_SIZE:I = 0x64

.field static final IMC_MAX_AUTHORIZATION_TOKEN_LEN:I = 0x10

.field static final IMC_MAX_AUTHTOKEN_FLOWID_NUM:I = 0x4

.field static final IMC_MAX_CONCATENATED_NUM:I = 0xb

.field static final IMC_MAX_FLOW_IDENTIFIER_NUM:I = 0x4

.field static final IMC_MAX_PACKET_FILTER_NUM:I = 0x10

.field static final IMC_MAX_REMOTE_ADDR_AND_MASK_LEN:I = 0x20

.field static final IMC_PCSCF_MAX_NUM:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static dumpPdnAckRsp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 504
    const-string v0, "[dumpPdnAckRsp] "

    .line 506
    .local v0, functionName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 507
    .local v2, pdnCnt:I
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 509
    .local v1, pad2:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    .line 510
    .local v3, transactionId:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    .line 511
    array-length v4, v1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pdn cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method static dumpPdnContextProp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 517
    const/4 v6, 0x3

    new-array v4, v6, [B

    .line 518
    .local v4, pad3:[B
    const-string v1, "[dumpPdnContextProp] "

    .line 524
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 525
    .local v0, addrType:I
    array-length v6, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v4

    .line 527
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v5

    .line 529
    .local v5, property:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pdn_contexts, addrType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultCid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bearerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Qos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", signalingFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pcscf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    .line 535
    .local v3, num_of_concatenated_contexts:I
    array-length v6, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v4

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "concatenated num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v6, 0xb

    if-ge v2, v6, :cond_1

    .line 540
    if-ge v2, v3, :cond_0

    .line 541
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v5

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "concatenated contexts[: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultCid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bearerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Qos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", signalingFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pcscf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 539
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_1
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 646
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 650
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method static readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 80
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 81
    .local v4, property:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_0

    move v1, v7

    .line 86
    .local v1, hasQos:Z
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v5

    .line 87
    .local v5, qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    if-eqz v1, :cond_1

    .end local v5           #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :goto_1
    iput-object v5, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_2

    move v2, v7

    .line 92
    .local v2, hasTft:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_3

    move v0, v7

    .line 95
    .local v0, hasPcscf:Z
    :goto_3
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v6

    .line 96
    .local v6, tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readPcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v3

    .line 97
    .local v3, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    if-eqz v2, :cond_4

    .end local v6           #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :goto_4
    iput-object v6, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 98
    if-eqz v0, :cond_5

    .end local v3           #pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :goto_5
    iput-object v3, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .line 99
    return-object v4

    .end local v0           #hasPcscf:Z
    .end local v1           #hasQos:Z
    .end local v2           #hasTft:Z
    :cond_0
    move v1, v8

    .line 85
    goto :goto_0

    .restart local v1       #hasQos:Z
    .restart local v5       #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_1
    move-object v5, v9

    .line 87
    goto :goto_1

    .end local v5           #qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_2
    move v2, v8

    .line 91
    goto :goto_2

    .restart local v2       #hasTft:Z
    :cond_3
    move v0, v8

    .line 93
    goto :goto_3

    .restart local v0       #hasPcscf:Z
    .restart local v3       #pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .restart local v6       #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_4
    move-object v6, v9

    .line 97
    goto :goto_4

    .end local v6           #tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_5
    move-object v3, v9

    .line 98
    goto :goto_5
.end method

.method static readPcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0xa

    const/4 v10, 0x4

    const/4 v9, 0x3

    .line 403
    new-instance v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 404
    .local v4, pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 405
    .local v5, v4AddrNum:I
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v11, :cond_3

    .line 407
    new-instance v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 413
    .local v3, pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    .line 417
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 418
    .local v1, ipBuffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 419
    if-eqz v2, :cond_0

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 424
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    .line 426
    if-ge v0, v5, :cond_2

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 427
    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v1           #ipBuffer:Ljava/lang/StringBuffer;
    .end local v2           #j:I
    .end local v3           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 431
    .local v6, v6AddrNum:I
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 432
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_7

    .line 433
    new-instance v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 439
    .restart local v3       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    .line 443
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 444
    .restart local v1       #ipBuffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4
    if-ge v2, v12, :cond_5

    .line 445
    if-eqz v2, :cond_4

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 448
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 450
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    .line 452
    if-ge v0, v6, :cond_6

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 453
    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 455
    .end local v1           #ipBuffer:Ljava/lang/StringBuffer;
    .end local v2           #j:I
    .end local v3           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_7
    return-object v4
.end method

.method static readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    new-instance v2, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    .line 127
    .local v2, qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 129
    .local v0, isGbrPresent:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 130
    .local v1, isMbrPresent:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    .line 135
    return-object v2

    .end local v0           #isGbrPresent:Z
    .end local v1           #isMbrPresent:Z
    :cond_0
    move v0, v4

    .line 128
    goto :goto_0

    .restart local v0       #isGbrPresent:Z
    :cond_1
    move v1, v4

    .line 129
    goto :goto_1
.end method

.method static readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;
    .locals 24
    .parameter "event"

    .prologue
    .line 156
    new-instance v21, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    .line 157
    .local v21, tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 159
    .local v9, ebitFlag:Z
    :goto_0
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 160
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 180
    new-instance v19, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;-><init>()V

    .line 181
    .local v19, pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->precedence:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->direction:I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->networkPfIdentifier:I

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    .line 187
    const/16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 188
    .local v2, addrAndMaskArray:[B
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-lez v22, :cond_3

    .line 190
    const/16 v22, 0x0

    const/16 v23, 0x4

    :try_start_0
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 191
    .local v3, address:Ljava/net/InetAddress;
    const/16 v22, 0x4

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 192
    .local v18, mask:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    .line 193
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v3           #address:Ljava/net/InetAddress;
    .end local v18           #mask:Ljava/net/InetAddress;
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->protocolNextHeader:I

    .line 209
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortLow:I

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortHigh:I

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortLow:I

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortHigh:I

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->spi:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tos:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tosMask:I

    .line 217
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->flowLabel:I

    .line 220
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 221
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 158
    .end local v2           #addrAndMaskArray:[B
    .end local v9           #ebitFlag:Z
    .end local v13           #i:I
    .end local v19           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v2       #addrAndMaskArray:[B
    .restart local v9       #ebitFlag:Z
    .restart local v13       #i:I
    .restart local v19       #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :catch_0
    move-exception v8

    .line 195
    .local v8, e:Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 197
    .end local v8           #e:Ljava/net/UnknownHostException;
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-lez v22, :cond_0

    .line 199
    const/16 v22, 0x0

    const/16 v23, 0x10

    :try_start_1
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 200
    .restart local v3       #address:Ljava/net/InetAddress;
    const/16 v22, 0x10

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 201
    .restart local v18       #mask:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    .line 202
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 203
    .end local v3           #address:Ljava/net/InetAddress;
    .end local v18           #mask:Ljava/net/InetAddress;
    :catch_1
    move-exception v8

    .line 204
    .restart local v8       #e:Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 232
    .end local v2           #addrAndMaskArray:[B
    .end local v8           #e:Ljava/net/UnknownHostException;
    .end local v19           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_4
    new-instance v20, Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/TftParameter;-><init>()V

    .line 233
    .local v20, tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v17

    .line 234
    .local v17, linkedPfNumber:I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 235
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v16

    .line 236
    .local v16, linkedPfIdArray:[B
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 237
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v16, v13

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 239
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 240
    .local v7, authtokenFlowIdNum:I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 249
    const/4 v13, 0x0

    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v13, v0, :cond_c

    .line 250
    new-instance v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;-><init>()V

    .line 251
    .local v4, authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 252
    .local v6, authTokenLength:I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 253
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v5

    .line 254
    .local v5, authTokenArray:[B
    const/4 v14, 0x0

    .local v14, j:I
    :goto_5
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 255
    if-ge v14, v6, :cond_6

    .line 256
    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v5, v14

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 259
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    .line 260
    .local v11, flowIdLength:I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 261
    const/4 v14, 0x0

    :goto_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 262
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v10

    .line 263
    .local v10, flowIdArray:[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v12, v0, [Ljava/lang/Integer;

    .line 264
    .local v12, flowIds:[Ljava/lang/Integer;
    const/4 v15, 0x0

    .local v15, k:I
    :goto_7
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_8

    .line 265
    aget-byte v22, v10, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v12, v15

    .line 264
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 267
    :cond_8
    if-ge v14, v11, :cond_9

    .line 268
    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 271
    .end local v10           #flowIdArray:[B
    .end local v12           #flowIds:[Ljava/lang/Integer;
    .end local v15           #k:I
    :cond_a
    if-ge v13, v7, :cond_b

    .line 272
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 275
    .end local v4           #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    .end local v5           #authTokenArray:[B
    .end local v6           #authTokenLength:I
    .end local v11           #flowIdLength:I
    .end local v14           #j:I
    :cond_c
    if-eqz v9, :cond_d

    .line 276
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    .line 278
    :cond_d
    return-object v21
.end method

.method static writeAllBearersProperties(Lcom/android/internal/telephony/ImsAdapter$VaEvent;IILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 4
    .parameter "event"
    .parameter "msgType"
    .parameter "pdp_addr_type"
    .parameter "property"

    .prologue
    const/4 v3, 0x3

    .line 560
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 562
    .local v1, num_of_concatenated_contexts:I
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 563
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 565
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 566
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 567
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 570
    if-ge v0, v1, :cond_0

    .line 571
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 569
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 576
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->dumpPdnContextProp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 577
    return-void
.end method

.method static writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 3
    .parameter "event"
    .parameter "type"
    .parameter "property"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 104
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 105
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 106
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 107
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    :goto_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/QosStatus;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 109
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 110
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 111
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 112
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/TftStatus;)V

    .line 113
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    :goto_5
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 109
    goto :goto_2

    :cond_3
    move v1, v2

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    goto :goto_4

    .line 113
    :cond_5
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    goto :goto_5
.end method

.method static writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 10
    .parameter "event"
    .parameter "pcscfInfo"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 459
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 460
    new-array v5, v8, [B

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_4

    .line 462
    const/4 v2, 0x0

    .line 463
    .local v2, pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 464
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    check-cast v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 468
    .restart local v2       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :goto_1
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 469
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 470
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 472
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 473
    .local v3, pcscfSplitArray:[Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 474
    if-eqz v3, :cond_2

    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 475
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 473
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 466
    .end local v1           #j:I
    .end local v3           #pcscfSplitArray:[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .restart local v2       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    goto :goto_1

    .line 472
    :cond_1
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 477
    .restart local v1       #j:I
    .restart local v3       #pcscfSplitArray:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_4

    .line 461
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v1           #j:I
    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    .end local v3           #pcscfSplitArray:[Ljava/lang/String;
    :cond_4
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 482
    new-array v5, v8, [B

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 483
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_9

    .line 484
    const/4 v2, 0x0

    .line 485
    .restart local v2       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 486
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    check-cast v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 490
    .restart local v2       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :goto_6
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 491
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 492
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 494
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-nez v5, :cond_6

    move-object v3, v4

    .line 495
    .restart local v3       #pcscfSplitArray:[Ljava/lang/String;
    :goto_7
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_8
    const/16 v5, 0x10

    if-ge v1, v5, :cond_8

    .line 496
    if-eqz v3, :cond_7

    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 497
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 495
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 488
    .end local v1           #j:I
    .end local v3           #pcscfSplitArray:[Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .restart local v2       #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    goto :goto_6

    .line 494
    :cond_6
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 499
    .restart local v1       #j:I
    .restart local v3       #pcscfSplitArray:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_9

    .line 483
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 502
    .end local v1           #j:I
    .end local v2           #pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    .end local v3           #pcscfSplitArray:[Ljava/lang/String;
    :cond_9
    return-void
.end method

.method static writeQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/QosStatus;)V
    .locals 3
    .parameter "event"
    .parameter "qosStatus"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 140
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 141
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 143
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 144
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 145
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 146
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method

.method static writeTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/TftStatus;)V
    .locals 11
    .parameter "event"
    .parameter "tftStatus"

    .prologue
    .line 282
    iget v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 283
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/TftParameter;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 284
    const/4 v9, 0x2

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 285
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v9, 0x10

    if-ge v3, v9, :cond_b

    .line 286
    const/4 v7, 0x0

    .line 287
    .local v7, pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 288
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .line 292
    .restart local v7       #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :goto_2
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 293
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->precedence:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 294
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->direction:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 295
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->networkPfIdentifier:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 296
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 298
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 299
    .local v0, addrAndMaskArray:[B
    const/4 v1, 0x0

    .line 300
    .local v1, addressByteArray:[B
    const/4 v6, 0x0

    .line 301
    .local v6, maskByteArray:[B
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 302
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    if-nez v9, :cond_2

    const/4 v8, 0x0

    .line 303
    .local v8, splitArray:[Ljava/lang/String;
    :goto_3
    if-eqz v8, :cond_5

    .line 304
    array-length v9, v8

    new-array v1, v9, [B

    .line 305
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 306
    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 307
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 305
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 283
    .end local v0           #addrAndMaskArray:[B
    .end local v1           #addressByteArray:[B
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #maskByteArray:[B
    .end local v7           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    .end local v8           #splitArray:[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 290
    .restart local v3       #i:I
    .restart local v7       #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .end local v7           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-direct {v7}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;-><init>()V

    .restart local v7       #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    goto :goto_2

    .line 302
    .restart local v0       #addrAndMaskArray:[B
    .restart local v1       #addressByteArray:[B
    .restart local v6       #maskByteArray:[B
    :cond_2
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 309
    .restart local v4       #j:I
    .restart local v8       #splitArray:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    aput-byte v9, v1, v4

    goto :goto_5

    .line 312
    :cond_4
    const/4 v4, 0x0

    :goto_6
    array-length v9, v1

    if-ge v4, v9, :cond_5

    .line 313
    aget-byte v9, v1, v4

    aput-byte v9, v0, v4

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 317
    .end local v4           #j:I
    .end local v8           #splitArray:[Ljava/lang/String;
    :cond_5
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 318
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;

    if-nez v9, :cond_6

    const/4 v8, 0x0

    .line 319
    .restart local v8       #splitArray:[Ljava/lang/String;
    :goto_7
    if-eqz v8, :cond_a

    .line 320
    array-length v9, v8

    new-array v6, v9, [B

    .line 321
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_8
    array-length v9, v8

    if-ge v4, v9, :cond_8

    .line 322
    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 323
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    .line 321
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 318
    .end local v4           #j:I
    .end local v8           #splitArray:[Ljava/lang/String;
    :cond_6
    iget-object v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 325
    .restart local v4       #j:I
    .restart local v8       #splitArray:[Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    aput-byte v9, v1, v4

    goto :goto_9

    .line 328
    :cond_8
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_9

    .line 329
    const/4 v4, 0x0

    :goto_a
    array-length v9, v6

    if-ge v4, v9, :cond_a

    .line 330
    add-int/lit8 v9, v4, 0x4

    aget-byte v10, v6, v4

    aput-byte v10, v0, v9

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 331
    :cond_9
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    and-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_a

    .line 332
    const/4 v4, 0x0

    :goto_b
    array-length v9, v6

    if-ge v4, v9, :cond_a

    .line 333
    add-int/lit8 v9, v4, 0x10

    aget-byte v10, v6, v4

    aput-byte v10, v0, v9

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 337
    .end local v4           #j:I
    .end local v8           #splitArray:[Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 339
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->protocolNextHeader:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 340
    const/4 v9, 0x3

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 341
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortLow:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 342
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortHigh:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 343
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortLow:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 344
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortHigh:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 345
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->spi:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 346
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tos:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 347
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tosMask:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 348
    const/4 v9, 0x2

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 349
    iget v9, v7, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->flowLabel:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 352
    .end local v0           #addrAndMaskArray:[B
    .end local v1           #addressByteArray:[B
    .end local v6           #maskByteArray:[B
    .end local v7           #pkFilterInfo:Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_b
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 353
    const/4 v9, 0x3

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 354
    const/4 v3, 0x0

    :goto_c
    const/16 v9, 0x10

    if-ge v3, v9, :cond_d

    .line 355
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_c

    .line 356
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 354
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 358
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_d

    .line 361
    :cond_d
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 362
    const/4 v9, 0x3

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 364
    const/4 v3, 0x0

    :goto_e
    const/4 v9, 0x4

    if-ge v3, v9, :cond_14

    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_e

    .line 367
    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    check-cast v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .line 371
    .restart local v2       #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    :goto_f
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 372
    const/4 v9, 0x3

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 373
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_10
    const/16 v9, 0x10

    if-ge v4, v9, :cond_10

    .line 374
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_f

    .line 375
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 373
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 369
    .end local v4           #j:I
    :cond_e
    new-instance v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .end local v2           #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;-><init>()V

    .restart local v2       #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    goto :goto_f

    .line 377
    .restart local v4       #j:I
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_11

    .line 380
    :cond_10
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 381
    const/4 v9, 0x3

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 382
    const/4 v4, 0x0

    :goto_12
    const/4 v9, 0x4

    if-ge v4, v9, :cond_13

    .line 383
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_11

    .line 384
    const/4 v5, 0x0

    .local v5, k:I
    :goto_13
    const/4 v9, 0x4

    if-ge v5, v9, :cond_12

    .line 385
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 387
    .end local v5           #k:I
    :cond_11
    const/4 v9, 0x4

    new-array v9, v9, [B

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 382
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 364
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 392
    .end local v2           #authToken:Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    .end local v4           #j:I
    :cond_14
    return-void
.end method


# virtual methods
.method composeGlobalIPAddrVaEvent(II[BLjava/lang/String;)Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .locals 3
    .parameter "MsgId"
    .parameter "cid"
    .parameter "addr"
    .parameter "intfName"

    .prologue
    .line 615
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 616
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v1, 0x64

    .line 617
    .local v1, intfNamMaxLen:I
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 618
    const/4 v2, 0x3

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 619
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 620
    const/16 v2, 0x64

    invoke-virtual {v0, p4, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 622
    return-object v0
.end method

.method extractDefaultPdnActInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    .locals 3
    .parameter "event"

    .prologue
    .line 580
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;)V

    .line 582
    .local v0, defaultPdnActInd:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    .line 583
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    .line 584
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 585
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    .line 588
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd DefaultPdnActInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 591
    return-object v0

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method extractPdnDeactInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 595
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;)V

    .line 601
    .local v0, pdnDeactInd:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    .line 602
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    .line 603
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd PdnDeactInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 607
    return-object v0

    .line 603
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getImsService()Lcom/mediatek/common/ims/IImsManagerService;
    .locals 6

    .prologue
    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, service:Lcom/mediatek/common/ims/IImsManagerService;
    const/4 v2, 0x0

    .line 630
    .local v2, retryCount:I
    :cond_0
    :try_start_0
    const-string v4, "ImsFrameworkService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 631
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/ims/IImsManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/ims/IImsManagerService;

    move-result-object v3

    .line 632
    if-nez v3, :cond_1

    .line 633
    const-string v4, "getImsService IBinder is null"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->loge(Ljava/lang/String;)V

    .line 634
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    add-int/lit8 v2, v2, 0x1

    .line 640
    .end local v0           #b:Landroid/os/IBinder;
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_0

    .line 642
    :cond_2
    return-object v3

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
