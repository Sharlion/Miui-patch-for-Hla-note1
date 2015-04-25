.class public final Lcom/android/server/am/ActivityManagerPlus;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;
    }
.end annotation


# static fields
.field static final BOOST_DOWNLOADING_ADJ:I = 0x7

.field private static final DEBUG_OOM:Z = false

.field private static final DEBUG_OOM_BOOST:Z = false

.field static final OTHER_SERVER_ADJ:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ActivityManagerPlus"

.field static final THIRD_PARTY_HIGHEST_SERVER_ADJ:I = 0x6

.field static final THIRD_PARTY_SERVER_ADJ:I = 0x7

.field public static final mAccurateSvcRestartList:[Ljava/lang/String;

.field static final mInHouseAppWhiteList:[Ljava/lang/String;

.field public static final mProcessList:[Ljava/lang/String;

.field static final mThirdPartyAppWhiteList:[Ljava/lang/String;

.field private static view:Landroid/view/View;


# instance fields
.field private mAlarmBoot:Z

.field final mBoostDownloadingAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlightModeOn:Z

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInHouseWL:Z

.field private mHasThirdPartyWL:Z

.field private mOomAdjEnabled:Z

.field final mProcessWL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mTarget:Lcom/android/server/am/ActivityRecord;

.field private mThirdParyAppWinner:Ljava/lang/String;

.field private mThirdParyAppWinnerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.aol.mobile.aim"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "cn.com.fetion7"

    aput-object v1, v0, v5

    const-string v1, "com.fring"

    aput-object v1, v0, v6

    const-string v1, "android.process.hiyahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.process.msn.service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nimbuzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobi.qiss.plurq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.kaixin001.activity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.ebuddy.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .line 169
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.music"

    aput-object v1, v0, v3

    const-string v1, "android.process.media"

    aput-object v1, v0, v4

    const-string v1, "com.mediatek.FMRadio:remote"

    aput-object v1, v0, v5

    const-string v1, "com.mediatek.apst.target"

    aput-object v1, v0, v6

    const-string v1, "android.process.acore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v3

    const-string v1, "com.mediatek.bluetooth"

    aput-object v1, v0, v4

    const-string v1, "android.process.acore"

    aput-object v1, v0, v5

    const-string v1, "com.android.wallpaper"

    aput-object v1, v0, v6

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.mediatek.mobilelog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    .line 191
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.calendar/.widget.CalendarAppWidgetService"

    aput-object v1, v0, v3

    const-string v1, "com.android.contacts/.util.EmptyService"

    aput-object v1, v0, v4

    const-string v1, "com.android.deskclock/com.android.alarmclock.DigitalAppWidgetService"

    aput-object v1, v0, v5

    const-string v1, "com.android.gallery3d/.gadget.WidgetService"

    aput-object v1, v0, v6

    const-string v1, "com.android.inputmethod.latin/.LatinIME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms/.widget.MmsWidgetService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.mediatek.appwidget.weather/.UpdateService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mAccurateSvcRestartList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 13
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "AMPlus"

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    iput-object v12, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    .line 104
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 109
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 114
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 119
    iput-object v12, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 121
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z

    .line 126
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z

    .line 131
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    .line 178
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    .line 202
    const-string v7, "ActivityManagerPlus"

    const-string v8, "start ActivityManagerPlus"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 206
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 207
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 208
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 209
    const-string v7, "ActivityManagerPlus"

    const-string v8, "support wl!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 211
    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPlus;->startHandler()V

    .line 215
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    sget-object v7, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 216
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const-string v7, "persist.ipo.shutdown.process.wl"

    invoke-static {v7, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, processList:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 223
    const-string v7, "ActivityManagerPlus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process whitelist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, processArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "/"

    invoke-direct {p0, v7, v5, v4}, Lcom/android/server/am/ActivityManagerPlus;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 228
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 230
    const-string v7, "!"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_2
    const-string v7, "!"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 233
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    .end local v0           #i:I
    .end local v3           #item:Ljava/lang/String;
    .end local v4           #processArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 240
    .local v6, target:Ljava/lang/String;
    const-string v7, "ActivityManagerPlus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 260
    .end local v6           #target:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerPlus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerPlus;->removeAllTasks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerPlus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mAlarmBoot:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerPlus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z

    return p1
.end method

.method private parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "split"
    .parameter "strings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, str:[Ljava/lang/String;
    array-length v1, v2

    .line 439
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 440
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method private removeAllTasks()V
    .locals 10

    .prologue
    .line 654
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 655
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const/4 v9, -0x2

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Ljava/util/List;

    move-result-object v3

    .line 658
    .local v3, recentTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 660
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 661
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 662
    .local v1, info:Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    .line 663
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 664
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 666
    const-string v5, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAllTasks: Don\'t remove home task. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAllTasks name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_1

    .line 675
    .end local v0           #i:I
    .end local v1           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #recentTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i:I
    .restart local v3       #recentTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v4       #size:I
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    return-void
.end method


# virtual methods
.method public IPOBootCompletedLocked()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "ActivityManagerPlus"

    const-string v1, "IPOBootCompletedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string v0, "ActivityManagerPlus"

    const-string v1, "sys.boot_completed is not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->sendFullBootCompletedIntentLocked()V

    .line 614
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityManagerPlus$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerPlus$2;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public checkNeedAccurateRestartService(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .parameter "app"

    .prologue
    const/4 v6, 0x1

    .line 623
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v6

    .line 626
    :cond_1
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 627
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 629
    .local v5, sr:Lcom/android/server/am/ServiceRecord;
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mAccurateSvcRestartList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 630
    .local v4, serviceName:Ljava/lang/String;
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #serviceName:Ljava/lang/String;
    .end local v5           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    .locals 5
    .parameter "intent"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 711
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 713
    .local v2, moms:Lcom/mediatek/common/mom/IMobileManagerService;
    if-eqz v2, :cond_0

    .line 714
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/common/mom/IMobileManagerService;->filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v1

    .line 718
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "ActivityManagerPlus"

    const-string v4, "filterReceiver() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method monitorBootReceiver(ZLjava/lang/String;)V
    .locals 5
    .parameter "start"
    .parameter "cause"

    .prologue
    .line 732
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 733
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 735
    .local v2, moms:Lcom/mediatek/common/mom/IMobileManagerService;
    if-eqz v2, :cond_0

    .line 736
    if-eqz p1, :cond_1

    .line 737
    :try_start_0
    invoke-interface {v2, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->startMonitorBootReceiver(Ljava/lang/String;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    invoke-interface {v2, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->stopMonitorBootReceiver(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    .line 744
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "ActivityManagerPlus"

    const-string v4, "monitorBootReceiver() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootingVal(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 619
    return-void
.end method

.method final startHandler()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v0, itFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 273
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "ActivityManagerPlus"

    const-string v2, "startHandler!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerPlus$1;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    return-void
.end method

.method public updateOomAdjPlus(Lcom/android/server/am/ProcessRecord;)I
    .locals 12
    .parameter "app"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x7

    .line 475
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    if-nez v9, :cond_0

    .line 476
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 544
    :goto_0
    return v6

    .line 479
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 480
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .local v1, boostApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 483
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v7, v6, :cond_2

    .line 484
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 487
    :cond_2
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 494
    .end local v1           #boostApp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 497
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    if-eqz v9, :cond_5

    .line 498
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 500
    .local v3, inHouseApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 501
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 498
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #inHouseApp:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    if-eqz v9, :cond_a

    .line 507
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 509
    .local v5, thirdPartyApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 514
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 515
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 516
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 531
    :goto_3
    iput v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v7

    .line 532
    goto :goto_0

    .line 518
    :cond_6
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 520
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 521
    :cond_7
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 523
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 524
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 527
    :cond_8
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0

    .line 507
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 539
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #thirdPartyApp:Ljava/lang/String;
    :cond_a
    iput v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v8

    .line 540
    goto/16 :goto_0

    .line 544
    :cond_b
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0
.end method

.method public updateRegisterReceivers(Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v3, 0x0

    .line 447
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    const-string v5, "_mode"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 451
    const-string v5, "ActivityManagerPlus"

    const-string v6, "normal shutdown"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    return-void

    .line 455
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 456
    .local v3, size:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 457
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 458
    .local v0, curr:Lcom/android/server/am/BroadcastFilter;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 459
    .local v4, target:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 460
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 461
    add-int/lit8 v3, v3, -0x1

    .line 462
    add-int/lit8 v1, v1, -0x1

    .line 456
    .end local v4           #target:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
