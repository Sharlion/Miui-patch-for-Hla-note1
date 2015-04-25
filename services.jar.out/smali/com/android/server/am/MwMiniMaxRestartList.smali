.class public Lcom/android/server/am/MwMiniMaxRestartList;
.super Ljava/lang/Object;
.source "MwMiniMaxRestartList.java"


# instance fields
.field private final mMiniMaxRestartApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.teamchaos.dragonacademy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "sina.mobile.tianqitong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.gameloft.android.ANMP.GloftCPHM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "jp.gree.android.pf.greeapp58078a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mtt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.storm.smart"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method


# virtual methods
.method public matchMiniMaxRestartAppList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, ret:Z
    iget-object v3, p0, Lcom/android/server/am/MwMiniMaxRestartList;->mMiniMaxRestartApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, needRestartAPP:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v2, 0x1

    .line 72
    .end local v1           #needRestartAPP:Ljava/lang/String;
    :cond_1
    return v2
.end method
