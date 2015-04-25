.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z

.field static mIsAnimBg:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field mAlpha:F

.field mBounds:Landroid/graphics/Rect;

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartAlpha:F

.field mStartTime:J

.field mTargetAlpha:F

.field sizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;)V
    .locals 9
    .parameter "service"
    .parameter "stack"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "DimLayer"

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 32
    iput v3, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 41
    iput-boolean v4, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 44
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 47
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 325
    iput-boolean v4, p0, Lcom/android/server/wm/DimLayer;->sizeChanged:Z

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    .line 61
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 63
    .local v7, displayId:I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ctor: displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 66
    sget-boolean v0, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    if-nez v0, :cond_3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimLayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, surfaceName:Ljava/lang/String;
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    .line 73
    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 75
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_4

    .line 76
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 85
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DIM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": CREATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 94
    :goto_2
    return-void

    .line 70
    .end local v2           #surfaceName:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimLayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-AnimBg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .restart local v2       #surfaceName:Ljava/lang/String;
    sput-boolean v4, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    goto :goto_0

    .line 81
    :cond_4
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v8

    .line 90
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .locals 6
    .parameter "duration"

    .prologue
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 5
    .parameter "alpha"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3

    .line 123
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlpha alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 126
    cmpl-float v1, p1, v4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_4

    .line 127
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v2, "setAlpha hiding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 140
    :cond_3
    return-void

    .line 130
    :cond_4
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_2

    .line 131
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v2, "setAlpha showing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method destroySurface()V
    .locals 2

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 307
    :cond_1
    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_1

    .line 252
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v1, "hide: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 255
    :cond_1
    return-void
.end method

.method hide(J)V
    .locals 4
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 268
    :cond_2
    return-void
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 310
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 311
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 313
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    const-string v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 317
    const-string v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 318
    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 319
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 320
    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 321
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    and-int/lit8 v0, v0, 0x0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->sizeChanged:Z

    .line 148
    :cond_0
    return-void
.end method

.method setLayer(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 112
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 115
    :cond_0
    return-void
.end method

.method show()V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v1, "show: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 165
    :cond_1
    return-void
.end method

.method show(IFJ)V
    .locals 18
    .parameter "layer"
    .parameter "alpha"
    .parameter "duration"

    .prologue
    .line 176
    sget-boolean v13, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "show: layer="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " alpha="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v13, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v14, "show: no Surface"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 246
    :goto_0
    return-void

    .line 195
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->hasSibling()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 197
    .local v8, dw:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 198
    .local v6, dh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v11, v13

    .line 199
    .local v11, xPos:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v12, v13

    .line 214
    .local v12, yPos:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DimLayer;->mLayer:I

    move/from16 v0, p1

    if-eq v13, v0, :cond_5

    .line 216
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v11, v12}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-ne v8, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-eq v6, v13, :cond_4

    .line 219
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v8, v6}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    float-to-int v14, v11

    float-to-int v15, v12

    float-to-int v0, v11

    move/from16 v16, v0

    add-int v16, v16, v8

    float-to-int v0, v12

    move/from16 v17, v0

    add-int v17, v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 230
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 231
    .local v4, curTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v3

    .line 232
    .local v3, animating:Z
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v13, v13, p2

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v13, v13, p2

    if-eqz v13, :cond_8

    .line 234
    :cond_7
    const-wide/16 v13, 0x0

    cmp-long v13, p3, v13

    if-gtz v13, :cond_c

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 244
    :cond_8
    :goto_3
    sget-boolean v13, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "show: mStartAlpha="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mStartTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    goto/16 :goto_0

    .line 202
    .end local v3           #animating:Z
    .end local v4           #curTime:J
    .end local v6           #dh:I
    .end local v8           #dw:I
    .end local v11           #xPos:F
    .end local v12           #yPos:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 206
    .local v10, info:Landroid/view/DisplayInfo;
    iget v13, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v13, v14, :cond_b

    iget v7, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 207
    .local v7, dmax:I
    :goto_4
    int-to-double v13, v7

    const-wide/high16 v15, 0x3ff8

    mul-double/2addr v13, v15

    double-to-int v8, v13

    .line 208
    .restart local v8       #dw:I
    int-to-double v13, v7

    const-wide/high16 v15, 0x3ff8

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 210
    .restart local v6       #dh:I
    mul-int/lit8 v13, v8, -0x1

    div-int/lit8 v13, v13, 0x6

    int-to-float v11, v13

    .line 211
    .restart local v11       #xPos:F
    mul-int/lit8 v13, v6, -0x1

    div-int/lit8 v13, v13, 0x6

    int-to-float v12, v13

    .restart local v12       #yPos:F
    goto/16 :goto_1

    .line 206
    .end local v6           #dh:I
    .end local v7           #dmax:I
    .end local v8           #dw:I
    .end local v11           #xPos:F
    .end local v12           #yPos:F
    :cond_b
    iget v7, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_4

    .line 222
    .end local v10           #info:Landroid/view/DisplayInfo;
    .restart local v6       #dh:I
    .restart local v8       #dw:I
    .restart local v11       #xPos:F
    .restart local v12       #yPos:F
    :catch_0
    move-exception v9

    .line 223
    .local v9, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v14, "Failure setting size or layer"

    invoke-static {v13, v14, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 239
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v3       #animating:Z
    .restart local v4       #curTime:J
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 240
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 241
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_3
.end method

.method stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 281
    const/4 v4, 0x0

    .line 297
    :goto_0
    return v4

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 286
    .local v2, curTime:J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 287
    .local v1, alphaDelta:F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v5, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v5, v2, v5

    long-to-float v5, v5

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 288
    .local v0, alpha:F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpg-float v4, v1, v8

    if-gez v4, :cond_3

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 291
    :cond_2
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 293
    :cond_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stepAnimation: curTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 297
    .end local v0           #alpha:F
    .end local v1           #alphaDelta:F
    .end local v2           #curTime:J
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    goto :goto_0
.end method
