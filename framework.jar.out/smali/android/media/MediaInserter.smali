.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# static fields
.field public static final INSERT_TABLE_URI_KEY:Ljava/lang/String; = "insert_table_uri_key"

.field public static final MSG_INSERT_ALL:I = 0x2

.field public static final MSG_INSERT_FOLDER:I = 0x1

.field public static final MSG_INSERT_TO_DATABASE:I = 0x0

.field public static final MSG_SCAN_DIRECTORY:I = 0xa

.field public static final MSG_SCAN_FINISH_WITH_THREADPOOL:I = 0xd

.field public static final MSG_SCAN_SINGLE_FILE:I = 0xb

.field public static final MSG_SHUTDOWN_THREADPOOL:I = 0xc

.field public static final MSG_STOP_INSERT:I = 0x3


# instance fields
.field private final mBufferSizePerUri:I

.field private mInsertHanlder:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V
    .locals 1
    .parameter "provider"
    .parameter "packageName"
    .parameter "bufferSizePerUri"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 49
    iput-object p2, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    .line 50
    iput p3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 2
    .parameter "inserterHandler"
    .parameter "bufferSizePerUri"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 145
    iput-object p1, p0, Landroid/media/MediaInserter;->mInsertHanlder:Landroid/os/Handler;

    .line 146
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 147
    iput-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 148
    iput-object v1, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 7
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v6, -0x1

    .line 94
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 99
    .local v3, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    check-cast v3, [Landroid/content/ContentValues;

    .line 100
    .restart local v3       #valuesArray:[Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, v3}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 101
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 115
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    .local v0, matchUriValue:Landroid/content/ContentValues;
    const-string v4, "insert_table_uri_key"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v2, sendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 111
    iget-object v4, p0, Landroid/media/MediaInserter;->mInsertHanlder:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Landroid/media/MediaInserter;->mInsertHanlder:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 86
    .local v2, tableUri:Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 88
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flushPriority(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 90
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 91
    return-void
.end method

.method private flushPriority(Landroid/net/Uri;Ljava/util/List;)V
    .locals 8
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x1

    .line 152
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    if-eqz v4, :cond_1

    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 157
    .local v3, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    check-cast v3, [Landroid/content/ContentValues;

    .line 158
    .restart local v3       #valuesArray:[Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p1, v3}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 159
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 173
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 164
    .local v0, matchUriValue:Landroid/content/ContentValues;
    const-string v4, "insert_table_uri_key"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v2, sendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 169
    iget-object v4, p0, Landroid/media/MediaInserter;->mInsertHanlder:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v7, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Landroid/media/MediaInserter;->mInsertHanlder:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 4
    .parameter "tableUri"
    .parameter "values"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 63
    .local v1, rowmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v2, v3, :cond_1

    .line 70
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 71
    invoke-direct {p0, p1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 73
    :cond_1
    return-void

    .line 62
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1           #rowmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_2
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 77
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 78
    .local v2, tableUri:Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 81
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 82
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 55
    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 59
    return-void
.end method
