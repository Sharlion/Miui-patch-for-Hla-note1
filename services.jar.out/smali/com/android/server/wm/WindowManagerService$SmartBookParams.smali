.class Lcom/android/server/wm/WindowManagerService$SmartBookParams;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBookParams"
.end annotation


# static fields
.field static final HDMI_PLUG_IN:I = 0x1

.field static final HDMI_PLUG_OUT:I = 0x0

.field static final SMARTBOOK_HAS_PLUGGED_IN:I = 0x2

.field static final SMARTBOOK_HAS_PLUGGED_OUT:I = 0x0

.field static final SMARTBOOK_PLUGGING_IN:I = 0x1

.field static final SMARTBOOK_PLUGGING_OUT:I = 0x3


# instance fields
.field mDebugEnabled:Z

.field mPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPermitWakeUp:Z

.field mPlugState:I

.field mTurnOnScreenWin:Ljava/lang/String;

.field final sWakeUpSmartBookList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 842
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    .line 836
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mDebugEnabled:Z

    .line 837
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPermitWakeUp:Z

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.CameraLauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.Camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d.app.Wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.VideoCamera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method


# virtual methods
.method public addPendingTask(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    monitor-exit v1

    .line 855
    return-void

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkWindowInSmartBookWhiteList()Z
    .locals 3

    .prologue
    .line 891
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 892
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    const/4 v1, 0x1

    .line 897
    :goto_1
    return v1

    .line 891
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public flushPendingTasks()V
    .locals 7

    .prologue
    .line 858
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 859
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 860
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 861
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 862
    .local v2, task:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    .end local v2           #task:Ljava/lang/Runnable;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 865
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pending tasks are all cleared"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    monitor-exit v4

    .line 867
    return-void

    .line 866
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPlugState()I
    .locals 1

    .prologue
    .line 870
    monitor-enter p0

    .line 871
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    monitor-exit p0

    return v0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlugged()Z
    .locals 2

    .prologue
    .line 876
    monitor-enter p0

    .line 877
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 878
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    .line 880
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTurnOnScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    .line 886
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turning on screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method public transitSmartBookPluginState(ZZZ)Z
    .locals 6
    .parameter "plugin"
    .parameter "fromUEvent"
    .parameter "fromDispEvent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 901
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitSmartBookPluginState, current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fromUEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromDispEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    .line 905
    .local v0, oldState:I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    packed-switch v3, :pswitch_data_0

    .line 935
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eq v0, v3, :cond_7

    .line 936
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state transit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    monitor-exit p0

    move v1, v2

    .line 940
    :goto_1
    return v1

    .line 907
    :pswitch_0
    if-nez p1, :cond_1

    .line 908
    monitor-exit p0

    goto :goto_1

    .line 942
    .end local v0           #oldState:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 909
    .restart local v0       #oldState:I
    :cond_1
    if-eqz p3, :cond_2

    .line 910
    const/4 v3, 0x2

    :try_start_1
    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 911
    :cond_2
    if-eqz p2, :cond_0

    .line 912
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 915
    :pswitch_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 916
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 917
    :cond_3
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 918
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 921
    :pswitch_2
    if-eqz p1, :cond_4

    .line 922
    monitor-exit p0

    goto :goto_1

    .line 923
    :cond_4
    if-eqz p3, :cond_5

    .line 924
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 925
    :cond_5
    if-eqz p2, :cond_0

    .line 926
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 929
    :pswitch_3
    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    .line 930
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 931
    :cond_6
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 932
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_0

    .line 939
    :cond_7
    const-string v2, "WindowManager"

    const-string v3, "state no change"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
