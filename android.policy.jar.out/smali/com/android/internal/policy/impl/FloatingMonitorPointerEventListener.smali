.class public Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;
.super Ljava/lang/Object;
.source "FloatingMonitorPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field static DEBUG:Z = false

.field private static final MOTION_MODE_DRAG:I = 0x1

.field private static final MOTION_MODE_NONE:I = 0x0

.field private static final RESIZE_DIRECTION_ALL:I = 0x10

.field static final TAG:Ljava/lang/String; = "FloatingMonitor"


# instance fields
.field private mBottomBarRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCtrlBarBtnWidth:I

.field private mCtrlBarHeight:I

.field private mCtrlBarRect:Landroid/graphics/Rect;

.field mEnabledResizeDirections:[I

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field final mFocusWindowLock:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftBarRect:Landroid/graphics/Rect;

.field private mMonitorRect:Landroid/graphics/Rect;

.field mMotionMode:I

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field mResizeDirect:I

.field private mRightBarRect:Landroid/graphics/Rect;

.field private mTopBarRect:Landroid/graphics/Rect;

.field private mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 74
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    .line 90
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;-><init>(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 215
    iput-object p1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 218
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->computeCtrlBarRegion()V

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->checkResizeDirectionEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private checkResizeDirectionEnabled(I)Z
    .locals 5
    .parameter "currentResizeDirect"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 288
    .local v1, i:I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    if-ne v1, p1, :cond_1

    .line 289
    :cond_0
    const/4 v4, 0x1

    .line 291
    .end local v1           #i:I
    :goto_1
    return v4

    .line 287
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1           #i:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private computeCtrlBarRegion()V
    .locals 4

    .prologue
    .line 263
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 264
    .local v0, displayInfo:Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 267
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 270
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v2, v2, 0x82

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 271
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v2, v2, 0x2c

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    .line 273
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motionEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 237
    .local v0, action:I
    sget-boolean v1, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "FloatingMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Motion Event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 244
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-eqz v1, :cond_3

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->enableFocusedFrame(Z)V

    .line 248
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 249
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_4
    if-nez v0, :cond_5

    .line 254
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 255
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public updatFocusWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "focusWindow"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMonitorRect(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "FloatingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMonitorRect ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
