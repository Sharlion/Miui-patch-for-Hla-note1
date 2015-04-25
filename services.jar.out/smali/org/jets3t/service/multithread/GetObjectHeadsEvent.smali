.class public Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
.super Lorg/jets3t/service/multithread/ServiceEvent;
.source "GetObjectHeadsEvent.java"


# instance fields
.field private objects:[Lorg/jets3t/service/model/S3Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "eventCode"
    .parameter "uniqueOperationId"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multithread/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    .line 41
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "incompletedObjects"
    .parameter "uniqueOperationId"

    .prologue
    .line 71
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 72
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 73
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "uniqueOperationId"

    .prologue
    .line 66
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 67
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "t"
    .parameter "uniqueOperationId"

    .prologue
    .line 45
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 46
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 47
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "ignoredErrors"
    .parameter "uniqueOperationId"

    .prologue
    .line 79
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 80
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 81
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "completedObjects"
    .parameter "uniqueOperationId"

    .prologue
    .line 59
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 60
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 61
    invoke-direct {v0, p1}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 62
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "uniqueOperationId"

    .prologue
    .line 51
    new-instance v0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;-><init>(ILjava/lang/Object;)V

    .line 52
    .local v0, event:Lorg/jets3t/service/multithread/GetObjectHeadsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 53
    return-object v0
.end method

.method private setObjects([Lorg/jets3t/service/model/S3Object;)V
    .locals 0
    .parameter "objects"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    .line 87
    return-void
.end method


# virtual methods
.method public getCancelledObjects()[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public getCompletedObjects()[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Completed Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method