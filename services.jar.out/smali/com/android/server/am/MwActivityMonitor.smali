.class public Lcom/android/server/am/MwActivityMonitor;
.super Ljava/lang/Object;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MwActivityMonitor$MessageObj;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final MSG_MW_MAX_RESTORE:I = 0x3

.field static final NG_DONOT_BLOCK:I = 0x0

.field static final NG_SAME_CALLER_APP:I = -0x1

.field static final NG_SAME_COMPONENT_NAME:I = -0x2

.field static final NG_SAME_TASK:I = -0x3

.field static final OK_BLOCK_ACTIVITY:I = 0x1

.field static final SHOW_MAXIMUM_FRONT_FLOATING_MSG:I = 0x2

.field static final SHOW_ONE_ACTIVITY_AT_GALLERY3D_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MwActivityMonitor"


# instance fields
.field mContext:Landroid/content/Context;

.field private mMaximunFrontFlaotingSize:I

.field final mMonitorAppList:Lcom/android/server/am/MwMonitorAppList;

.field final mMwDisableFloatActivityList:Lcom/android/server/am/MwDisableFloatActivityList;

.field final mMwHandler:Landroid/os/Handler;

.field final mMwMiniMaxRestartList:Lcom/android/server/am/MwMiniMaxRestartList;

.field mRunningActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/server/am/MwMonitorAppList;

    invoke-direct {v0}, Lcom/android/server/am/MwMonitorAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMonitorAppList:Lcom/android/server/am/MwMonitorAppList;

    .line 65
    new-instance v0, Lcom/android/server/am/MwMiniMaxRestartList;

    invoke-direct {v0}, Lcom/android/server/am/MwMiniMaxRestartList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwMiniMaxRestartList:Lcom/android/server/am/MwMiniMaxRestartList;

    .line 66
    new-instance v0, Lcom/android/server/am/MwDisableFloatActivityList;

    invoke-direct {v0}, Lcom/android/server/am/MwDisableFloatActivityList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwDisableFloatActivityList:Lcom/android/server/am/MwDisableFloatActivityList;

    .line 95
    new-instance v0, Lcom/android/server/am/MwActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MwActivityMonitor$1;-><init>(Lcom/android/server/am/MwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/am/MwActivityMonitor;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 91
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximunFrontFlaotingSize:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MwActivityMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximunFrontFlaotingSize:I

    return v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 141
    const-string v0, "MwActivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMonitor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMonitorAppList:Lcom/android/server/am/MwMonitorAppList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MwMonitorAppList;->matchAppList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public blockByFloatingStackSize(Lcom/android/server/am/ActivityRecord;)I
    .locals 11
    .parameter "r"

    .prologue
    .line 261
    const/4 v3, 0x1

    .line 265
    .local v3, blocked:Z
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks()Ljava/util/ArrayList;

    move-result-object v4

    .line 266
    .local v4, frontFloatingStacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 267
    .local v5, frontStackSize:I
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks()Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    .local v1, backFloatingStacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    .local v2, backStackSize:I
    const-string v8, "MwActivityMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "blockByFloatingStackSize floating stack size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v8, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximunFrontFlaotingSize:I

    if-lt v5, v8, :cond_5

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_4

    .line 280
    add-int/lit8 v6, v5, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_0

    .line 281
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 282
    .local v0, ar:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 283
    const/4 v3, 0x0

    .line 290
    .end local v0           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v7, v2, -0x1

    .local v7, j:I
    :goto_1
    if-ltz v7, :cond_1

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 292
    .restart local v0       #ar:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    .line 293
    const/4 v3, 0x0

    .line 306
    .end local v0           #ar:Lcom/android/server/am/ActivityRecord;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_1
    :goto_2
    if-eqz v3, :cond_6

    .line 307
    iget-object v8, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    const/4 v8, 0x1

    .line 311
    :goto_3
    return v8

    .line 280
    .restart local v0       #ar:Lcom/android/server/am/ActivityRecord;
    .restart local v6       #i:I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 290
    .restart local v7       #j:I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 299
    .end local v0           #ar:Lcom/android/server/am/ActivityRecord;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 303
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 311
    :cond_6
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public blockByRunningActivity(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;[Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ActivityInfo;)I
    .locals 12
    .parameter "processName"
    .parameter "callerApp"
    .parameter "nextIntent"
    .parameter "outRunningAc"
    .parameter "aInfo"

    .prologue
    .line 179
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity processName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", callerApp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nextIntent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, nextComponentName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 186
    .local v1, N:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_7

    .line 187
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 188
    .local v7, runningAc:Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    aput-object v7, p4, v9

    .line 190
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 191
    .local v8, runningFlag:I
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 192
    .local v6, nextFlag:I
    const/4 v4, 0x0

    .line 193
    .local v4, isRunningFloat:Z
    const/4 v3, 0x0

    .line 194
    .local v3, isNextFloat:Z
    and-int/lit16 v9, v8, 0x2000

    if-eqz v9, :cond_0

    .line 195
    const/4 v4, 0x1

    .line 197
    :cond_0
    and-int/lit16 v9, v6, 0x2000

    if-eqz v9, :cond_1

    .line 198
    const/4 v3, 0x1

    .line 203
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 204
    const/4 v9, 0x0

    .line 248
    .end local v3           #isNextFloat:Z
    .end local v4           #isRunningFloat:Z
    .end local v6           #nextFlag:I
    .end local v7           #runningAc:Lcom/android/server/am/ActivityRecord;
    .end local v8           #runningFlag:I
    :goto_1
    return v9

    .line 209
    .restart local v3       #isNextFloat:Z
    .restart local v4       #isRunningFloat:Z
    .restart local v6       #nextFlag:I
    .restart local v7       #runningAc:Lcom/android/server/am/ActivityRecord;
    .restart local v8       #runningFlag:I
    :cond_2
    if-eqz p2, :cond_3

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 216
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  caller apps are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v9, -0x1

    goto :goto_1

    .line 222
    :cond_3
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 223
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  2 shortComponentNames are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v9, -0x2

    goto :goto_1

    .line 228
    :cond_4
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_6

    .line 231
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p5

    invoke-virtual {v9, p3, v0}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 232
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity :  3 exist same activity in resumed stack "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v9, -0x3

    goto/16 :goto_1

    .line 239
    :cond_5
    const-string v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockByRunningActivity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has activity for resumed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Therefore, don\'t be launched "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", callers = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 186
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 248
    .end local v3           #isNextFloat:Z
    .end local v4           #isRunningFloat:Z
    .end local v6           #nextFlag:I
    .end local v7           #runningAc:Lcom/android/server/am/ActivityRecord;
    .end local v8           #runningFlag:I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 315
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mMonitorAppList:Lcom/android/server/am/MwMonitorAppList;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MwMonitorAppList;->dump(Ljava/io/PrintWriter;)V

    .line 317
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 325
    :cond_0
    return-void

    .line 320
    :cond_1
    const-string v3, "  MwActivityMonitor : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 323
    .local v1, ac:Lcom/android/server/am/ActivityRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public matchDisableFloatActivityList(Ljava/lang/String;)Z
    .locals 1
    .parameter "activityName"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwDisableFloatActivityList:Lcom/android/server/am/MwDisableFloatActivityList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MwDisableFloatActivityList;->matchDisableFloatActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchMiniMaxRestartAppList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwMiniMaxRestartList:Lcom/android/server/am/MwMiniMaxRestartList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MwMiniMaxRestartList;->matchMiniMaxRestartAppList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeMonitor(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 159
    const-string v0, "MwActivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMonitor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public resetProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "r"
    .parameter "p"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/MwActivityMonitor$MessageObj;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MwActivityMonitor$MessageObj;-><init>(Lcom/android/server/am/MwActivityMonitor;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 339
    return-void
.end method

.method public updateProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 351
    return-void
.end method
