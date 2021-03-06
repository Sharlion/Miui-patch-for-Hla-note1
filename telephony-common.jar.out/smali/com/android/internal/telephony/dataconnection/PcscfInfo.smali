.class public Lcom/android/internal/telephony/dataconnection/PcscfInfo;
.super Ljava/lang/Object;
.source "PcscfInfo.java"


# static fields
.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv4:I = 0x4

.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv6:I = 0x5

.field public static final IMC_PCSCF_ACQUIRE_BY_MANUAL:I = 0x6

.field public static final IMC_PCSCF_ACQUIRE_BY_MO:I = 0x2

.field public static final IMC_PCSCF_ACQUIRE_BY_NONE:I = 0x0

.field public static final IMC_PCSCF_ACQUIRE_BY_PCO:I = 0x3

.field public static final IMC_PCSCF_ACQUIRE_BY_SIM:I = 0x1


# instance fields
.field public source:I

.field public v4AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field

.field public v6AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1
    .parameter "sourceNum"
    .parameter "pcscfBytes"
    .parameter "port"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 33
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 6
    .parameter "sourceNum"
    .parameter "pcscfArray"

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 25
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 27
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 28
    .local v3, pcscf:Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pcscf:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 3
    .parameter "pcscf"
    .parameter "port"

    .prologue
    .line 38
    new-instance v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, pcscfAddr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    iput p2, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    .line 41
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public copyFrom(Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 1
    .parameter "pcscfInfo"

    .prologue
    .line 112
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 113
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 114
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method public getPcscfAddressCount()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readAddressFrom(ILandroid/os/Parcel;)V
    .locals 7
    .parameter "sourceNum"
    .parameter "p"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, pcscfStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, pcscfArray:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 84
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 85
    .local v3, pcscf:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pcscf:Ljava/lang/String;
    .end local v4           #pcscfArray:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, v4AddrNumber:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 55
    new-instance v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 56
    .local v0, addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 57
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, v6AddrNumber:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 62
    new-instance v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 63
    .restart local v0       #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 64
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", V4["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 127
    .local v0, addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 128
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_0
    const-string v3, "] V6["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 130
    .restart local v0       #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 131
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeAddressTo(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, count:I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 93
    .local v0, addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    if-nez v1, :cond_0

    .line 94
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 101
    .restart local v0       #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    if-nez v1, :cond_2

    .line 102
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 108
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_3
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 69
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 72
    .local v0, addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_0

    .line 74
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 76
    .restart local v0       #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_1

    .line 77
    .end local v0           #addr:Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_1
    return-void
.end method
