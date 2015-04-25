.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final FLAG_ASYNCHRONOUS:I = 0x2

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;

.field private static syncFlag:I


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field flags:I

.field public hasRecycle:Z

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field private preInUseMessage:Landroid/os/Message;

.field public replyTo:Landroid/os/Messenger;

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sput v1, Landroid/os/Message;->syncFlag:I

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 110
    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 536
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Message;->hasRecycle:Z

    .line 479
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 119
    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    sget v1, Landroid/os/Message;->syncFlag:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/Message;->syncFlag:I

    .line 121
    sget v1, Landroid/os/Message;->syncFlag:I

    if-eq v1, v5, :cond_0

    .line 122
    const-string v1, "Message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "obtain, in synchronized, syncFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Message;->syncFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 126
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 127
    .local v0, m:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 128
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 129
    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 131
    sget v1, Landroid/os/Message;->syncFlag:I

    if-eq v1, v5, :cond_1

    .line 132
    const-string v1, "Message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "obtain, out synchronized, syncFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Message;->syncFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_1
    sget v1, Landroid/os/Message;->syncFlag:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->syncFlag:I

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/Message;->hasRecycle:Z

    .line 137
    monitor-exit v2

    .line 144
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return-object v0

    .line 139
    :cond_2
    sget v1, Landroid/os/Message;->syncFlag:I

    if-eq v1, v5, :cond_3

    .line 140
    const-string v1, "Message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "obtain, out synchronized, syncFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Message;->syncFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_3
    sget v1, Landroid/os/Message;->syncFlag:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->syncFlag:I

    .line 143
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .parameter "h"

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 178
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 206
    iput p1, v0, Landroid/os/Message;->what:I

    .line 208
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 241
    iput p1, v0, Landroid/os/Message;->what:I

    .line 242
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 243
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 245
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 263
    iput p1, v0, Landroid/os/Message;->what:I

    .line 264
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 265
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 266
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 222
    iput p1, v0, Landroid/os/Message;->what:I

    .line 223
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "callback"

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 191
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 193
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .parameter "orig"

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 156
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 157
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 158
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 160
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 163
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 164
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 166
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 587
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 588
    return-void
.end method


# virtual methods
.method LogCurrentMessage()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    invoke-virtual {v0, p0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 468
    iget-object v0, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 469
    return-void
.end method

.method clearForRecycle()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 442
    iput v0, p0, Landroid/os/Message;->flags:I

    .line 443
    iput v0, p0, Landroid/os/Message;->what:I

    .line 444
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 445
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 446
    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    iput-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 448
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 449
    iput-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 450
    iput-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 451
    iput-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Message;->hasRecycle:Z

    .line 454
    return-void
.end method

.method public copyFrom(Landroid/os/Message;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 304
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 305
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 306
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 309
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public isAsynchronous()Z
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInUse()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 457
    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markInUse()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 462
    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method printPreMessage()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "Message"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre in use Message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/Message;->preInUseMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 277
    invoke-virtual {p0}, Landroid/os/Message;->clearForRecycle()V

    .line 279
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    sget v0, Landroid/os/Message;->syncFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->syncFlag:I

    .line 281
    sget v0, Landroid/os/Message;->syncFlag:I

    if-eq v0, v4, :cond_0

    .line 282
    const-string v0, "Message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recycle, in synchronized, syncFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Message;->syncFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :cond_0
    sget v0, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    .line 285
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 286
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 287
    sget v0, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 289
    :cond_1
    sget v0, Landroid/os/Message;->syncFlag:I

    if-eq v0, v4, :cond_2

    .line 290
    const-string v0, "Message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recycle, out synchronized, syncFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Message;->syncFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_2
    sget v0, Landroid/os/Message;->syncFlag:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/os/Message;->syncFlag:I

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendToTarget()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public setAsynchronous(Z)V
    .locals 1
    .parameter "async"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 388
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 389
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 324
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .locals 3
    .parameter "now"

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, b:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 491
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 492
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 493
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :goto_0
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 501
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 506
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 511
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    :cond_2
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_1
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 523
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    :cond_3
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 528
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    :cond_4
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 496
    :cond_5
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :cond_6
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 554
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 555
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal callbacks across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_0
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 564
    .local v1, p:Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1           #p:Landroid/os/Parcelable;
    :goto_0
    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 574
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 575
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 576
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
