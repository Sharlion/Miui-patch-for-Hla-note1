.class public Lcom/android/internal/telephony/ImsAdapter$VaEvent;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VaEvent"
.end annotation


# static fields
.field public static final MAX_DATA_LENGTH:I = 0xa000


# instance fields
.field private data:[B

.field private data_len:I

.field private event_max_data_len:I

.field private read_offset:I

.field private request_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "rid"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, 0xa000

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 41
    iput p1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    .line 42
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "rid"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, 0xa000

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    .line 49
    iput p2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 53
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, ret:I
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 171
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 172
    monitor-exit p0

    .line 173
    return v0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .parameter "length"

    .prologue
    .line 177
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 188
    :goto_0
    return-object v1

    .line 181
    :cond_0
    new-array v1, p1, [B

    .line 183
    .local v1, ret:[B
    monitor-enter p0

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 186
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    return v0
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, ret:I
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 152
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 153
    monitor-exit p0

    .line 154
    return v0

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestID()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, ret:I
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 161
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 162
    monitor-exit p0

    .line 163
    return v0

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "len"

    .prologue
    .line 193
    new-array v0, p1, [B

    .line 195
    .local v0, buf:[B
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public putByte(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 86
    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 91
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 92
    monitor-exit p0

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 122
    array-length v0, p1

    .line 124
    .local v0, len:I
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    if-le v0, v2, :cond_0

    .line 125
    const/4 v1, -0x1

    .line 133
    :goto_0
    return v1

    .line 128
    :cond_0
    monitor-enter p0

    .line 129
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 131
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 56
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 57
    const/4 v1, -0x1

    .line 66
    :goto_0
    return v1

    .line 60
    :cond_0
    monitor-enter p0

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 63
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    monitor-exit p0

    .line 66
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putShort(I)I
    .locals 4
    .parameter "value"

    .prologue
    .line 70
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 71
    const/4 v1, -0x1

    .line 81
    :goto_0
    return v1

    .line 74
    :cond_0
    monitor-enter p0

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 77
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    monitor-exit p0

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .parameter "str"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 98
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 99
    const/4 v3, -0x1

    .line 118
    :goto_0
    return v3

    .line 102
    :cond_0
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 104
    .local v2, s:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 105
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-static {v2, v4, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 116
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2           #s:[B
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 108
    .restart local v2       #s:[B
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, p2, v4

    .line 109
    .local v1, remain:I
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 112
    iget-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 113
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
