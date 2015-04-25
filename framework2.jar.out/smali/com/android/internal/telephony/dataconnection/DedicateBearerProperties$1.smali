.class final Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;
.super Ljava/lang/Object;
.source "DedicateBearerProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    .line 141
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 142
    .local v2, properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 148
    new-instance v3, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 149
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 152
    new-instance v3, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 153
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/TftStatus;->readFrom(Landroid/os/Parcel;)V

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 156
    new-instance v3, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .line 157
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->pcscfInfo:Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->readFrom(Landroid/os/Parcel;)V

    .line 159
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, concatenateNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 161
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_3
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 1
    .parameter "size"

    .prologue
    .line 167
    new-array v0, p1, [Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties$1;->newArray(I)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method
