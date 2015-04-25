.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionParam"
.end annotation


# instance fields
.field public cid:I

.field public ddcId:I

.field public isEmergency:Z

.field public requestId:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1502
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 1499
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 1503
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V
    .locals 1
    .parameter
    .parameter "tid"
    .parameter "reqId"

    .prologue
    const/4 v0, -0x1

    .line 1505
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 1499
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 1506
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    .line 1507
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    .line 1508
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ddcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
