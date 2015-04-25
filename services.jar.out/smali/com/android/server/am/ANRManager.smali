.class public final Lcom/android/server/am/ANRManager;
.super Landroid/app/ANRManagerNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$BinderDumpThread;,
        Lcom/android/server/am/ANRManager$KeyAnrRecord;,
        Lcom/android/server/am/ANRManager$AnrDumpMgr;,
        Lcom/android/server/am/ANRManager$DumpThread;,
        Lcom/android/server/am/ANRManager$AnrDumpRecord;,
        Lcom/android/server/am/ANRManager$BinderWatchdog;,
        Lcom/android/server/am/ANRManager$AnrMonitorHandler;
    }
.end annotation


# static fields
.field public static AnrOption:I = 0x0

.field public static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field public static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field public static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field protected static final INPUT_EVENT_ANR_DUMP:I = 0x3ee

.field protected static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field protected static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field protected static final SIGNAL_STKFLT:I = 0x10

.field protected static final START_ANR_DUMP_MSG:I = 0x3eb

.field protected static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field protected static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field protected static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field protected static final UPDATE_CPU_USAGE:I = 0x3ef

.field protected static additionNBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/android/server/am/ActivityManagerService;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Lcom/android/internal/os/ProcessCpuTracker;

.field private static g:Lcom/android/server/am/ANRManager;

.field public static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

.field protected mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 107
    sput v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->d:Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    .line 120
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 148
    sput-object p1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 150
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/app/ANRAppManager;->getDefault()Landroid/app/ANRAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private final a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 244
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v0, "5"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enablemlog(Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 258
    if-eq p1, v3, :cond_2

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    if-eq p1, v3, :cond_6

    .line 266
    invoke-static {p1, p1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 269
    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 271
    if-eq v0, p1, :cond_4

    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v4, :cond_4

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_5
    invoke-static {p1, v1, v6}, Lcom/android/server/am/ANRManager$BinderWatchdog;->b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 282
    :cond_6
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_7

    .line 284
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 285
    const-string v3, "ANRManager"

    invoke-virtual {v0, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    :cond_7
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 291
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 300
    const-string v0, "ANRManager"

    const-string v1, "preDumpStackTraces End"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/server/am/ANRManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Lcom/android/server/am/ANRManager$1;

    const/16 v0, 0x8

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/ANRManager$1;-><init>(Ljava/lang/String;I)V

    .line 313
    :try_start_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    if-eqz p1, :cond_1

    .line 318
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 320
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preDumpStackTraces process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v6}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 331
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 332
    monitor-exit v2

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_0
    invoke-static {v0, p0}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    :try_start_4
    const-string v1, "ANRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 341
    const/4 v0, 0x1

    const-string v1, "/data/anr/mtk_traces.txt"

    const-string v2, "/data/anr/mtk_traces_"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 342
    return-void

    .line 339
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    throw v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method public static enableANRDebuggingMechanism()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1332
    sget v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    packed-switch v1, :pswitch_data_0

    .line 1340
    :goto_0
    :pswitch_0
    return v0

    .line 1336
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1338
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extendANRTime(IJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1304
    const-wide/16 v0, 0x0

    .line 1306
    const-string v2, "mobile"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1307
    if-eqz v2, :cond_0

    .line 1308
    invoke-static {v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 1310
    :try_start_0
    invoke-interface {v2, p0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->getUserConfirmTime(IJ)J

    move-result-wide v0

    .line 1311
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anrTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extendTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :cond_0
    :goto_0
    return-wide v0

    .line 1313
    :catch_0
    move-exception v2

    .line 1314
    const-string v3, "ANRManager"

    const-string v4, "getUserConfirmTime() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDefault(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ANRManager;
    .locals 1
    .parameter

    .prologue
    .line 141
    sput-object p0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 142
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/server/am/ANRManager;

    invoke-direct {v0}, Lcom/android/server/am/ANRManager;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    return-object v0
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFiles Begin, clearTraces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subnativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 697
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 699
    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    sget-object v2, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_2

    .line 704
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 703
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 710
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 712
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 716
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 722
    const-string v1, "ANRManager"

    const-string v2, "renameFiles End"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_1
    return-object v0

    .line 712
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare ANR traces file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public IsProcDoCoredump(I)Ljava/lang/Boolean;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1208
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 1209
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    if-eqz v0, :cond_1

    .line 1211
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    invoke-interface {v0, v2}, Lcom/mediatek/common/aee/IExceptionLog;->getNativeExceptionPidList([I)Z

    .line 1212
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 1214
    if-ne v4, p1, :cond_0

    if-lez v4, :cond_0

    .line 1216
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[coredump] Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is doing coredump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1225
    :goto_1
    return-object v0

    .line 1221
    :cond_0
    const-string v5, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[coredump] coredump\'s pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public checkNBTDumpPid(I)V
    .locals 3
    .parameter

    .prologue
    .line 1271
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_0
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1355
    .line 1357
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :goto_0
    return v1

    .line 1360
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1362
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1365
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ANRManager;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1369
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    move v1, v0

    .line 1375
    goto :goto_0

    .line 1369
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    const-string v0, "ANRManager"

    const-string v2, "createFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1373
    goto :goto_1
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1380
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 1384
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1385
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1388
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1390
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1394
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    const-string v0, "ANRManager"

    const-string v2, "copyToFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1399
    :goto_2
    return v0

    .line 1388
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1390
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1394
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 1391
    :catch_1
    move-exception v3

    .line 1392
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1391
    :catch_2
    move-exception v3

    .line 1392
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 1347
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1349
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "file isn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/4 v0, 0x0

    .line 1352
    :cond_1
    return-object v0
.end method

.method public dumpBinderInfo(I)V
    .locals 5
    .parameter

    .prologue
    .line 1427
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/binderinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1429
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1430
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail due to file likely to be locked by others"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1434
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail due to file cannot be created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1437
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1440
    :cond_3
    const-string v1, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1441
    if-eqz v1, :cond_4

    .line 1442
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER FAILED TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1446
    :cond_4
    const-string v1, "sys/kernel/debug/binder/timeout_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1447
    if-eqz v1, :cond_5

    .line 1448
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TIMEOUT LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1452
    :cond_5
    const-string v1, "/sys/kernel/debug/binder/transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1453
    if-eqz v1, :cond_6

    .line 1454
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1458
    :cond_6
    const-string v1, "/sys/kernel/debug/binder/transactions"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1459
    if-eqz v1, :cond_7

    .line 1460
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTIONS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1464
    :cond_7
    const-string v1, "/sys/kernel/debug/binder/stats"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1465
    if-eqz v1, :cond_8

    .line 1466
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER STATS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1470
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    if-eqz v2, :cond_0

    .line 1474
    const-string v1, "/data/anr/binderinfo"

    const-string v3, "------ BINDER PROCESS STATE: $i ------\n"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public enableZramMonitor(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1485
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableZramMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :try_start_0
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "/sys/module/mlog/parameters/timer_intval"

    if-eqz p1, :cond_0

    const-string v0, "100"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :goto_1
    return-void

    .line 1487
    :cond_0
    const-string v0, "6000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    const-string v1, "ANRManager"

    const-string v2, "Error happens enableZramMonitor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enablemlog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1494
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablemlog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "/sys/module/mlog/parameters/do_mlog"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_0
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    const-string v1, "ANRManager"

    const-string v2, "Error happens enablemlog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAndroidTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1046
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1047
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1048
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1031
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1035
    :try_start_0
    const-string v0, "ANRManager"

    const-string v2, "getProcessState"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 1040
    :goto_0
    return-object v0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessState error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1290
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    sget-object v1, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    :goto_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informMessageDump pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void

    .line 1296
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1057
    .line 1058
    new-instance v0, Lcom/android/server/am/ANRManager$KeyAnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ANRManager$KeyAnrRecord;-><init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1059
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1060
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    return-void
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x1388

    const/16 v1, 0x3ef

    const/16 v4, 0x3ec

    .line 1154
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    packed-switch p3, :pswitch_data_0

    .line 1172
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1191
    :cond_1
    :goto_1
    return-void

    .line 1158
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1159
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1162
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_0

    .line 1175
    :cond_2
    packed-switch p3, :pswitch_data_1

    .line 1187
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    goto :goto_1

    .line 1178
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1183
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_1

    .line 1155
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1175
    :pswitch_data_1
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyWNR(ILjava/lang/String;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1080
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWNR pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0, v3}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1084
    if-gtz p1, :cond_0

    .line 1085
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to invalid pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0, v4}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    move v0, v3

    .line 1147
    :goto_0
    return v0

    .line 1092
    :cond_0
    sget-object v7, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1093
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v5

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1095
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v6, v3

    .line 1096
    :goto_2
    if-ge v6, v9, :cond_8

    .line 1097
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1098
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_1

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v10, p1, :cond_1

    :goto_3
    move-object v2, v1

    .line 1103
    goto :goto_1

    .line 1096
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 1105
    :cond_2
    if-nez v2, :cond_3

    .line 1106
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to null process record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1109
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1112
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v0, :cond_4

    .line 1113
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to debugging: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1117
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1119
    :cond_4
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v10, 0x1f40

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1120
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to DidDexOpt: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1125
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1130
    :cond_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    .line 1140
    :goto_4
    if-eqz v2, :cond_7

    .line 1143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/am/ANRManager;->notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1145
    monitor-exit v7

    move v0, v4

    goto/16 :goto_0

    .line 1133
    :cond_6
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping WNR due to instrumentation: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1135
    const-string v1, "shortMsg"

    const-string v6, "keyDispatchingTimedOut"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v1, "longMsg"

    const-string v6, "Timed out while dispatching key event"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    move-object v2, v5

    goto :goto_4

    .line 1147
    :cond_7
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 619
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStackTraceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 632
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 635
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 637
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b6

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare stack trace file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDumpNBTReceiver()V
    .locals 3

    .prologue
    .line 1232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1233
    const-string v1, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    const-string v1, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ANRManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ANRManager$2;-><init>(Lcom/android/server/am/ANRManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1267
    return-void
.end method

.method public removeNBTDumpPid(I)V
    .locals 3
    .parameter

    .prologue
    .line 1280
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1283
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    return-void
.end method

.method public skipANR(I)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 1196
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1202
    return-object v0
.end method

.method public startANRManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v1, Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;-><init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    .line 161
    new-instance v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-direct {v0, p0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;-><init>(Lcom/android/server/am/ANRManager;)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    .line 165
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 167
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 168
    const-string v0, "dalvik.vm.stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 169
    const-string v0, "data/anr/native1.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 170
    const-string v0, "data/anr/native2.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 171
    const-string v0, "data/anr/native3.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1404
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1406
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1408
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1410
    return-void

    .line 1408
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public updateProcessStats()V
    .locals 8

    .prologue
    .line 1007
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1010
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1013
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1015
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1016
    const-string v0, "ANRManager"

    const-string v2, "updateProcessStats"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1027
    return-void

    .line 1019
    :cond_0
    :try_start_3
    const-string v0, "ANRManager"

    const-string v2, "CPU update time < 2.5sec"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    :try_start_4
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStats error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
