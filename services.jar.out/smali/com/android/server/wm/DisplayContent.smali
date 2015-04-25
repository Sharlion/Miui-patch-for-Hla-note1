.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# static fields
.field static final FLOAT_CONTROL_BAR_HEIGHT_DP:I = 0x2c

.field static final STACKS_OFFSET_MARGIN_DP:I = 0x32

.field static final STACK_BOUNDS_MARGIN_DP:I = 0xdc


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field mBottomBoundLimit:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFloatStackLandHeight:I

.field mFloatStackLandWidth:I

.field mFloatStackPortHeight:I

.field mFloatStackPortWidth:I

.field private mFocusStackBox:Lcom/android/server/wm/StackBox;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mLeftBoundLimit:I

.field mRightBoundLimit:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mStacksOffset:I

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRect:Landroid/graphics/Rect;

.field mTopBoundLimit:I

.field private mTopFloatStackBox:Lcom/android/server/wm/StackBox;

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .parameter "display"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v2, Lcom/android/server/wm/WindowList;

    invoke-direct {v2}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 70
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    .line 71
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 72
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 73
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 74
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 75
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 76
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 77
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 97
    new-instance v2, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v2}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    .line 104
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 110
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 552
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    .line 553
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    .line 554
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    .line 555
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    .line 556
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    .line 557
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    .line 558
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mStacksOffset:I

    .line 559
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 126
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 127
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 128
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 129
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 131
    new-instance v0, Lcom/android/server/wm/StackBox;

    invoke-direct {v0, p2, p0, v4}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .line 132
    .local v0, newBox:Lcom/android/server/wm/StackBox;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p2, v3, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 134
    .local v1, newStack:Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 135
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 136
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 137
    return-void

    .end local v0           #newBox:Lcom/android/server/wm/StackBox;
    .end local v1           #newStack:Lcom/android/server/wm/TaskStack;
    :cond_0
    move v2, v3

    .line 128
    goto :goto_0
.end method

.method private computeBoundaryLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v2, v2, 0xdc

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    .line 582
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    .line 585
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    .line 586
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    .line 587
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    .line 588
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 589
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 590
    .local v1, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 592
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    .line 594
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-ne v2, v3, :cond_1

    .line 596
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v3, v3, 0x2c

    div-int/lit16 v3, v3, 0xa0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFloatingWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->inMiniMax:Z

    if-nez v2, :cond_2

    .line 604
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    .line 606
    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_4

    .line 609
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeBoundaryLimit mTopBoundLimit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBottomBoundLimit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTopFloatStackBox = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v2, v2, 0x32

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mStacksOffset:I

    .line 619
    return-void

    .line 588
    .restart local v1       #win:Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method addStackBox(Lcom/android/server/wm/StackBox;Z)V
    .locals 2
    .parameter "box"
    .parameter "toTop"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addStackBox: Too many toplevel StackBoxes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 312
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 8
    .parameter "task"
    .parameter "toTop"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 183
    .local v2, userId:I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, numTasks:I
    if-eqz p2, :cond_3

    .line 185
    add-int/lit8 v1, v0, -0x1

    .local v1, taskNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, v2, :cond_2

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    const/16 v6, 0x791a

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eqz p2, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 201
    return-void

    .line 185
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    .end local v1           #taskNdx:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #taskNdx:I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, v2, :cond_1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v3, v5

    .line 200
    goto :goto_1
.end method

.method animateDimLayers()Z
    .locals 3

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 449
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 452
    :cond_0
    return v0
.end method

.method close()V
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method computeStackBoxSize(I)Landroid/graphics/Rect;
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x0

    .line 621
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 623
    .local v1, boxSize:Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    const/16 v4, 0x9

    if-ne p1, v4, :cond_7

    .line 625
    :cond_0
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    if-nez v4, :cond_1

    .line 626
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v4, v5, :cond_6

    .line 627
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    .line 631
    :goto_0
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    .line 633
    :cond_1
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 634
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 652
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->computeBoundaryLimit()V

    .line 654
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v4, :cond_4

    .line 655
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    iget-object v0, v4, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 658
    .local v0, bound:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mStacksOffset:I

    add-int v2, v4, v5

    .line 659
    .local v2, left:I
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mStacksOffset:I

    add-int v3, v4, v5

    .line 660
    .local v3, top:I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    if-le v2, v4, :cond_2

    .line 661
    const/4 v2, 0x0

    .line 663
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    if-le v3, v4, :cond_3

    .line 664
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    .line 666
    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 668
    .end local v0           #bound:Landroid/graphics/Rect;
    .end local v2           #left:I
    .end local v3           #top:I
    :cond_4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v4, :cond_5

    .line 669
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackBoxSize boxSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_5
    return-object v1

    .line 629
    :cond_6
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    goto :goto_0

    .line 637
    :cond_7
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    if-nez v4, :cond_8

    .line 638
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v4, v5, :cond_9

    .line 639
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    .line 643
    :goto_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    .line 645
    :cond_8
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 646
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 641
    :cond_9
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    goto :goto_2
.end method

.method createStack(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 16
    .parameter "stackId"
    .parameter "relativeStackBoxId"
    .parameter "position"
    .parameter "weight"

    .prologue
    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, newStack:Lcom/android/server/wm/TaskStack;
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v9, :cond_0

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createStack: stackId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " relativeStackBoxId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " position="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " weight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    if-nez p1, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 241
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "createStack: HOME_STACK_ID (0) not first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 282
    :cond_2
    if-eqz v6, :cond_3

    .line 283
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 285
    :cond_3
    const/16 v9, 0x791c

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x42c8

    mul-float v12, v12, p4

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 287
    return-object v6

    .line 246
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .local v8, stackBoxNdx:I
    :goto_0
    if-ltz v8, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    .line 248
    .local v4, box:Lcom/android/server/wm/StackBox;
    const/4 v9, 0x6

    move/from16 v0, p3

    if-eq v0, v9, :cond_5

    const/4 v9, 0x7

    move/from16 v0, p3

    if-ne v0, v9, :cond_9

    .line 251
    :cond_5
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 252
    new-instance v5, Lcom/android/server/wm/StackBox;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v9, v0, v10}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .line 253
    .local v5, newBox:Lcom/android/server/wm/StackBox;
    new-instance v6, Lcom/android/server/wm/TaskStack;

    .end local v6           #newStack:Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v6, v9, v0, v1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 254
    .restart local v6       #newStack:Lcom/android/server/wm/TaskStack;
    iput-object v5, v6, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 255
    iput-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 256
    const/4 v9, 0x6

    move/from16 v0, p3

    if-ne v0, v9, :cond_8

    const/4 v7, 0x1

    .line 257
    .local v7, offset:I
    :goto_1
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v9, :cond_6

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createStack: inserting stack at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int v10, v8, v7

    invoke-virtual {v9, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 262
    const/high16 v9, 0x3f80

    cmpg-float v9, p4, v9

    if-gez v9, :cond_7

    .line 263
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    .line 277
    .end local v4           #box:Lcom/android/server/wm/StackBox;
    .end local v5           #newBox:Lcom/android/server/wm/StackBox;
    .end local v7           #offset:I
    :cond_7
    if-gez v8, :cond_2

    .line 278
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createStack: stackBoxId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 256
    .restart local v4       #box:Lcom/android/server/wm/StackBox;
    .restart local v5       #newBox:Lcom/android/server/wm/StackBox;
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 271
    .end local v5           #newBox:Lcom/android/server/wm/StackBox;
    :cond_9
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 272
    if-nez v6, :cond_7

    .line 246
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 482
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Display: mDisplayId="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 483
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, subPrefix:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "init="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 486
    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v10, v11, :cond_1

    .line 490
    :cond_0
    const-string v10, " base="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 492
    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    :cond_1
    const-string v10, " cur="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 496
    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 497
    const-string v10, " app="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 499
    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 500
    const-string v10, " rng="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 502
    const-string v10, "-"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 503
    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "layoutNeeded="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 505
    const/4 v0, 0x0

    .local v0, boxNdx:I
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 507
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    .line 510
    .local v2, ndx:I
    if-lez v2, :cond_4

    .line 511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 512
    const-string v10, "  Application tokens in Z order:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    .line 514
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, taskNdx:I
    :goto_1
    if-ltz v5, :cond_4

    .line 515
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 516
    .local v8, tokens:Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, tokenNdx:I
    move v3, v2

    .end local v2           #ndx:I
    .local v3, ndx:I
    :goto_2
    if-ltz v7, :cond_3

    .line 517
    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    .line 518
    .local v9, wtoken:Lcom/android/server/wm/AppWindowToken;
    const-string v10, "  App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    .end local v3           #ndx:I
    .restart local v2       #ndx:I
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 519
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v10, "    "

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 516
    add-int/lit8 v7, v7, -0x1

    move v3, v2

    .end local v2           #ndx:I
    .restart local v3       #ndx:I
    goto :goto_2

    .line 514
    .end local v9           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    move v2, v3

    .end local v3           #ndx:I
    .restart local v2       #ndx:I
    goto :goto_1

    .line 524
    .end local v5           #taskNdx:I
    .end local v7           #tokenNdx:I
    .end local v8           #tokens:Lcom/android/server/wm/AppTokenList;
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 525
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 526
    const-string v10, "  Exiting tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, i:I
    :goto_3
    if-ltz v1, :cond_5

    .line 528
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 529
    .local v6, token:Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 530
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 531
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 532
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 527
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 535
    .end local v1           #i:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 536
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 537
    const-string v10, "  Exiting application tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1       #i:I
    :goto_4
    if-ltz v1, :cond_6

    .line 539
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 540
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 541
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 542
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 543
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 538
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 549
    .end local v1           #i:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 550
    return-void
.end method

.method public dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 565
    const-string v0, "  Others:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "    mFloatStackPortWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 567
    const-string v0, "    mFloatStackPortHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackPortHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 568
    const-string v0, "    mFloatStackLandWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 569
    const-string v0, "    mFloatStackLandHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mFloatStackLandHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 570
    const-string v0, "    mTopBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 571
    const-string v0, "    mBottomBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 572
    const-string v0, "    mRightBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 573
    const-string v0, "    mLeftBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 574
    const-string v0, "    mStacksOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mStacksOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 575
    const-string v0, "    mFocusStackBox="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 576
    const-string v0, "    mTopFloatStackBox="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTopFloatStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 218
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 219
    .local v3, width:I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 220
    .local v1, left:I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 221
    .local v0, height:I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 222
    .local v2, top:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    return-void
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "stackId"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 398
    .local v0, bounds:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 402
    .end local v0           #bounds:Landroid/graphics/Rect;
    :goto_1
    return-object v0

    .line 396
    .restart local v0       #bounds:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 402
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 4
    .parameter "box"

    .prologue
    .line 326
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo;-><init>()V

    .line 327
    .local v0, info:Landroid/app/ActivityManager$StackBoxInfo;
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    .line 328
    iget v1, p1, Lcom/android/server/wm/StackBox;->mWeight:F

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    .line 329
    iget-boolean v1, p1, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 331
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 340
    :goto_0
    return-object v0

    .line 335
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 336
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    .line 337
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 338
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method getStackBoxInfos()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 348
    :cond_0
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method homeOnTop()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isDimming()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v2

    or-int/2addr v0, v2

    .line 463
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 466
    :cond_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveHomeStackBox(Z)Z
    .locals 5
    .parameter "toTop"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveHomeStackBox: toTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const/16 v3, 0x791d

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 373
    :cond_1
    :goto_1
    :pswitch_0
    return v2

    :cond_2
    move v0, v2

    .line 360
    goto :goto_0

    .line 362
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 367
    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method numTokens()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, count:I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, taskNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 228
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 231
    :cond_0
    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;)V
    .locals 4
    .parameter "box"

    .prologue
    .line 315
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStackBox: box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 317
    .local v0, stack:Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_2

    .line 319
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "removeStackBox: Not deleting home stack."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 442
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 456
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method resizeStack(IF)Z
    .locals 4
    .parameter "stackBoxId"
    .parameter "weight"

    .prologue
    const/4 v2, 0x1

    .line 292
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 293
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 295
    .local v0, box:Lcom/android/server/wm/StackBox;
    iget-boolean v3, v0, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    if-nez v3, :cond_1

    .line 304
    .end local v0           #box:Lcom/android/server/wm/StackBox;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 299
    .restart local v0       #box:Lcom/android/server/wm/StackBox;
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1

    .line 292
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method setFocusStack(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .parameter "focusedStack"

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusStackBox:Lcom/android/server/wm/StackBox;

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusStackBox:Lcom/android/server/wm/StackBox;

    goto :goto_0
.end method

.method setStackBoxSize(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "contentRect"

    .prologue
    const/4 v3, 0x1

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, change:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    iget-boolean v2, v2, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    if-ne v2, v3, :cond_0

    .line 384
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_1

    .line 392
    :cond_1
    return v0
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 7
    .parameter "focusedStack"

    .prologue
    .line 411
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 412
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 413
    .local v3, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 414
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 415
    .local v2, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 416
    .local v1, stack:Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 417
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 418
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 419
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 413
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 422
    .end local v1           #stack:Lcom/android/server/wm/TaskStack;
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 407
    .local v0, topBox:Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v1

    return v1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 470
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method switchUserStacks(II)V
    .locals 7
    .parameter "oldUserId"
    .parameter "newUserId"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 426
    .local v3, windows:Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 427
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 428
    .local v2, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user changing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hiding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", belonging to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 426
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, stackBoxNdx:I
    :goto_1
    if-ltz v1, :cond_3

    .line 437
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 436
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 439
    :cond_3
    return-void
.end method

.method updateDisplayInfo()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 213
    return-void
.end method

.method verifyStackBounds(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "bounds"

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->computeBoundaryLimit()V

    .line 684
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    if-ge v0, v1, :cond_0

    .line 685
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLeftBoundLimit:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 688
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    if-le v0, v1, :cond_1

    .line 689
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRightBoundLimit:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 692
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    if-ge v0, v1, :cond_2

    .line 693
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mTopBoundLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 696
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    if-le v0, v1, :cond_3

    .line 697
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBottomBoundLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 700
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    if-le v0, v1, :cond_4

    .line 701
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 704
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    if-le v0, v1, :cond_5

    .line 705
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 707
    :cond_5
    return-void
.end method
