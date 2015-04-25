.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayRotation:I

.field mFirst:Lcom/android/server/wm/StackBox;

.field mIsFloating:Z

.field mIsSticky:Z

.field mOrientation:I

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field mTmpRect:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F

.field mXOffset:I

.field mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .locals 3
    .parameter "service"
    .parameter "displayContent"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    .line 439
    iput-boolean v1, p0, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    .line 442
    iput-boolean v1, p0, Lcom/android/server/wm/StackBox;->mIsSticky:Z

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/StackBox;->mOrientation:I

    .line 447
    iput v1, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    .line 93
    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    .line 94
    :try_start_0
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 99
    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 100
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private rotateBounds(III)V
    .locals 7
    .parameter "rotation"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 496
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 497
    .local v0, pivotX:I
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 498
    .local v1, pivotY:I
    const/4 v2, 0x0

    .local v2, tmpX:I
    const/4 v3, 0x0

    .line 500
    .local v3, tmpY:I
    invoke-virtual {p0, p1}, Lcom/android/server/wm/StackBox;->deltaRotation(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 528
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotateBounds exception, rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDisplayRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 536
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 537
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 539
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 541
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->show()V

    .line 543
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    .line 545
    return-void

    .line 503
    :pswitch_0
    move v2, v1

    .line 504
    sub-int v3, p3, v0

    .line 507
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 508
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 509
    goto :goto_0

    .line 512
    :pswitch_1
    sub-int v2, p2, v0

    .line 513
    sub-int v3, p3, v1

    .line 515
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 516
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 517
    goto :goto_0

    .line 520
    :pswitch_2
    sub-int v2, p2, v1

    .line 521
    move v3, v0

    .line 523
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 524
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 525
    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public adjustFloatingRect(II)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 560
    iget v1, p0, Lcom/android/server/wm/StackBox;->mXOffset:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/StackBox;->mYOffset:I

    if-eq v1, p2, :cond_1

    .line 561
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 562
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 563
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 564
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 565
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 566
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 569
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    iput p1, p0, Lcom/android/server/wm/StackBox;->mXOffset:I

    .line 570
    iput p2, p0, Lcom/android/server/wm/StackBox;->mYOffset:I

    .line 571
    return-void
.end method

.method animateDimLayers()Z
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    .line 357
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    .line 358
    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_0
.end method

.method contains(I)Z
    .locals 1
    .parameter "stackBoxId"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method deltaRotation(I)I
    .locals 2
    .parameter "rotation"

    .prologue
    .line 489
    iget v1, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    sub-int v0, p1, v1

    .line 490
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 491
    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 408
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 411
    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 426
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 584
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsFloating="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 585
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSticky="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mIsSticky:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplayRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 587
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Launch Mode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/android/server/wm/StackBox;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StackBox;->mOrientation:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 592
    :cond_0
    const-string v0, "Portrait"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mXOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mYOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 599
    return-void

    .line 594
    :cond_1
    const-string v0, "Landscape"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoxBounds(III)Landroid/graphics/Rect;
    .locals 1
    .parameter "rotation"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 548
    iget v0, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    if-ne v0, p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 555
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackBox;->rotateBounds(III)V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getBoxOffsets([I)V
    .locals 2
    .parameter "offsets"

    .prologue
    .line 575
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offsets must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/StackBox;->mXOffset:I

    aput v1, p1, v0

    .line 579
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/StackBox;->mYOffset:I

    aput v1, p1, v0

    .line 580
    return-void
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "stackId"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 159
    :goto_0
    return-object v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 156
    .local v0, bounds:Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method getStackId()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v0

    goto :goto_0
.end method

.method public initFloatStackSize(I)Z
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 452
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFloatStackSize orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-boolean v3, p0, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    if-nez v3, :cond_0

    .line 456
    const-string v2, "WindowManager"

    const-string v3, "Non floating stack did the function initFloatStackSize"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return v1

    .line 463
    :cond_0
    iget v3, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 464
    .local v0, bounds:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 465
    const-string v2, "WindowManager"

    const-string v3, "Stack Bounds is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    const-string v1, "WindowManager"

    const-string v3, "Floating stack had been inited"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 471
    goto :goto_0

    .line 474
    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 477
    :cond_3
    iput v1, p0, Lcom/android/server/wm/StackBox;->mOrientation:I

    .line 480
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/StackBox;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->computeStackBoxSize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 481
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    .line 482
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v3, p0, Lcom/android/server/wm/StackBox;->mDisplayRotation:I

    .line 483
    iput v1, p0, Lcom/android/server/wm/StackBox;->mXOffset:I

    .line 484
    iput v1, p0, Lcom/android/server/wm/StackBox;->mYOffset:I

    move v1, v2

    .line 485
    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    .line 376
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    .line 375
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    .line 376
    goto :goto_0
.end method

.method isFirstChild()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeDirty()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    .line 108
    :cond_0
    return-void
.end method

.method remove()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 252
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_1

    .line 254
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "StackBox.remove: removing top plane."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 256
    const/4 v2, 0x0

    .line 275
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 260
    .local v1, sibling:Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 261
    .local v0, grandparent:Lcom/android/server/wm/StackBox;
    iput-object v0, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 262
    if-nez v0, :cond_4

    .line 264
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    const-string v3, "StackBox.remove: grandparent null"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    .line 275
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v2

    goto :goto_0

    .line 259
    .end local v0           #grandparent:Lcom/android/server/wm/StackBox;
    .end local v1           #sibling:Lcom/android/server/wm/StackBox;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 268
    .restart local v0       #grandparent:Lcom/android/server/wm/StackBox;
    .restart local v1       #sibling:Lcom/android/server/wm/StackBox;
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_5

    const-string v2, "WindowManager"

    const-string v3, "StackBox.remove: grandparent getting sibling"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 272
    :cond_6
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_2
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_0
.end method

.method resetDimming()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_0
.end method

.method resize(IF)Z
    .locals 3
    .parameter "stackBoxId"
    .parameter "weight"

    .prologue
    const/4 v0, 0x1

    .line 279
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 280
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local p2
    :goto_1
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_0

    .restart local p2
    :cond_3
    const/high16 v2, 0x3f80

    sub-float p2, v2, p2

    goto :goto_1
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .locals 9
    .parameter "bounds"
    .parameter "underStatusBar"

    .prologue
    const/4 v5, 0x0

    .line 296
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_0

    .line 297
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStackBoxSizes bound = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", underStatusBar = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStackBoxId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mIsFloating:Z

    if-eqz v6, :cond_1

    .line 305
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayContent;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 309
    :cond_1
    const/4 v0, 0x0

    .line 310
    .local v0, change:Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_2

    .line 311
    const/4 v0, 0x1

    .line 312
    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    .line 314
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_5

    .line 315
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    or-int/2addr v0, v5

    .line 316
    if-eqz v0, :cond_4

    .line 317
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 318
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 340
    :cond_4
    :goto_0
    return v0

    .line 321
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_6

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 324
    .local v3, height:I
    int-to-float v6, v3

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 325
    .local v1, firstHeight:I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 326
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 327
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 328
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 329
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 330
    goto :goto_0

    .line 331
    .end local v1           #firstHeight:I
    .end local v3           #height:I
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 332
    .local v4, width:I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 333
    .local v2, firstWidth:I
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 334
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 335
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 336
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 337
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_0
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 8
    .parameter "stackId"
    .parameter "relativeStackBoxId"
    .parameter "position"
    .parameter "weight"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 173
    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_2

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 236
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 180
    .local v2, stack:Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    .line 187
    .end local v2           #stack:Lcom/android/server/wm/TaskStack;
    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 190
    .restart local v2       #stack:Lcom/android/server/wm/TaskStack;
    if-nez p3, :cond_4

    .line 192
    const/4 p3, 0x2

    .line 197
    :cond_3
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 201
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 202
    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    .line 203
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 204
    move-object v0, v2

    .line 205
    .local v0, firstStack:Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 227
    .local v1, secondStack:Lcom/android/server/wm/TaskStack;
    :goto_2
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 229
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 231
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 232
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 233
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 235
    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 193
    .end local v0           #firstStack:Lcom/android/server/wm/TaskStack;
    .end local v1           #secondStack:Lcom/android/server/wm/TaskStack;
    :cond_4
    if-ne p3, v7, :cond_3

    .line 195
    const/4 p3, 0x3

    goto :goto_1

    .line 207
    :cond_5
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 209
    .restart local v0       #firstStack:Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .line 211
    .restart local v1       #secondStack:Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 214
    .end local v0           #firstStack:Lcom/android/server/wm/TaskStack;
    .end local v1           #secondStack:Lcom/android/server/wm/TaskStack;
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 215
    const/4 v4, 0x4

    if-ne p3, v4, :cond_6

    .line 216
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 217
    move-object v0, v2

    .line 218
    .restart local v0       #firstStack:Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .restart local v1       #secondStack:Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 220
    .end local v0           #firstStack:Lcom/android/server/wm/TaskStack;
    .end local v1           #secondStack:Lcom/android/server/wm/TaskStack;
    :cond_6
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 222
    .restart local v0       #firstStack:Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .restart local v1       #secondStack:Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const/4 v0, -0x1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    .line 134
    .local v0, stackId:I
    if-gez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_0
.end method

.method switchUserStacks(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
