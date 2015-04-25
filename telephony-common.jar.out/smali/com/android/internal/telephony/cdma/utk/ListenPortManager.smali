.class Lcom/android/internal/telephony/cdma/utk/ListenPortManager;
.super Ljava/lang/Object;
.source "BipChannel.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;


# instance fields
.field private mAcceptRunableHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/AcceptRunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/ListenPortManager;
    .locals 2

    .prologue
    .line 759
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    if-nez v0, :cond_0

    .line 760
    const-string v0, "ListenPortManager"

    const-string v1, " new ListenPortManager"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 764
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    return-object v0
.end method


# virtual methods
.method public addListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 6
    .parameter "port"
    .parameter "ch"

    .prologue
    .line 768
    const-string v3, "ListenPortManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addListenPort:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, r:Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v4

    .line 772
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;

    move-object v1, v0

    .line 773
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    if-nez v1, :cond_0

    .line 776
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;

    .end local v1           #r:Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;-><init>(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 777
    .restart local v1       #r:Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 778
    .local v2, thd:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 780
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v4

    .line 781
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    .end local v2           #thd:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 773
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 782
    .restart local v2       #thd:Ljava/lang/Thread;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 784
    .end local v2           #thd:Ljava/lang/Thread;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    goto :goto_0
.end method

.method public removeListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 5
    .parameter "port"
    .parameter "ch"

    .prologue
    .line 789
    const-string v2, "ListenPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeListenPort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, r:Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v3

    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;

    move-object v1, v0

    .line 794
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    if-nez v1, :cond_1

    .line 797
    const-string v2, "ListenPortManager"

    const-string v3, " not found this ch"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 794
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 799
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->removeRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->stop()V

    .line 803
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v3

    .line 804
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
