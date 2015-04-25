.class public Landroid/net/wifi/BatchedScanSettings;
.super Ljava/lang/Object;
.source "BatchedScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AP_FOR_DISTANCE:I = 0x0

.field public static final DEFAULT_AP_PER_SCAN:I = 0x10

.field public static final DEFAULT_INTERVAL_SEC:I = 0x1e

.field public static final DEFAULT_SCANS_PER_BATCH:I = 0xff

.field public static final MAX_AP_FOR_DISTANCE:I = 0xff

.field public static final MAX_AP_PER_SCAN:I = 0xff

.field public static final MAX_INTERVAL_SEC:I = 0xe10

.field public static final MAX_SCANS_PER_BATCH:I = 0xff

.field public static final MAX_WIFI_CHANNEL:I = 0xc4

.field public static final MIN_AP_FOR_DISTANCE:I = 0x0

.field public static final MIN_AP_PER_SCAN:I = 0x2

.field public static final MIN_INTERVAL_SEC:I = 0x6

.field public static final MIN_SCANS_PER_BATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchedScanSettings"

.field public static final UNSPECIFIED:I = 0x7fffffff


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxApForDistance:I

.field public maxApPerScan:I

.field public maxScansPerBatch:I

.field public scanIntervalSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Landroid/net/wifi/BatchedScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/BatchedScanSettings;->clear()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 105
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 106
    iget-object v0, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 109
    :cond_0
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 110
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 111
    return-void
.end method

.method private channelSetIsValid()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 115
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, channel:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    .local v1, i:I
    if-lez v1, :cond_3

    const/16 v4, 0xc4

    if-le v1, v4, :cond_2

    .line 120
    .end local v1           #i:I
    :cond_3
    :goto_1
    const-string v4, "A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    const/4 v3, 0x0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 96
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 97
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 99
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 100
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 101
    return-void
.end method

.method public constrain()V
    .locals 6

    .prologue
    const/4 v1, 0x6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x2

    const/16 v2, 0xff

    .line 141
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v0, v4, :cond_4

    .line 142
    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 149
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v0, v4, :cond_6

    .line 150
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 157
    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v0, v4, :cond_8

    .line 158
    const/16 v0, 0x10

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 165
    :cond_2
    :goto_2
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v0, v4, :cond_a

    .line 166
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 172
    :cond_3
    :goto_3
    return-void

    .line 143
    :cond_4
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ge v0, v1, :cond_5

    .line 144
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    .line 145
    :cond_5
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 146
    const/16 v0, 0xe10

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    .line 151
    :cond_6
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v0, v3, :cond_7

    .line 152
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    .line 153
    :cond_7
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-le v0, v2, :cond_1

    .line 154
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    .line 159
    :cond_8
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ge v0, v3, :cond_9

    .line 160
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    .line 161
    :cond_9
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-le v0, v2, :cond_2

    .line 162
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    .line 167
    :cond_a
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gez v0, :cond_b

    .line 168
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3

    .line 169
    :cond_b
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-le v0, v2, :cond_3

    .line 170
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 177
    instance-of v2, p1, Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 178
    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 179
    .local v0, o:Landroid/net/wifi/BatchedScanSettings;
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v2, v3, :cond_0

    .line 183
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_2

    .line 184
    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public isInvalid()Z
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/16 v4, 0xff

    const v3, 0x7fffffff

    const/4 v0, 0x1

    .line 127
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-le v1, v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-gt v1, v4, :cond_0

    .line 131
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/BatchedScanSettings;->channelSetIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v2, 0xe10

    if-gt v1, v2, :cond_0

    .line 134
    :cond_3
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gt v1, v4, :cond_0

    .line 136
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 200
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v2, "<none>"

    .line 203
    .local v2, none:Ljava/lang/String;
    const-string v4, "BatchScanSettings [maxScansPerBatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v4, v6, :cond_0

    move-object v4, v2

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApPerScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v4, v6, :cond_1

    move-object v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", scanIntervalSec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v4, v6, :cond_2

    move-object v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApForDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v5, v6, :cond_3

    .end local v2           #none:Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", channelSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v4, :cond_4

    .line 212
    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_4
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 203
    .restart local v2       #none:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 214
    .end local v2           #none:Ljava/lang/String;
    :cond_4
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, channel:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 218
    .end local v0           #channel:Ljava/lang/String;
    :cond_5
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 231
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, channel:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method
