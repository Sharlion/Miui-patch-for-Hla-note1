.class public Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
.super Ljava/lang/Object;
.source "DedicateBearerProperties.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerId:I

.field public cid:I

.field public concatenateBearers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;",
            ">;"
        }
    .end annotation
.end field

.field public defaultCid:I

.field public interfaceId:I

.field public pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

.field public qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

.field public signalingFlag:I

.field public tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clear()V

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    .line 30
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 31
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 32
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, parcel:Landroid/os/Parcel;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setProperties(Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .locals 5
    .parameter "dedicateCallState"

    .prologue
    const/4 v4, 0x2

    .line 37
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 38
    .local v1, result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clear()V

    .line 40
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->interfaceId:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    .line 41
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    .line 42
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->defaultCid:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 43
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->signalingFlag:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    .line 44
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->bearerId:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    .line 45
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-eqz v2, :cond_0

    .line 46
    new-instance v2, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 47
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/QosStatus;->copyFrom(Lcom/android/internal/telephony/dataconnection/QosStatus;)V

    .line 50
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-eqz v2, :cond_1

    .line 51
    new-instance v2, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 52
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/TftStatus;->copyFrom(Lcom/android/internal/telephony/dataconnection/TftStatus;)V

    .line 55
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    if-eqz v2, :cond_2

    .line 56
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .line 57
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->copyFrom(Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 60
    :cond_2
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    .line 61
    .local v0, failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v0, v2, :cond_4

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    if-eq v2, v4, :cond_4

    .line 62
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->FAIL:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 63
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 74
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 75
    return-object v1

    .line 65
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v0, v2, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    if-ne v2, v4, :cond_5

    .line 69
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .line 70
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v0, v2, :cond_3

    .line 71
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->FAIL:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 72
    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0
.end method

.method public setProperties([Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .locals 6
    .parameter "dedicateCallStates"

    .prologue
    .line 80
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->setProperties(Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v4

    .line 83
    .local v4, result:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    const/4 v1, 0x1

    .local v1, i:I
    array-length v2, p1

    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 84
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 85
    .local v3, properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->setProperties(Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v0

    .line 86
    .local v0, concatenateResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    if-ne v0, v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0           #concatenateResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .end local v3           #properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_1
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[interfaceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", signalingFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bearerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PCSCF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", QOS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", TFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 99
    .local v2, properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 101
    .end local v2           #properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/TftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->writeTo(Landroid/os/Parcel;)V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 136
    .local v1, properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_3
    move v2, v4

    .line 125
    goto :goto_0

    :cond_4
    move v2, v4

    .line 128
    goto :goto_1

    :cond_5
    move v3, v4

    .line 131
    goto :goto_2

    .line 137
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    return-void
.end method
