.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static DEBUG_LAYOUT:Z = false

.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout.log"

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "Layout"

.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field protected mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 77
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 80
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 83
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 86
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 92
    const/16 v0, 0x77

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 96
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 99
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 105
    invoke-direct {p0}, Landroid/widget/FrameLayout;->initFrameLayout()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-direct {p0}, Landroid/widget/FrameLayout;->initFrameLayout()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 77
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 80
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 83
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 86
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 92
    const/16 v2, 0x77

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 96
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 99
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 115
    invoke-direct {p0}, Landroid/widget/FrameLayout;->initFrameLayout()V

    .line 117
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 123
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 132
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    return-void
.end method

.method private getCurrentLevel()I
    .locals 4

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, level:I
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 742
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 743
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .line 744
    check-cast v2, Landroid/view/View;

    .line 745
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 746
    goto :goto_0

    .line 747
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return v0
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private initFrameLayout()V
    .locals 2

    .prologue
    .line 736
    const-string v0, "debug.layout.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    .line 737
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 619
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 519
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 521
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 522
    iget-object v6, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 524
    .local v6, foreground:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v0, :cond_0

    .line 525
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 526
    iget-object v3, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 527
    .local v3, selfBounds:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 529
    .local v4, overlayBounds:Landroid/graphics/Rect;
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int v8, v0, v1

    .line 530
    .local v8, w:I
    iget v0, p0, Landroid/widget/FrameLayout;->mBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mTop:I

    sub-int v7, v0, v1

    .line 532
    .local v7, h:I
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {v3, v2, v2, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 538
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v5

    .line 539
    .local v5, layoutDirection:I
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 542
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 545
    .end local v3           #selfBounds:Landroid/graphics/Rect;
    .end local v4           #overlayBounds:Landroid/graphics/Rect;
    .end local v5           #layoutDirection:I
    .end local v7           #h:I
    .end local v8           #w:I
    :cond_0
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    .end local v6           #foreground:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 535
    .restart local v3       #selfBounds:Landroid/graphics/Rect;
    .restart local v4       #overlayBounds:Landroid/graphics/Rect;
    .restart local v6       #foreground:Landroid/graphics/drawable/Drawable;
    .restart local v7       #h:I
    .restart local v8       #w:I
    :cond_2
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v2, v8, v2

    iget v9, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v9, v7, v9

    invoke-virtual {v3, v0, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 213
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 216
    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2
    .parameter "region"

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 555
    .local v0, opaque:Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 558
    :cond_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 225
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 624
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 606
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 204
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 205
    :cond_0
    return-void
.end method

.method layoutChildren(IIIIZ)V
    .locals 20
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "forceLeftGravity"

    .prologue
    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 442
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v13

    .line 443
    .local v13, parentLeft:I
    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    .line 445
    .local v14, parentRight:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    .line 446
    .local v15, parentTop:I
    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    .line 448
    .local v12, parentBottom:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 450
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 451
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 452
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 456
    .local v17, width:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 461
    .local v8, height:I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 462
    .local v7, gravity:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 463
    const v7, 0x800033

    .line 466
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v10

    .line 467
    .local v10, layoutDirection:I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 468
    .local v2, absoluteGravity:I
    and-int/lit8 v16, v7, 0x70

    .line 470
    .local v16, verticalGravity:I
    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_0

    .line 482
    :cond_1
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 485
    .local v4, childLeft:I
    :goto_1
    sparse-switch v16, :sswitch_data_1

    .line 497
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 500
    .local v5, childTop:I
    :goto_2
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 450
    .end local v2           #absoluteGravity:I
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v7           #gravity:I
    .end local v8           #height:I
    .end local v10           #layoutDirection:I
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #verticalGravity:I
    .end local v17           #width:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 472
    .restart local v2       #absoluteGravity:I
    .restart local v7       #gravity:I
    .restart local v8       #height:I
    .restart local v10       #layoutDirection:I
    .restart local v11       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16       #verticalGravity:I
    .restart local v17       #width:I
    :sswitch_0
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 474
    .restart local v4       #childLeft:I
    goto :goto_1

    .line 476
    .end local v4           #childLeft:I
    :sswitch_1
    if-nez p5, :cond_1

    .line 477
    sub-int v18, v14, v17

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 478
    .restart local v4       #childLeft:I
    goto :goto_1

    .line 487
    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 488
    .restart local v5       #childTop:I
    goto :goto_2

    .line 490
    .end local v5           #childTop:I
    :sswitch_3
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 492
    .restart local v5       #childTop:I
    goto :goto_2

    .line 494
    .end local v5           #childTop:I
    :sswitch_4
    sub-int v18, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 495
    .restart local v5       #childTop:I
    goto :goto_2

    .line 503
    .end local v2           #absoluteGravity:I
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v7           #gravity:I
    .end local v8           #height:I
    .end local v10           #layoutDirection:I
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #verticalGravity:I
    .end local v17           #width:I
    :cond_3
    return-void

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 485
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 631
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 632
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 637
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 638
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 435
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 436
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 312
    .local v10, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x4000

    if-eq v1, v3, :cond_7

    :cond_0
    const/16 v16, 0x1

    .line 315
    .local v16, measureMatchParentChildren:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 317
    const/4 v14, 0x0

    .line 318
    .local v14, maxHeight:I
    const/4 v15, 0x0

    .line 319
    .local v15, maxWidth:I
    const/4 v8, 0x0

    .line 321
    .local v8, childState:I
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] + Pass.1, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v10, :cond_8

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 327
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6

    .line 328
    :cond_2
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3

    .line 329
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] + Child in Pass1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", child="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .local v13, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 339
    if-eqz v16, :cond_5

    .line 340
    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 342
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_5
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_6

    .line 347
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] - Child in Pass1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", child="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "maxWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 312
    .end local v2           #child:Landroid/view/View;
    .end local v8           #childState:I
    .end local v12           #i:I
    .end local v14           #maxHeight:I
    .end local v15           #maxWidth:I
    .end local v16           #measureMatchParentChildren:Z
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 354
    .restart local v8       #childState:I
    .restart local v12       #i:I
    .restart local v14       #maxHeight:I
    .restart local v15       #maxWidth:I
    .restart local v16       #measureMatchParentChildren:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v15, v1

    .line 355
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 363
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 364
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 365
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 368
    :cond_9
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_a

    .line 369
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] - Pass.1, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_a
    move/from16 v0, p1

    invoke-static {v15, v0, v8}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v8, 0x10

    move/from16 v0, p2

    invoke-static {v14, v0, v3}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 377
    const/4 v1, 0x1

    if-le v10, v1, :cond_11

    .line 378
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_b

    .line 379
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] + Pass.2 (Re-measure for MATCH_PARENT), this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_b
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_10

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 385
    .restart local v2       #child:Landroid/view/View;
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_c

    .line 386
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] + Child in Pass2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", child="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 393
    .local v13, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 405
    .local v9, childWidthMeasureSpec:I
    :goto_3
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 417
    .local v7, childHeightMeasureSpec:I
    :goto_4
    invoke-virtual {v2, v9, v7}, Landroid/view/View;->measure(II)V

    .line 419
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_d

    .line 420
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] - Child in Pass2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", child="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 399
    .end local v7           #childHeightMeasureSpec:I
    .end local v9           #childWidthMeasureSpec:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9       #childWidthMeasureSpec:I
    goto :goto_3

    .line 411
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7       #childHeightMeasureSpec:I
    goto :goto_4

    .line 424
    .end local v2           #child:Landroid/view/View;
    .end local v7           #childHeightMeasureSpec:I
    .end local v9           #childWidthMeasureSpec:I
    .end local v13           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10
    sget-boolean v1, Landroid/widget/FrameLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_11

    .line 425
    const-string v1, "Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FrameLayout] - Pass.2, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 510
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 512
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 240
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 242
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_0
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 246
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 247
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 248
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 249
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 251
    if-eqz p1, :cond_4

    .line 252
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 253
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 257
    :cond_1
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 261
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 262
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 263
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 269
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 270
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 272
    :cond_3
    return-void

    .line 267
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 4
    .parameter "foregroundGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3

    .line 163
    const v1, 0x800007

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 164
    const v1, 0x800003

    or-int/2addr p1, v1

    .line 167
    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    .line 168
    or-int/lit8 p1, p1, 0x30

    .line 171
    :cond_1
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 174
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 179
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 189
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 191
    :cond_3
    return-void

    .line 183
    :cond_4
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 184
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 185
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 186
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .parameter "measureAll"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 573
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
