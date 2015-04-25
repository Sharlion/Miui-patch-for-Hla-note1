.class Lcom/android/server/InputMethodManagerService$SwitchImeTask;
.super Ljava/util/TimerTask;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchImeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3858
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3858
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3860
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3861
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    if-ne v7, v9, :cond_9

    .line 3862
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList()Ljava/util/List;

    move-result-object v3

    .line 3864
    .local v3, imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3865
    .local v0, currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    if-gt v7, v9, :cond_1

    .line 3866
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3867
    const-string v7, "InputMethodManagerService"

    const-string v9, "Only one IME within list, ignored"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :cond_0
    monitor-exit v8

    .line 3905
    .end local v0           #currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :goto_0
    return-void

    .line 3870
    .restart local v0       #currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3       #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 3871
    .local v6, listSize:I
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3874
    .local v1, currentSubtypeId:I
    :goto_1
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3875
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ImeSubtypeListItem size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_6

    .line 3877
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 3878
    .local v4, isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v7, v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7, v0}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v7, v1, :cond_8

    .line 3879
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 3880
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",i: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",listSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    :cond_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7, v2}, Lcom/android/server/InputMethodManagerService;->access$1712(Lcom/android/server/InputMethodManagerService;I)I

    .line 3883
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    rem-int/2addr v9, v6

    #setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1702(Lcom/android/server/InputMethodManagerService;I)I

    .line 3884
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    if-gez v7, :cond_4

    .line 3885
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7, v6}, Lcom/android/server/InputMethodManagerService;->access$1712(Lcom/android/server/InputMethodManagerService;I)I

    .line 3887
    :cond_4
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 3888
    .local v5, item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 3889
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set input method in runnable! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_5
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    iget v10, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3895
    .end local v4           #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .end local v5           #item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_6
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1702(Lcom/android/server/InputMethodManagerService;I)I

    .line 3896
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1802(Lcom/android/server/InputMethodManagerService;I)I

    .line 3904
    .end local v0           #currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    .end local v1           #currentSubtypeId:I
    .end local v2           #i:I
    .end local v3           #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    .end local v6           #listSize:I
    :goto_3
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3871
    .restart local v0       #currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3       #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    .restart local v6       #listSize:I
    :cond_7
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 3876
    .restart local v1       #currentSubtypeId:I
    .restart local v2       #i:I
    .restart local v4       #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3898
    .end local v0           #currentMethod:Landroid/view/inputmethod/InputMethodInfo;
    .end local v1           #currentSubtypeId:I
    .end local v2           #i:I
    .end local v3           #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    .end local v4           #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .end local v6           #listSize:I
    :cond_9
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    #setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1702(Lcom/android/server/InputMethodManagerService;I)I

    .line 3899
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "schedule switch task after 500ms! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$2100(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Timer;->purge()I

    .line 3901
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$2102(Lcom/android/server/InputMethodManagerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3902
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$2100(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    new-instance v9, Lcom/android/server/InputMethodManagerService$SwitchImeTask;

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {v9, v10}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method