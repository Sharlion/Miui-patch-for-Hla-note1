.class public Lcom/android/internal/policy/impl/MtkPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MtkPhoneWindowManager.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_LAYOUT:Z = false

.field private static final MSG_DISABLE_FLOATING_MONITOR:I = 0x3e9

.field private static final MSG_ENABLE_FLOATING_MONITOR:I = 0x3e8

.field private static final MSG_MTK_POLICY:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mDisplayHeight:I

.field mDisplayRotation:I

.field mDisplayWidth:I

.field mHandler:Landroid/os/Handler;

.field mIsDefaultDisplay:Z

.field mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->DEBUG:Z

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "WindowManager"

    const-string v1, "floating windod skips applyPostLayoutPolicyLw "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public beginLayoutLw(ZIII)V
    .locals 0
    .parameter "isDefaultDisplay"
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    .line 87
    iput p2, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayWidth:I

    .line 88
    iput p3, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayHeight:I

    .line 89
    iput p4, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayRotation:I

    .line 90
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishLayoutLw()V

    .line 208
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 222
    .local v0, resVal:I
    if-eqz v0, :cond_0

    .line 226
    .end local v0           #resVal:I
    :goto_0
    return v0

    .restart local v0       #resVal:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    .line 80
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 22
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    if-eqz v3, :cond_0

    .line 103
    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    .local v11, fl:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 105
    .local v13, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v14

    .line 106
    .local v14, sysUiFl:I
    and-int/lit16 v10, v13, 0xf0

    .line 108
    .local v10, adjust:I
    sget-object v4, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 109
    .local v4, pf:Landroid/graphics/Rect;
    sget-object v5, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 110
    .local v5, df:Landroid/graphics/Rect;
    sget-object v6, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 111
    .local v6, of:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 112
    .local v7, cf:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 113
    .local v8, vf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 114
    .local v9, dcf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayRotation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v3, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFloatingRect(III)Landroid/graphics/Rect;

    move-result-object v12

    .line 117
    .local v12, floatRegion:Landroid/graphics/Rect;
    if-eqz v12, :cond_0

    .line 121
    const-string v3, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "layoutWindowLw floating win = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v16, 0x0

    .local v16, yOffset:I
    const/4 v15, 0x0

    .line 124
    .local v15, xOffset:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocusStackBox()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v3, v3, v17

    add-int v16, v16, v3

    .line 128
    :cond_3
    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableTop:I

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v17, v17, v16

    sub-int v3, v3, v17

    add-int v16, v16, v3

    .line 131
    :cond_4
    if-eqz v16, :cond_5

    .line 132
    iget v3, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableLeft:I

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v3, v3, v17

    add-int/2addr v15, v3

    .line 139
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/view/WindowManagerPolicy$WindowState;->adjustFloatingRect(II)V

    .line 141
    iget v3, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v15

    iput v3, v8, Landroid/graphics/Rect;->left:I

    iput v3, v7, Landroid/graphics/Rect;->left:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 143
    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v8, Landroid/graphics/Rect;->top:I

    iput v3, v7, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iput v3, v5, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 144
    iget v3, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v15

    iput v3, v8, Landroid/graphics/Rect;->right:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    iput v3, v6, Landroid/graphics/Rect;->right:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 146
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, v16

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 149
    if-eqz p3, :cond_6

    .line 150
    and-int/lit16 v3, v11, 0x100

    if-nez v3, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 156
    const/16 v3, 0x10

    if-eq v10, v3, :cond_a

    .line 157
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDockRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 158
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDockBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 164
    :goto_3
    const/16 v3, 0x30

    if-eq v10, v3, :cond_b

    .line 165
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurRight:I

    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurBottom:I

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 172
    :cond_7
    :goto_4
    const-string v3, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Compute float frame "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": sim=#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " attach="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " type="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " flags=0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pf="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " df="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " of="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " cf="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vf="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " dcf="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " floatRegion="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p1

    .line 181
    invoke-interface/range {v3 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v3, v0, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableRight:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v3, v3, v17

    add-int/2addr v15, v3

    goto/16 :goto_1

    :cond_9
    move-object v3, v5

    .line 150
    goto/16 :goto_2

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 161
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 168
    :cond_b
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method
