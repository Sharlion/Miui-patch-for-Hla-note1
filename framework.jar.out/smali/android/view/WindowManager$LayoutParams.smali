.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EX_INIT_VALUE:I = 0x0

.field public static final FLAG_EX_PQ_MASK:I = 0x1000000

.field public static final FLAG_EX_PQ_ON:I = 0x1000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NEEDS_MENU_KEY:I = 0x40000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAGS_EX_CHANGED:I = 0x100000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_SET_NEEDS_MENU_KEY:I = 0x8

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_HIDDEN_NAV_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_KEYGUARD_SCRIM:I = 0x7ed

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_PHONE:I = 0x7d2

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_RECENTS_OVERLAY:I = 0x7ec

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6

.field public static final TYPE_TOAST:I = 0x7d5

.field public static final TYPE_TOP_MOST:I = 0x7ef

.field public static final TYPE_UNIVERSE_BACKGROUND:I = 0x7e9

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public alpha:F

.field public buttonBrightness:F

.field public dimAmount:F

.field public extraFlags:I

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "FLAG_TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "FLAG_LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FLAG_SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FLAG_SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FLAG_LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FLAG_ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "FLAG_WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "FLAG_SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "FLAG_SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "FLAG_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FLAG_LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FLAG_TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "FLAG_TRANSLUCENT_NAVIGATION"
            .end subannotation
        }
    .end annotation
.end field

.field public flagsEx:I

.field public format:I

.field public gravity:I

.field public hasSystemUiListeners:Z

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public privateFlags:I

.field public rotationAnimation:I

.field public screenBrightness:F

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "TYPE_APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d4
                to = "TYPE_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "TYPE_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "TYPE_DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "TYPE_STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "TYPE_POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "TYPE_NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "TYPE_VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "TYPE_BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "TYPE_HIDDEN_NAV_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "TYPE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "TYPE_NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "TYPE_DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "TYPE_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "TYPE_PRIVATE_PRESENTATION"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1576
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1487
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1488
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1489
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1490
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "_type"

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1493
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1494
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1495
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1496
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .parameter "_type"
    .parameter "_flags"

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1499
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1500
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1501
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1502
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1503
    return-void
.end method

.method public constructor <init>(III)V
    .locals 5
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 1506
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1507
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1508
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1509
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1510
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    const/4 v2, 0x0

    .line 1513
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1514
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1515
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1516
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1517
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "xpos"
    .parameter "ypos"
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    const/4 v2, 0x0

    .line 1521
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1297
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1304
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1333
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1341
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1373
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1379
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1394
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1483
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1655
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1950
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1522
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1523
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1524
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1525
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1526
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1527
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v0, -0x4080

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1619
    return-void

    :cond_0
    move v0, v1

    .line 1613
    goto :goto_0
.end method

.method public static mayUseInputMethod(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 1122
    const v0, 0x20008

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 1127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1125
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1122
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20008 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method backup()V
    .locals 3

    .prologue
    .line 1925
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1926
    .local v0, backup:[I
    if-nez v0, :cond_0

    .line 1928
    const/4 v1, 0x4

    new-array v0, v1, [I

    .end local v0           #backup:[I
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1930
    .restart local v0       #backup:[I
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 1931
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 1932
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 1933
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 1934
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 6
    .parameter "o"

    .prologue
    .line 1658
    const/4 v0, 0x0

    .line 1660
    .local v0, changes:I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    .line 1661
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1662
    or-int/lit8 v0, v0, 0x1

    .line 1664
    :cond_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_1

    .line 1665
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1666
    or-int/lit8 v0, v0, 0x1

    .line 1668
    :cond_1
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, v3, :cond_2

    .line 1669
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1670
    or-int/lit8 v0, v0, 0x1

    .line 1672
    :cond_2
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_3

    .line 1673
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1674
    or-int/lit8 v0, v0, 0x1

    .line 1676
    :cond_3
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 1677
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1678
    or-int/lit8 v0, v0, 0x1

    .line 1680
    :cond_4
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 1681
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1682
    or-int/lit8 v0, v0, 0x1

    .line 1684
    :cond_5
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 1685
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 1686
    or-int/lit8 v0, v0, 0x1

    .line 1688
    :cond_6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 1689
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 1690
    or-int/lit8 v0, v0, 0x1

    .line 1692
    :cond_7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_8

    .line 1693
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1694
    or-int/lit8 v0, v0, 0x2

    .line 1696
    :cond_8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_a

    .line 1697
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int v1, v2, v3

    .line 1698
    .local v1, diff:I
    const/high16 v2, 0xc00

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 1699
    const/high16 v2, 0x8

    or-int/2addr v0, v2

    .line 1701
    :cond_9
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1702
    or-int/lit8 v0, v0, 0x4

    .line 1704
    .end local v1           #diff:I
    :cond_a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eq v2, v3, :cond_miui

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v0, v0, 0x4

    :cond_miui
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v2, v3, :cond_b

    .line 1705
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1706
    const/high16 v2, 0x2

    or-int/2addr v0, v2

    .line 1708
    :cond_b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v2, v3, :cond_c

    .line 1709
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1710
    or-int/lit16 v0, v0, 0x200

    .line 1712
    :cond_c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v3, :cond_d

    .line 1713
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1714
    or-int/lit8 v0, v0, 0x1

    .line 1716
    :cond_d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v2, v3, :cond_e

    .line 1717
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1718
    or-int/lit8 v0, v0, 0x8

    .line 1720
    :cond_e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_f

    .line 1721
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1722
    or-int/lit8 v0, v0, 0x10

    .line 1724
    :cond_f
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_10

    .line 1727
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1729
    :cond_10
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 1732
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1734
    :cond_11
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1735
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1736
    or-int/lit8 v0, v0, 0x40

    .line 1738
    :cond_12
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_13

    .line 1739
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1740
    or-int/lit16 v0, v0, 0x80

    .line 1742
    :cond_13
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14

    .line 1743
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1744
    or-int/lit8 v0, v0, 0x20

    .line 1746
    :cond_14
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    .line 1747
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1748
    or-int/lit16 v0, v0, 0x800

    .line 1750
    :cond_15
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_16

    .line 1751
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1752
    or-int/lit16 v0, v0, 0x2000

    .line 1754
    :cond_16
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v2, v3, :cond_17

    .line 1755
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1756
    or-int/lit16 v0, v0, 0x1000

    .line 1759
    :cond_17
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v3, :cond_18

    .line 1760
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1761
    or-int/lit16 v0, v0, 0x400

    .line 1764
    :cond_18
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v2, v3, :cond_19

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v2, v3, :cond_1a

    .line 1766
    :cond_19
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1767
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1768
    or-int/lit16 v0, v0, 0x4000

    .line 1771
    :cond_1a
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v2, v3, :cond_1b

    .line 1772
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1773
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 1776
    :cond_1b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v2, v3, :cond_1c

    .line 1777
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1778
    const/high16 v2, 0x1

    or-int/2addr v0, v2

    .line 1781
    :cond_1c
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 1782
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1783
    const/high16 v2, 0x4

    or-int/2addr v0, v2

    .line 1788
    :cond_1d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    if-eq v2, v3, :cond_1e

    .line 1789
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    .line 1790
    const/high16 v2, 0x10

    or-int/2addr v0, v2

    .line 1794
    :cond_1e
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "output"

    .prologue
    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1800
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1802
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const-string v0, "Debug"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method restore()V
    .locals 2

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1942
    .local v0, backup:[I
    if-eqz v0, :cond_0

    .line 1943
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1944
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1945
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1946
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1948
    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2
    .parameter "scale"

    .prologue
    const/high16 v1, 0x3f00

    .line 1910
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1911
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1912
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 1913
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1915
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 1916
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1918
    :cond_1
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1530
    if-nez p1, :cond_0

    .line 1531
    const-string p1, ""

    .line 1533
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1534
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    const/high16 v4, -0x4080

    const/4 v3, -0x1

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1811
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "WM.LayoutParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1814
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1815
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1816
    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_13

    const-string v1, "fill"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1818
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1819
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_15

    const-string v1, "fill"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1822
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1825
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1826
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1829
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_2

    .line 1830
    const-string v1, " gr=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz v1, :cond_3

    .line 1834
    const-string v1, " sim=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    :cond_3
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1839
    const-string v1, " fl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extfl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_5

    .line 1842
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    .line 1843
    const-string v1, " compatible=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    :cond_4
    const-string v1, " pfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v3, :cond_6

    .line 1848
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1851
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_7

    .line 1852
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v3, :cond_8

    .line 1856
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1859
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 1860
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1863
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_a

    .line 1864
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1867
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_b

    .line 1868
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1871
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_c

    .line 1872
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1875
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_d

    .line 1876
    const-string v1, " sysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_e

    .line 1880
    const-string v1, " vsysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    :cond_e
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_f

    .line 1884
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1887
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_10

    .line 1888
    const-string v1, " if=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :cond_10
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    .line 1891
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1895
    :cond_11
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    if-eqz v1, :cond_12

    .line 1896
    const-string v1, " flagsEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    :cond_12
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1902
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1817
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v5, :cond_14

    const-string/jumbo v1, "wrap"

    goto/16 :goto_0

    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1819
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v5, :cond_16

    const-string/jumbo v1, "wrap"

    goto/16 :goto_1

    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "parcelableFlags"

    .prologue
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1573
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flagsEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    return-void

    .line 1569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
