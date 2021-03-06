.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 129
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 147
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 153
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 156
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 161
    const/high16 v0, 0x209

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 165
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    .line 175
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 703
    :pswitch_0
    const-string v0, "APP_STATE_IDLE"

    goto :goto_0

    .line 705
    :pswitch_1
    const-string v0, "APP_STATE_READY"

    goto :goto_0

    .line 707
    :pswitch_2
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_0

    .line 709
    :pswitch_3
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "transition"

    .prologue
    .line 654
    sparse-switch p0, :sswitch_data_0

    .line 695
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 656
    :sswitch_0
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    .line 659
    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 662
    :sswitch_2
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_0

    .line 665
    :sswitch_3
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    .line 668
    :sswitch_4
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    .line 671
    :sswitch_5
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    .line 674
    :sswitch_6
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    .line 677
    :sswitch_7
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    .line 680
    :sswitch_8
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    .line 683
    :sswitch_9
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    .line 686
    :sswitch_a
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    .line 689
    :sswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    .line 692
    :sswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    .line 654
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1006 -> :sswitch_3
        0x1008 -> :sswitch_5
        0x100a -> :sswitch_7
        0x100d -> :sswitch_a
        0x100e -> :sswitch_b
        0x2000 -> :sswitch_2
        0x2007 -> :sswitch_4
        0x2009 -> :sswitch_6
        0x200b -> :sswitch_8
        0x200c -> :sswitch_9
        0x200f -> :sswitch_c
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .parameter "startPos"
    .parameter "finalScale"

    .prologue
    .line 333
    const/high16 v1, 0x3f80

    sub-float v0, p1, v1

    .line 334
    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 335
    int-to-float v1, p0

    .line 337
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .parameter "transit"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 342
    const/4 v11, 0x0

    .line 343
    .local v11, a:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 346
    .local v5, scaleW:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 347
    .local v7, scaleH:F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 350
    .local v4, scale:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 353
    .local v12, alpha:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 355
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 356
    .local v15, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 357
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 358
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 359
    move-object v11, v15

    .line 377
    .end local v4           #scale:Landroid/view/animation/Animation;
    .end local v5           #scaleW:F
    .end local v7           #scaleH:F
    .end local v12           #alpha:Landroid/view/animation/Animation;
    .end local v15           #set:Landroid/view/animation/AnimationSet;
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 383
    const-wide/16 v13, 0xfa

    .line 386
    .local v13, duration:J
    :goto_1
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 387
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 389
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 390
    return-object v11

    .line 360
    .end local v13           #duration:J
    :cond_0
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 366
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11           #a:Landroid/view/animation/Animation;
    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 367
    .restart local v11       #a:Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 370
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11           #a:Landroid/view/animation/Animation;
    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11       #a:Landroid/view/animation/Animation;
    goto :goto_0

    .line 380
    :sswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    .line 381
    .restart local v13       #duration:J
    goto :goto_1

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 6
    .parameter "lp"

    .prologue
    const/4 v3, 0x0

    .line 255
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    const-string v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resId=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    if-eqz p1, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 263
    .local v0, packageName:Ljava/lang/String;
    :goto_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 264
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 265
    const-string v0, "android"

    .line 267
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_2

    const-string v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 272
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_3
    return-object v3

    :cond_4
    move-object v2, v3

    .line 255
    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_1

    .line 262
    :cond_6
    const-string v0, "android"

    goto :goto_2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    if-eqz p1, :cond_3

    .line 279
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 280
    const-string p1, "android"

    .line 282
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 309
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 311
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 312
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 313
    move v0, p2

    .line 316
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 317
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 319
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 718
    :pswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 720
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_0

    .line 722
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_0

    .line 724
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_0

    .line 726
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 244
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 246
    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .locals 24
    .parameter "transit"
    .parameter "enter"
    .parameter "thumb"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 397
    const/4 v5, 0x0

    .line 488
    :goto_0
    return-object v5

    .line 400
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 401
    .local v23, thumbWidthI:I
    if-lez v23, :cond_1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 402
    .local v22, thumbWidth:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 403
    .local v21, thumbHeightI:I
    if-lez v21, :cond_2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 404
    .local v20, thumbHeight:F
    :goto_2
    if-eqz p3, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_3

    .line 408
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 409
    .local v6, scaleW:F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 410
    .local v8, scaleH:F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f80

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f80

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 413
    .local v4, scale:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 415
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 416
    .local v16, alpha:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 420
    .local v19, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 421
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 422
    move-object/from16 v5, v19

    .line 475
    .end local v4           #scale:Landroid/view/animation/Animation;
    .end local v6           #scaleW:F
    .end local v8           #scaleH:F
    .end local v16           #alpha:Landroid/view/animation/Animation;
    .end local v19           #set:Landroid/view/animation/AnimationSet;
    .local v5, a:Landroid/view/animation/Animation;
    :goto_3
    sparse-switch p1, :sswitch_data_0

    .line 481
    const-wide/16 v17, 0xfa

    .line 484
    .local v17, duration:J
    :goto_4
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 486
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 401
    .end local v5           #a:Landroid/view/animation/Animation;
    .end local v17           #duration:J
    .end local v20           #thumbHeight:F
    .end local v21           #thumbHeightI:I
    .end local v22           #thumbWidth:F
    :cond_1
    const/high16 v22, 0x3f80

    goto/16 :goto_1

    .line 403
    .restart local v21       #thumbHeightI:I
    .restart local v22       #thumbWidth:F
    :cond_2
    const/high16 v20, 0x3f80

    goto/16 :goto_2

    .line 424
    .restart local v20       #thumbHeight:F
    :cond_3
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 425
    .restart local v6       #scaleW:F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 426
    .restart local v8       #scaleH:F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f80

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f80

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 429
    .restart local v5       #a:Landroid/view/animation/Animation;
    goto :goto_3

    .line 430
    .end local v5           #a:Landroid/view/animation/Animation;
    .end local v6           #scaleW:F
    .end local v8           #scaleH:F
    :cond_4
    if-eqz p2, :cond_6

    .line 432
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_5

    .line 433
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 434
    .restart local v6       #scaleW:F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 435
    .restart local v8       #scaleH:F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 438
    .restart local v5       #a:Landroid/view/animation/Animation;
    goto :goto_3

    .line 440
    .end local v5           #a:Landroid/view/animation/Animation;
    .end local v6           #scaleW:F
    .end local v8           #scaleH:F
    :cond_5
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5       #a:Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 444
    .end local v5           #a:Landroid/view/animation/Animation;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_8

    .line 445
    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_7

    .line 449
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5       #a:Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 452
    .end local v5           #a:Landroid/view/animation/Animation;
    :cond_7
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5       #a:Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 455
    .end local v5           #a:Landroid/view/animation/Animation;
    :cond_8
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 456
    .restart local v6       #scaleW:F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 457
    .restart local v8       #scaleH:F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f80

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 461
    .restart local v4       #scale:Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 463
    .restart local v16       #alpha:Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 464
    .restart local v19       #set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 465
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 466
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 467
    move-object/from16 v5, v19

    .restart local v5       #a:Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 478
    .end local v4           #scale:Landroid/view/animation/Animation;
    .end local v6           #scaleW:F
    .end local v8           #scaleH:F
    .end local v16           #alpha:Landroid/view/animation/Animation;
    .end local v19           #set:Landroid/view/animation/AnimationSet;
    :sswitch_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    .line 479
    .restart local v17       #duration:J
    goto/16 :goto_4

    .line 475
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    const-string v0, "  mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 737
    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 769
    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 772
    :cond_1
    return-void

    .line 741
    :pswitch_0
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :pswitch_1
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 750
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 752
    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 754
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 759
    :pswitch_2
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 761
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 763
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 765
    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 252
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outPoint"

    .prologue
    .line 227
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 228
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 229
    return-void
.end method

.method goodToGo()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 240
    return-void
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 198
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .parameter "transit"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 293
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 295
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 296
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 297
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 300
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 301
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 303
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .locals 10
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    .line 495
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v0, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 498
    .local v6, a:Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    :goto_1
    return-object v6

    .line 496
    .end local v6           #a:Landroid/view/animation/Animation;
    :cond_2
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_0

    .line 503
    :cond_3
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 504
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    .line 505
    .restart local v6       #a:Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_4
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    .end local v6           #a:Landroid/view/animation/Animation;
    :cond_5
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v9, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v1, :cond_a

    .line 512
    :cond_6
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v9, :cond_8

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    .line 514
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v6

    .line 515
    .restart local v6       #a:Landroid/view/animation/Animation;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    .line 516
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_9

    const-string v8, "ANIM_THUMBNAIL_SCALE_UP"

    .line 518
    .local v8, animName:Ljava/lang/String;
    :goto_3
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6           #a:Landroid/view/animation/Animation;
    .end local v8           #animName:Ljava/lang/String;
    :cond_8
    move v0, v3

    .line 512
    goto :goto_2

    .line 516
    .restart local v6       #a:Landroid/view/animation/Animation;
    :cond_9
    const-string v8, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_3

    .line 524
    .end local v6           #a:Landroid/view/animation/Animation;
    :cond_a
    const/4 v7, 0x0

    .line 525
    .local v7, animAttr:I
    sparse-switch p2, :sswitch_data_0

    .line 577
    :goto_4
    if-eqz v7, :cond_16

    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 578
    .restart local v6       #a:Landroid/view/animation/Animation;
    :goto_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_b
    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " animAttr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 527
    .end local v6           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p3, :cond_c

    move v7, v1

    .line 530
    :goto_6
    goto :goto_4

    .line 527
    :cond_c
    const/4 v7, 0x5

    goto :goto_6

    .line 532
    :sswitch_1
    if-eqz p3, :cond_d

    const/4 v7, 0x6

    .line 535
    :goto_7
    goto :goto_4

    .line 532
    :cond_d
    const/4 v7, 0x7

    goto :goto_7

    .line 537
    :sswitch_2
    if-eqz p3, :cond_e

    const/16 v7, 0x8

    .line 540
    :goto_8
    goto :goto_4

    .line 537
    :cond_e
    const/16 v7, 0x9

    goto :goto_8

    .line 542
    :sswitch_3
    if-eqz p3, :cond_f

    const/16 v7, 0xa

    .line 545
    :goto_9
    goto :goto_4

    .line 542
    :cond_f
    const/16 v7, 0xb

    goto :goto_9

    .line 547
    :sswitch_4
    if-eqz p3, :cond_10

    const/16 v7, 0xc

    .line 550
    :goto_a
    goto :goto_4

    .line 547
    :cond_10
    const/16 v7, 0xd

    goto :goto_a

    .line 552
    :sswitch_5
    if-eqz p3, :cond_11

    const/16 v7, 0xe

    .line 555
    :goto_b
    goto :goto_4

    .line 552
    :cond_11
    const/16 v7, 0xf

    goto :goto_b

    .line 557
    :sswitch_6
    if-eqz p3, :cond_12

    const/16 v7, 0x10

    .line 560
    :goto_c
    goto/16 :goto_4

    .line 557
    :cond_12
    const/16 v7, 0x11

    goto :goto_c

    .line 562
    :sswitch_7
    if-eqz p3, :cond_13

    const/16 v7, 0x12

    .line 565
    :goto_d
    goto/16 :goto_4

    .line 562
    :cond_13
    const/16 v7, 0x13

    goto :goto_d

    .line 567
    :sswitch_8
    if-eqz p3, :cond_14

    const/16 v7, 0x14

    .line 570
    :goto_e
    goto/16 :goto_4

    .line 567
    :cond_14
    const/16 v7, 0x15

    goto :goto_e

    .line 572
    :sswitch_9
    if-eqz p3, :cond_15

    const/16 v7, 0x16

    :goto_f
    goto/16 :goto_4

    :cond_15
    const/16 v7, 0x17

    goto :goto_f

    .line 577
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 525
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .parameter "startedCallback"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 599
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 601
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 602
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 603
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 604
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "startWidth"
    .parameter "startHeight"

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 614
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 615
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 616
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 617
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 618
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 619
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 621
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 623
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .parameter "srcThumb"
    .parameter "startX"
    .parameter "startY"
    .parameter "startedCallback"
    .parameter "scaleUp"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 631
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 632
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 633
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 634
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 635
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 636
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 640
    :goto_1
    return-void

    .line 628
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 593
    :cond_0
    return-void
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 235
    :cond_0
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .parameter "transit"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 195
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .parameter "newUserId"

    .prologue
    .line 775
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 776
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 212
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 204
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
