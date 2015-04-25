.class public final Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgUss:J

.field public maxPss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0
    .parameter "_screenStates"
    .parameter "_memStates"
    .parameter "_procStates"

    .prologue
    .line 3242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3243
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 3244
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 3245
    iput-object p3, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 3246
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintWriter;JZ)V
    .locals 6
    .parameter "pw"
    .parameter "overallTime"
    .parameter "full"

    .prologue
    const-wide/16 v4, 0x400

    .line 3249
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 3250
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3252
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v0, v0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 3253
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3254
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3255
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3256
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3258
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3259
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3260
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3261
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3262
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3263
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3264
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3265
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3266
    if-eqz p4, :cond_1

    .line 3267
    const-string v0, " over "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3268
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 3270
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3272
    :cond_2
    return-void
.end method