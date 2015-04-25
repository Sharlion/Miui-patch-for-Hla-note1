.class Lcom/android/server/wm/ResizingFrame;
.super Ljava/lang/Object;
.source "ResizingFrame.java"


# static fields
.field private static final ALPHA:F = 0.5f

.field static DEBUG_STACK:Z = false

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field public static final RESIZE_DOWN:I = 0x2

.field public static final RESIZE_LEFT:I = 0x4

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_RIGHT:I = 0x8

.field public static final RESIZE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResizingFrame"

.field private static final THICKNESS:I = 0xa


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field mContext:Landroid/content/Context;

.field mCurrentWin:Lcom/android/server/wm/WindowState;

.field mDisplay:Landroid/view/Display;

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field private mEnableMotion:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSession:Landroid/view/SurfaceSession;

.field private mStackBox:Lcom/android/server/wm/StackBox;

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;)V
    .locals 5
    .parameter "service"
    .parameter "display"
    .parameter "session"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    .line 55
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 68
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 70
    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 72
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    .line 83
    iput-object p3, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    .line 84
    iput-object p4, p0, Lcom/android/server/wm/ResizingFrame;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private createSurfaceLocked()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "ResizingFrame"

    const-string v2, "createSurfaceLocked mSurfaceControl is not null. Copy the original surface to mSurface."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    move v1, v10

    .line 130
    :goto_0
    return v1

    .line 94
    :cond_0
    const/4 v8, 0x0

    .line 96
    .local v8, ctrl:Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_1

    .line 97
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string v2, "ResizingFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v8           #ctrl:Landroid/view/SurfaceControl;
    .local v0, ctrl:Landroid/view/SurfaceControl;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 104
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 112
    const/4 v7, 0x0

    .line 114
    .local v7, c:Landroid/graphics/Canvas;
    :try_start_2
    const-string v1, "ResizingFrame"

    const-string v2, "drawBitmap: lockCanvas"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 120
    :goto_2
    if-nez v7, :cond_2

    move v1, v11

    .line 121
    goto :goto_0

    .line 100
    .end local v0           #ctrl:Landroid/view/SurfaceControl;
    .end local v7           #c:Landroid/graphics/Canvas;
    .restart local v8       #ctrl:Landroid/view/SurfaceControl;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string v2, "ResizingFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v8           #ctrl:Landroid/view/SurfaceControl;
    .restart local v0       #ctrl:Landroid/view/SurfaceControl;
    goto :goto_1

    .line 106
    .end local v0           #ctrl:Landroid/view/SurfaceControl;
    .restart local v8       #ctrl:Landroid/view/SurfaceControl;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 107
    .end local v8           #ctrl:Landroid/view/SurfaceControl;
    .restart local v0       #ctrl:Landroid/view/SurfaceControl;
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_3
    const-string v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSurfaceLocked OutOfResourcesException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 108
    goto :goto_0

    .line 124
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v7       #c:Landroid/graphics/Canvas;
    :cond_2
    const-string v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawBitmap: Canvas height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    move v1, v10

    .line 130
    goto/16 :goto_0

    .line 118
    :catch_1
    move-exception v1

    goto :goto_2

    .line 117
    :catch_2
    move-exception v1

    goto :goto_2

    .line 106
    .end local v7           #c:Landroid/graphics/Canvas;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private cropSurface(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "crop"

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cropSurface: crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private destroySurfaceLocked()Z
    .locals 5

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, ctrl:Landroid/view/SurfaceControl;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 137
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ResizingFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroySurfaceLocked OutOfResourcesException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 157
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurface: setMatrix  matrix=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public copyBounds2Box()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStackBox:Lcom/android/server/wm/StackBox;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 236
    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyBounds2Box: copyBounds2Box = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableMotion(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 246
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public initBounds(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/StackBox;)V
    .locals 3
    .parameter "win"
    .parameter "box"

    .prologue
    .line 215
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBounds: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", box="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    if-nez p2, :cond_2

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 223
    invoke-direct {p0}, Lcom/android/server/wm/ResizingFrame;->createSurfaceLocked()Z

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 227
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBounds: mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEnableMotion()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    return v0
.end method

.method public isFocusWinChanged(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .parameter "currentFocus"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    return v0
.end method

.method public setLayer(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_1
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 187
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    goto :goto_0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBoundary: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    return-void
.end method

.method public updateSurface()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 212
    return-void
.end method
