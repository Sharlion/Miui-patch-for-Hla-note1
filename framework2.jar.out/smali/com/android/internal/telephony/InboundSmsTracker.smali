.class public final Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final DEST_PORT_MASK:I = 0xffff


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageCount:I

.field private final mPdu:[B

.field private mRecvTime:J

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private mSimId:I

.field private final mTimestamp:J

.field private mUploadFlag:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;Z)V
    .locals 12
    .parameter "cursor"
    .parameter "isCurrentFormat3gpp2"

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    .line 171
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 173
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iput v10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 175
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 176
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 190
    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 192
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    .line 195
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 198
    .local v2, rowId:J
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 199
    iput v10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 201
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 202
    const-string v4, "_id=?"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 203
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 226
    .end local v2           #rowId:J
    :goto_1
    return-void

    .line 178
    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 179
    .local v0, destPort:I
    const/high16 v4, 0x2

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 180
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 186
    :goto_2
    const/high16 v4, 0x8

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 187
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    goto :goto_0

    .line 181
    :cond_1
    const/high16 v4, 0x4

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 182
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    .line 184
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    :cond_3
    move v4, v6

    .line 186
    goto :goto_3

    .line 206
    .end local v0           #destPort:I
    :cond_4
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 207
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 208
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 211
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 212
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v7

    sub-int v1, v4, v7

    .line 214
    .local v1, index:I
    if-ltz v1, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    if-lt v1, v4, :cond_6

    .line 215
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid PDU sequence "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_6
    const-string v4, "address=? AND reference_number=? AND count=? AND sim_id=?"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 221
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    aput-object v7, v4, v6

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZ)V
    .locals 1
    .parameter "pdu"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "is3gpp2"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "is3gpp2WapPdu"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 125
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 126
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 127
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 128
    iput-boolean p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 130
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 131
    iput p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 132
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 133
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 134
    return-void
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZI)V
    .locals 2
    .parameter "pdu"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "is3gpp2"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "is3gpp2WapPdu"
    .parameter "simId"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 159
    iput p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mRecvTime:J

    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mUploadFlag:I

    .line 162
    return-void
.end method

.method constructor <init>([BJIZZ)V
    .locals 1
    .parameter "pdu"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "is3gpp2"
    .parameter "is3gpp2WapPdu"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 93
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 94
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 95
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 96
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 102
    return-void
.end method

.method static getRealDestPort(I)I
    .locals 1
    .parameter "destPort"

    .prologue
    .line 270
    const/high16 v0, 0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, -0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 229
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "pdu"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "date"

    iget-wide v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 236
    const/high16 v0, 0x1

    .line 240
    .local v0, destPort:I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_3

    .line 241
    const/high16 v2, 0x4

    or-int/2addr v0, v2

    .line 245
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_0

    .line 246
    const/high16 v2, 0x8

    or-int/2addr v0, v2

    .line 248
    :cond_0
    const-string v2, "destination_port"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "address"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "reference_number"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v2, "sequence"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v2, "count"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    :cond_1
    const-string v2, "sim_id"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v2, "recv_time"

    iget-wide v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mRecvTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    const-string v2, "upload_flag"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mUploadFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    return-object v1

    .line 238
    .end local v0           #destPort:I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const v3, 0xffff

    and-int v0, v2, v3

    .restart local v0       #destPort:I
    goto :goto_0

    .line 243
    :cond_3
    const/high16 v2, 0x2

    or-int/2addr v0, v2

    goto :goto_1
.end method

.method getDeleteWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getDestPort()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return v0
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    const-string v0, "3gpp2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method getIndexOffset()I
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getMessageCount()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return v0
.end method

.method getPdu()[B
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object v0
.end method

.method getReferenceNumber()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return v0
.end method

.method getSequenceNumber()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return v0
.end method

.method getSimId()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSimId:I

    return v0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method is3gpp2()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return v0
.end method

.method is3gpp2WapPdu()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    return v0
.end method

.method setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "deleteWhere"
    .parameter "deleteWhereArgs"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 285
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " is3gpp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " refNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, " seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 299
    const-string v1, " deleteWhere("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ") deleteArgs=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
