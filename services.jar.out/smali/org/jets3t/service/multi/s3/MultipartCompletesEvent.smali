.class public Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "MultipartCompletesEvent.java"


# instance fields
.field private completedUploads:[Lorg/jets3t/service/model/MultipartCompleted;

.field private incompleteUploads:[Lorg/jets3t/service/model/MultipartUpload;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "eventCode"
    .parameter "uniqueOperationId"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 42
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->incompleteUploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 43
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->completedUploads:[Lorg/jets3t/service/model/MultipartCompleted;

    .line 47
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "incompletedUploads"
    .parameter "uniqueOperationId"

    .prologue
    .line 79
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 80
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setIncompleteUploads([Lorg/jets3t/service/model/MultipartUpload;)V

    .line 81
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "uniqueOperationId"

    .prologue
    .line 72
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 73
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "t"
    .parameter "uniqueOperationId"

    .prologue
    .line 51
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 52
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 53
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "ignoredErrors"
    .parameter "uniqueOperationId"

    .prologue
    .line 87
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 88
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 89
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/MultipartCompleted;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "completedUploads"
    .parameter "uniqueOperationId"

    .prologue
    .line 65
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 66
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 67
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setCompleteUploads([Lorg/jets3t/service/model/MultipartCompleted;)V

    .line 68
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    .locals 2
    .parameter "threadWatcher"
    .parameter "uniqueOperationId"

    .prologue
    .line 57
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;-><init>(ILjava/lang/Object;)V

    .line 58
    .local v0, event:Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 59
    return-object v0
.end method

.method private setCompleteUploads([Lorg/jets3t/service/model/MultipartCompleted;)V
    .locals 0
    .parameter "completed"

    .prologue
    .line 98
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->completedUploads:[Lorg/jets3t/service/model/MultipartCompleted;

    .line 99
    return-void
.end method

.method private setIncompleteUploads([Lorg/jets3t/service/model/MultipartUpload;)V
    .locals 0
    .parameter "uploads"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->incompleteUploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 95
    return-void
.end method


# virtual methods
.method public getCancelledUploads()[Lorg/jets3t/service/model/MultipartUpload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->incompleteUploads:[Lorg/jets3t/service/model/MultipartUpload;

    return-object v0
.end method

.method public getCompletedUploads()[Lorg/jets3t/service/model/MultipartCompleted;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->completedUploads:[Lorg/jets3t/service/model/MultipartCompleted;

    return-object v0
.end method
