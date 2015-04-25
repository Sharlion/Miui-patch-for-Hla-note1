.class public Lcom/android/internal/telephony/TimerDispatcher;
.super Ljava/lang/Object;
.source "TimerDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field protected static final INTENT_VOLTE_TIMER_ALARM:Ljava/lang/String; = "com.android.internal.telephony.volte_timer_alarm"

.field private static final TAG:Ljava/lang/String; = "Timer-IMSA"

.field private static imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TimerDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 3
    .parameter "context"
    .parameter "IO"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Lcom/android/internal/telephony/TimerDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TimerDispatcher$1;-><init>(Lcom/android/internal/telephony/TimerDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TimerDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/internal/telephony/TimerDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 38
    const-string v1, "TimerDispatcher()"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/android/internal/telephony/TimerDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    if-nez v1, :cond_0

    .line 41
    const-string v1, "ImsAdapter.getInstance"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->getInstance()Lcom/android/internal/telephony/ImsAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TimerDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    .line 45
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.volte_timer_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TimerDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/TimerDispatcher;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TimerDispatcher;->sendResponse(III)V

    return-void
.end method

.method private sendResponse(III)V
    .locals 3
    .parameter "request_id"
    .parameter "timer_id"
    .parameter "user_data"

    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 63
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 69
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/TimerDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send event, request_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timer_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user_data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 15
    .parameter "event"

    .prologue
    .line 107
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v5

    .line 108
    .local v5, request_id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v7

    .line 109
    .local v7, timer_id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v6

    .line 110
    .local v6, timeout:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v10

    .line 113
    .local v10, user_data:I
    packed-switch v5, :pswitch_data_0

    .line 153
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 159
    .end local v5           #request_id:I
    .end local v6           #timeout:I
    .end local v7           #timer_id:I
    .end local v10           #user_data:I
    :goto_0
    return-void

    .line 115
    .restart local v5       #request_id:I
    .restart local v6       #timeout:I
    .restart local v7       #timer_id:I
    .restart local v10       #user_data:I
    :pswitch_1
    iget-object v11, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 117
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v1, bundle:Landroid/os/Bundle;
    const-string v11, "timer_id"

    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v11, "user_data"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.telephony.volte_timer_alarm"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    iget-object v11, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    const/high16 v12, 0x800

    invoke-static {v11, v10, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 125
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-int/lit16 v13, v6, 0x3e8

    int-to-long v13, v13

    add-long v8, v11, v13

    .line 126
    .local v8, triggerAtTime:J
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8, v9, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "timer set, timer_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", user_data = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", timeout = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",triggerAtTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v5           #request_id:I
    .end local v6           #timeout:I
    .end local v7           #timer_id:I
    .end local v8           #triggerAtTime:J
    .end local v10           #user_data:I
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #request_id:I
    .restart local v6       #timeout:I
    .restart local v7       #timer_id:I
    .restart local v10       #user_data:I
    :pswitch_2
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v11, "timer_id"

    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v11, "user_data"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.telephony.volte_timer_alarm"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    iget-object v11, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    const/high16 v12, 0x800

    invoke-static {v11, v10, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 142
    .restart local v4       #pi:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 143
    iget-object v11, p0, Lcom/android/internal/telephony/TimerDispatcher;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    .restart local v0       #am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 148
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "timer cancel, timer_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", user_data = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x18830
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public disableRequest()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public enableRequest()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 163
    const-string v0, "Timer-IMSA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method
