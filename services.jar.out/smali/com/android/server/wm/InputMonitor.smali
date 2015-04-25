.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final MILLI_TO_NANO:J = 0xf4240L


# instance fields
.field private mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v1, :cond_0

    .line 90
    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Create instance error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    return p1
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .parameter "windowHandle"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 306
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 313
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V
    .locals 7
    .parameter "inputWindowHandle"
    .parameter "child"
    .parameter "flags"
    .parameter "privateFlags"
    .parameter "type"
    .parameter "isVisible"
    .parameter "hasFocus"
    .parameter "hasWallpaper"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    .line 319
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 320
    and-int/lit8 v2, p3, 0x28

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 322
    .local v1, modal:Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1

    .line 324
    or-int/lit8 p3, p3, 0x20

    .line 325
    iget-object v2, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 338
    :goto_1
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 339
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    .line 340
    iput p5, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 341
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 342
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 343
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 344
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 345
    iput-boolean p8, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 346
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_2
    iput-boolean v2, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 347
    iget v2, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 348
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 349
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 350
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 352
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 353
    .local v0, frame:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 354
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 355
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 356
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 358
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    .line 362
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v2, v6, v2

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 382
    :goto_3
    iput-boolean v3, p1, Lcom/android/server/input/InputWindowHandle;->isFloating:Z

    .line 386
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 387
    return-void

    .end local v0           #frame:Landroid/graphics/Rect;
    .end local v1           #modal:Z
    :cond_0
    move v1, v3

    .line 320
    goto :goto_0

    .line 336
    .restart local v1       #modal:Z
    :cond_1
    iget-object v2, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 346
    goto :goto_2

    .line 364
    .restart local v0       #frame:Landroid/graphics/Rect;
    :cond_3
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_3
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 390
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 704
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 588
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 589
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 588
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_1

    .line 671
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 676
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 678
    :cond_1
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 580
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 579
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .parameter "policyFlags"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 17
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"
    .parameter "reason"

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v12, 0x0

    .line 160
    .local v12, windowState:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 162
    .local v2, aboveSystem:Z
    const/4 v4, 0x0

    .line 163
    .local v4, bIsWNR:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 164
    if-eqz p2, :cond_1

    .line 165
    :try_start_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v12, v0

    .line 166
    if-eqz v12, :cond_1

    .line 168
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v13

    if-eqz v13, :cond_4

    .line 169
    const-string v13, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Input event dispatching timed out sending to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-nez v3, :cond_0

    .line 175
    const/4 v4, 0x1

    .line 181
    :cond_0
    :try_start_1
    iget-object v13, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v13}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 194
    :try_start_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v3, v0

    .line 197
    :cond_2
    if-eqz v12, :cond_6

    .line 198
    const-string v13, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Input event dispatching timed out sending to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".  Reason: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v15, 0x7d3

    invoke-interface {v13, v15}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v8

    .line 206
    .local v8, systemAlertLayer:I
    iget v13, v12, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v13, v8, :cond_5

    const/4 v2, 0x1

    .line 216
    .end local v8           #systemAlertLayer:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v12, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 217
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    if-eqz v3, :cond_c

    iget-object v13, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v13, :cond_c

    .line 235
    const/4 v1, 0x1

    .line 237
    .local v1, abort:Z
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v13

    if-eqz v13, :cond_9

    .line 239
    if-eqz v4, :cond_8

    .line 241
    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notifyWNR mPid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    const-string v15, "KeyDispatchingTimeout--WNR"

    invoke-interface {v13, v14, v15}, Landroid/app/IANRManager;->notifyWNR(ILjava/lang/String;)Z

    move-result v1

    .line 255
    :goto_2
    if-nez v1, :cond_a

    .line 258
    iget-wide v9, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    .end local v1           #abort:Z
    :cond_3
    :goto_3
    return-wide v9

    .line 182
    :catch_0
    move-exception v5

    .line 183
    .local v5, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v13, "WindowManager"

    const-string v15, "Error dump input dispatching status."

    invoke-static {v13, v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 217
    .end local v5           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 188
    :cond_4
    :try_start_5
    iget-object v3, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_0

    .line 206
    .restart local v8       #systemAlertLayer:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 207
    .end local v8           #systemAlertLayer:I
    :cond_6
    if-eqz v3, :cond_7

    .line 208
    const-string v13, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Input event dispatching timed out sending to application "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".  Reason: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :cond_7
    const-string v13, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Input event dispatching timed out .  Reason: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 247
    .restart local v1       #abort:Z
    :cond_8
    :try_start_6
    iget-object v13, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v13, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 252
    :cond_9
    iget-object v13, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v13, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 262
    :cond_a
    if-eqz v12, :cond_b

    iget v13, v12, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 263
    .local v11, userId:I
    :goto_4
    iget-wide v13, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    const-wide/32 v15, 0xf4240

    div-long/2addr v13, v15

    invoke-static {v11, v13, v14}, Lcom/android/server/am/ANRManager;->extendANRTime(IJ)J

    move-result-wide v6

    .line 264
    .local v6, extendTime:J
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-lez v13, :cond_e

    .line 265
    const-string v13, "WindowManager"

    const-string v14, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 266
    const-wide/32 v13, 0xf4240

    mul-long v9, v6, v13

    goto/16 :goto_3

    .line 262
    .end local v6           #extendTime:J
    .end local v11           #userId:I
    :cond_b
    const/16 v11, -0x2710

    goto :goto_4

    .line 272
    .end local v1           #abort:Z
    :cond_c
    if-eqz v12, :cond_d

    .line 276
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v13, v14, v2, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v9

    .line 278
    .local v9, timeout:J
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-gez v13, :cond_3

    .line 285
    iget v13, v12, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 286
    .restart local v11       #userId:I
    const-wide/16 v13, 0x1f40

    invoke-static {v11, v13, v14}, Lcom/android/server/am/ANRManager;->extendANRTime(IJ)J

    move-result-wide v6

    .line 287
    .restart local v6       #extendTime:J
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-lez v13, :cond_e

    .line 288
    const-string v13, "WindowManager"

    const-string v14, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 289
    const-wide/32 v13, 0xf4240

    mul-long v9, v6, v13

    goto/16 :goto_3

    .line 298
    .end local v6           #extendTime:J
    .end local v9           #timeout:J
    .end local v11           #userId:I
    :cond_d
    const-string v13, "WindowManager"

    const-string v14, "both windowState & appWindowToken are null"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_e
    :goto_5
    const-wide/16 v9, 0x0

    goto/16 :goto_3

    .line 293
    :catch_1
    move-exception v13

    goto :goto_5

    .line 270
    .restart local v1       #abort:Z
    :catch_2
    move-exception v13

    goto :goto_5
.end method

.method public notifyConfigurationChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 496
    new-instance v2, Lcom/android/server/wm/InputMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InputMonitor$1;-><init>(Lcom/android/server/wm/InputMonitor;)V

    .line 515
    .local v2, task:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v4}, Lcom/mediatek/common/hdmi/IHDMINative;->getDisplayType()I

    move-result v3

    .line 516
    .local v3, type:I
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_0

    .line 517
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyConfigurationChanged, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    if-ne v3, v8, :cond_4

    .line 520
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hdmi_cable_plugged"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 522
    .local v0, hdmiPlugState:I
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSbParams:Lcom/android/server/wm/WindowManagerService$SmartBookParams;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->getPlugState()I

    move-result v1

    .line 523
    .local v1, smbPlugState:I
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyConfigurationChanged, hdmi plug:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", smb plug:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-ne v0, v8, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 528
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 537
    .end local v0           #hdmiPlugState:I
    .end local v1           #smbPlugState:I
    :goto_0
    return-void

    .line 531
    .restart local v0       #hdmiPlugState:I
    .restart local v1       #smbPlugState:I
    :cond_3
    const-string v4, "WindowManager"

    const-string v5, "notifyConfigurationChanged, add pending task"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSbParams:Lcom/android/server/wm/WindowManagerService$SmartBookParams;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->addPendingTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 534
    .end local v0           #hdmiPlugState:I
    .end local v1           #smbPlugState:I
    :cond_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .parameter "inputWindowHandle"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 110
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 111
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 114
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 556
    return-void
.end method

.method public notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .locals 6
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"
    .parameter "pid"
    .parameter "message"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, windowState:Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .line 124
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    .line 126
    :try_start_0
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 127
    if-eqz v3, :cond_0

    .line 129
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 133
    :cond_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    if-eqz v3, :cond_2

    .line 135
    :cond_1
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v4

    const-string v5, "KeyDispatchingTimeout predump"

    invoke-interface {v4, p3, v5, p4}, Landroid/app/IANRManager;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_2
    const-string v4, "WindowManager"

    const-string v5, "Touch event for WNR, it isn\'t necessary to predump"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Error notifyPredump "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    .line 648
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 649
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 654
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 656
    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .parameter "window"

    .prologue
    .line 659
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 660
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 667
    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 693
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 698
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 700
    :cond_1
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .parameter "newApp"

    .prologue
    .line 627
    if-nez p1, :cond_0

    .line 628
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 645
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 631
    .local v1, handle:Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 632
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 636
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->getFocusAppPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "GetFocusAppPid fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v3, 0x0

    .line 604
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_3

    .line 609
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 616
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 617
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 619
    if-eqz p2, :cond_3

    .line 620
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 623
    :cond_3
    return-void
.end method

.method public setSmartBookPlugIn(Z)V
    .locals 1
    .parameter "plugin"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setSmartBookPlugIn(Z)V

    .line 709
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 397
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 682
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 687
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 689
    :cond_1
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 32
    .parameter "force"

    .prologue
    .line 401
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    .line 491
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .line 414
    .local v29, universeBackground:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v15, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 415
    .local v15, aboveUniverseLayer:I
    const/16 v16, 0x0

    .line 418
    .local v16, addedUniverse:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_3

    const/16 v22, 0x1

    .line 419
    .local v22, inDrag:Z
    :goto_1
    if-eqz v22, :cond_2

    .line 420
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_1

    .line 421
    const-string v2, "WindowManager"

    const-string v3, "Inserting drag window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v19, v0

    .line 424
    .local v19, dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v19, :cond_4

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 432
    .end local v19           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 433
    .local v14, NFW:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v14, :cond_5

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 433
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 418
    .end local v14           #NFW:I
    .end local v21           #i:I
    .end local v22           #inDrag:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 427
    .restart local v19       #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .restart local v22       #inDrag:Z
    :cond_4
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 438
    .end local v19           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .restart local v14       #NFW:I
    .restart local v21       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 439
    .local v25, numDisplays:I
    const/16 v18, 0x0

    .local v18, displayNdx:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v31

    .line 441
    .local v31, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, winNdx:I
    :goto_5
    if-ltz v30, :cond_f

    .line 442
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 443
    .local v17, child:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 444
    .local v23, inputChannel:Landroid/view/InputChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .line 445
    .local v24, inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_6

    if-eqz v24, :cond_6

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_7

    .line 441
    :cond_6
    :goto_6
    add-int/lit8 v30, v30, -0x1

    goto :goto_5

    .line 450
    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .line 451
    .local v20, flags:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    .line 452
    .local v27, privateFlags:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    .line 454
    .local v28, type:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_b

    const/4 v12, 0x1

    .line 455
    .local v12, hasFocus:Z
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    .line 456
    .local v11, isVisible:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_c

    const/16 v2, 0x7d4

    move/from16 v0, v28

    if-eq v0, v2, :cond_c

    const/4 v13, 0x1

    .line 458
    .local v13, hasWallpaper:Z
    :goto_8
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v26, 0x1

    .line 462
    .local v26, onDefaultDisplay:Z
    :goto_9
    if-eqz v22, :cond_8

    if-eqz v11, :cond_8

    if-eqz v26, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 466
    :cond_8
    if-eqz v29, :cond_a

    if-nez v16, :cond_a

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v15, :cond_a

    if-eqz v26, :cond_a

    .line 468
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 469
    .local v4, u:Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_9

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_9

    .line 470
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_e

    const/4 v9, 0x1

    :goto_a
    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    .line 474
    :cond_9
    const/16 v16, 0x1

    .line 477
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v29

    if-eq v2, v0, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v27

    move/from16 v10, v28

    .line 478
    invoke-direct/range {v5 .. v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    goto/16 :goto_6

    .line 454
    .end local v11           #isVisible:Z
    .end local v12           #hasFocus:Z
    .end local v13           #hasWallpaper:Z
    .end local v26           #onDefaultDisplay:Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    .line 456
    .restart local v11       #isVisible:Z
    .restart local v12       #hasFocus:Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_8

    .line 458
    .restart local v13       #hasWallpaper:Z
    :cond_d
    const/16 v26, 0x0

    goto :goto_9

    .line 470
    .restart local v4       #u:Lcom/android/server/wm/WindowState;
    .restart local v26       #onDefaultDisplay:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_a

    .line 439
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    .end local v11           #isVisible:Z
    .end local v12           #hasFocus:Z
    .end local v13           #hasWallpaper:Z
    .end local v17           #child:Lcom/android/server/wm/WindowState;
    .end local v20           #flags:I
    .end local v23           #inputChannel:Landroid/view/InputChannel;
    .end local v24           #inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .end local v26           #onDefaultDisplay:Z
    .end local v27           #privateFlags:I
    .end local v28           #type:I
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 485
    .end local v30           #winNdx:I
    .end local v31           #windows:Lcom/android/server/wm/WindowList;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 544
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 545
    :catch_0
    move-exception v0

    goto :goto_0
.end method
