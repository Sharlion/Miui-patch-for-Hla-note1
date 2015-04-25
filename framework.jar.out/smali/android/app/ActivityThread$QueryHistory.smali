.class final Landroid/app/ActivityThread$QueryHistory;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistory"
.end annotation


# instance fields
.field private final CURSOR_LEAK_DETECTER:Z

.field private pfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private recordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ActivityThread;

.field private uriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uriPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 2
    .parameter

    .prologue
    .line 5357
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5358
    const-string v0, "ProviderLeakDetecter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    .line 5361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    .line 5362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    .line 5365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    .line 5366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$QueryHistory;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 5374
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 5375
    .local v6, uid:I
    const/4 v2, 0x0

    .line 5378
    .local v2, inStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5380
    .end local v2           #inStream:Ljava/io/InputStream;
    .local v3, inStream:Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 5381
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 5382
    .local v4, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5384
    .local v0, buffReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5385
    .local v5, line:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 5386
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v8

    if-ne v6, v8, :cond_2

    .line 5387
    const/4 v7, 0x1

    .line 5396
    if-eqz v3, :cond_0

    .line 5398
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v2, v3

    .line 5400
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :cond_1
    :goto_2
    return v7

    .line 5389
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v0       #buffReader:Ljava/io/BufferedReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    goto :goto_0

    .line 5396
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 5398
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    move-object v2, v3

    .line 5400
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_2

    .line 5393
    :catch_0
    move-exception v1

    .line 5396
    .local v1, e:Ljava/io/IOException;
    :goto_4
    if-eqz v2, :cond_1

    .line 5398
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 5399
    :catch_1
    move-exception v8

    goto :goto_2

    .line 5396
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    .line 5398
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5400
    :cond_5
    :goto_6
    throw v7

    .line 5399
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v0       #buffReader:Ljava/io/BufferedReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 5396
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_5

    .line 5393
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_4
.end method


# virtual methods
.method public Add(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 8
    .parameter "uri"
    .parameter "stackTrace"
    .parameter "cursorHashCode"

    .prologue
    const/4 v7, 0x1

    .line 5413
    const/4 v2, 0x0

    .line 5415
    .local v2, reportException:Z
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    monitor-enter v4

    .line 5416
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 5417
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5422
    :goto_0
    iget-boolean v3, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 5423
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PossibleCursorLeak:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",QueryCounter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5426
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5427
    new-instance v1, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v1, v3, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5428
    .local v1, qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5431
    .end local v1           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v3, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v3, :cond_2

    .line 5432
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor Open:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Total Opened Cursor Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v5, 0x46

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v5, 0x50

    if-ne v3, v5, :cond_4

    .line 5437
    :cond_3
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Opened Cursor Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->Dump()V

    .line 5439
    const/4 v2, 0x1

    .line 5441
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5444
    if-eqz v2, :cond_5

    .line 5446
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5448
    :try_start_1
    const-class v3, Lcom/mediatek/common/aee/IExceptionLog;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/aee/IExceptionLog;

    .line 5449
    .local v0, exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    if-eqz v0, :cond_5

    .line 5450
    const/4 v3, 0x0

    const-string v4, "CursorLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Opened Cursor Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/cursorleak/traces.txt"

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/mediatek/common/aee/IExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5459
    .end local v0           #exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    :cond_5
    :goto_1
    return v7

    .line 5419
    :cond_6
    :try_start_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5441
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5453
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public AddPfd(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 8
    .parameter "uri"
    .parameter "stackTrace"
    .parameter "hashCode"

    .prologue
    const/4 v7, 0x1

    .line 5495
    const/4 v2, 0x0

    .line 5497
    .local v2, reportException:Z
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    monitor-enter v4

    .line 5498
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 5499
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5504
    :goto_0
    iget-boolean v3, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 5505
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Possible PFD Leak:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",QueryCounter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5508
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5509
    new-instance v1, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v1, v3, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5510
    .local v1, qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5513
    .end local v1           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v3, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v3, :cond_2

    .line 5514
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PFD Open:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Total Opened PFD Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v5, 0xfa

    if-ne v3, v5, :cond_3

    .line 5519
    const-string v3, "ProviderLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Opened PFD Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->Dump()V

    .line 5521
    const/4 v2, 0x1

    .line 5523
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5526
    if-eqz v2, :cond_4

    .line 5528
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5530
    :try_start_1
    const-class v3, Lcom/mediatek/common/aee/IExceptionLog;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/aee/IExceptionLog;

    .line 5531
    .local v0, exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    if-eqz v0, :cond_4

    .line 5532
    const/4 v3, 0x0

    const-string v4, "PFDLeakDetecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Opened PFD Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/cursorleak/traces.txt"

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/mediatek/common/aee/IExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5541
    .end local v0           #exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    :cond_4
    :goto_1
    return v7

    .line 5501
    :cond_5
    :try_start_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5523
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5535
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public Dump()V
    .locals 6

    .prologue
    .line 5575
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Opened Cursor Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5576
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5577
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5578
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5579
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5580
    .local v2, qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5584
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_0
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Opened PFD Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5586
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5587
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5588
    .restart local v0       #entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5589
    .restart local v2       #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PFDQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5591
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    return-void
.end method

.method public Remove(I)V
    .locals 6
    .parameter "cursorHashCode"

    .prologue
    const/4 v4, 0x1

    .line 5468
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    monitor-enter v2

    .line 5469
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5470
    .local v0, qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5471
    :cond_0
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad request for cursor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    monitor-exit v2

    .line 5485
    :goto_0
    return-void

    .line 5473
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 5474
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5475
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5481
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v1, :cond_3

    .line 5482
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total Opened Cursor Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5476
    .restart local v0       #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5477
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5478
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->recordMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public RemovePfd(I)V
    .locals 6
    .parameter "hashCode"

    .prologue
    const/4 v4, 0x1

    .line 5550
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    monitor-enter v2

    .line 5551
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5552
    .local v0, qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5553
    :cond_0
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad request for pfd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    monitor-exit v2

    .line 5567
    :goto_0
    return-void

    .line 5555
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 5556
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5557
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5563
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->CURSOR_LEAK_DETECTER:Z

    if-eqz v1, :cond_3

    .line 5564
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PFD Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total Opened PFD Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0           #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5558
    .restart local v0       #qhr:Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5559
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->uriPfdMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5560
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->pfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
