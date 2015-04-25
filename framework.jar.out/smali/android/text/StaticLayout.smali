.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 150
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1048
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1074
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 153
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 154
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 156
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 69
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 91
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 81
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 105
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1048
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1074
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 120
    if-eqz p11, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 123
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 124
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 125
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 126
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 128
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 134
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 135
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 137
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 139
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 141
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 145
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 147
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 131
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 49
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 60
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 62
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 775
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 777
    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 22
    .parameter "text"
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 789
    cmpg-float v19, p9, p6

    if-gtz v19, :cond_0

    if-nez p11, :cond_0

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 911
    :goto_0
    return-void

    .line 796
    :cond_0
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    sget-object v19, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 799
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 800
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 801
    .local v4, ellipsisCount:I
    sub-int v12, p3, p2

    .line 804
    .local v12, len:I
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 806
    const/16 v17, 0x0

    .line 809
    .local v17, sum:F
    move v7, v12

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_1

    .line 811
    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 812
    .local v8, idx:I
    if-gez v8, :cond_4

    .line 825
    .end local v8           #idx:I
    :cond_1
    const/4 v5, 0x0

    .line 826
    move v4, v7

    .line 909
    .end local v7           #i:I
    .end local v17           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    aput v5, v19, v20

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    aput v4, v19, v20

    goto :goto_0

    .line 796
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v12           #len:I
    :cond_3
    sget-object v19, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 816
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v8       #idx:I
    .restart local v12       #len:I
    .restart local v17       #sum:F
    :cond_4
    aget v18, p4, v8

    .line 818
    .local v18, w:F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_1

    .line 822
    add-float v17, v17, v18

    .line 809
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 828
    .end local v7           #i:I
    .end local v8           #idx:I
    .end local v17           #sum:F
    .end local v18           #w:F
    :cond_5
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 829
    const-string v19, "StaticLayout"

    const-string v20, "Start Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 832
    :cond_6
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 834
    :cond_7
    const/16 v17, 0x0

    .line 837
    .restart local v17       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v12, :cond_8

    .line 839
    add-int v19, v7, p2

    sub-int v8, v19, p5

    .line 840
    .restart local v8       #idx:I
    if-gez v8, :cond_9

    .line 852
    .end local v8           #idx:I
    :cond_8
    move v5, v7

    .line 853
    sub-int v4, v12, v7

    .line 854
    if-eqz p11, :cond_2

    if-nez v4, :cond_2

    if-lez v12, :cond_2

    .line 856
    add-int/lit8 v19, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v11, 0x2

    .line 857
    .local v11, legnthOfChar:I
    :goto_5
    sub-int v5, v12, v11

    .line 858
    move v4, v11

    goto/16 :goto_3

    .line 843
    .end local v11           #legnthOfChar:I
    .restart local v8       #idx:I
    :cond_9
    aget v18, p4, v8

    .line 845
    .restart local v18       #w:F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_8

    .line 849
    add-float v17, v17, v18

    .line 837
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 856
    .end local v8           #idx:I
    .end local v18           #w:F
    :cond_a
    const/4 v11, 0x1

    goto :goto_5

    .line 862
    .end local v7           #i:I
    .end local v17           #sum:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 863
    const/4 v13, 0x0

    .local v13, lsum:F
    const/16 v16, 0x0

    .line 864
    .local v16, rsum:F
    const/4 v10, 0x0

    .local v10, left:I
    move v15, v12

    .line 866
    .local v15, right:I
    sub-float v19, p6, v6

    const/high16 v20, 0x4000

    div-float v14, v19, v20

    .line 867
    .local v14, ravail:F
    move v15, v12

    :goto_6
    if-ltz v15, :cond_c

    .line 869
    add-int/lit8 v19, v15, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 870
    .restart local v8       #idx:I
    if-gez v8, :cond_e

    .line 883
    .end local v8           #idx:I
    :cond_c
    sub-float v19, p6, v6

    sub-float v9, v19, v16

    .line 884
    .local v9, lavail:F
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v15, :cond_d

    .line 886
    add-int v19, v10, p2

    sub-int v8, v19, p5

    .line 887
    .restart local v8       #idx:I
    if-gez v8, :cond_f

    .line 900
    .end local v8           #idx:I
    :cond_d
    move v5, v10

    .line 901
    sub-int v4, v15, v10

    .line 902
    goto/16 :goto_3

    .line 874
    .end local v9           #lavail:F
    .restart local v8       #idx:I
    :cond_e
    aget v18, p4, v8

    .line 876
    .restart local v18       #w:F
    add-float v19, v18, v16

    cmpl-float v19, v19, v14

    if-gtz v19, :cond_c

    .line 880
    add-float v16, v16, v18

    .line 867
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 891
    .end local v18           #w:F
    .restart local v9       #lavail:F
    :cond_f
    aget v18, p4, v8

    .line 893
    .restart local v18       #w:F
    add-float v19, v18, v13

    cmpl-float v19, v19, v9

    if-gtz v19, :cond_d

    .line 897
    add-float v13, v13, v18

    .line 884
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 903
    .end local v8           #idx:I
    .end local v9           #lavail:F
    .end local v10           #left:I
    .end local v13           #lsum:F
    .end local v14           #ravail:F
    .end local v15           #right:I
    .end local v16           #rsum:F
    .end local v18           #w:F
    :cond_10
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 904
    const-string v19, "StaticLayout"

    const-string v20, "Middle Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method static callIsIdeographic(CZ)Z
    .locals 1
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v0

    return v0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 558
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 564
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 565
    if-nez p1, :cond_0

    .line 566
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 583
    goto :goto_0

    .line 588
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 589
    if-nez p1, :cond_0

    .line 590
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 608
    goto :goto_0

    .line 613
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 616
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 619
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 622
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 625
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 628
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 631
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    invoke-static {p0, p1}, Landroid/text/Injector$StaticLayoutHook;->isChineseIdeographic(CZ)Z

    move-result v0

    .line 635
    goto :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 590
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 650
    .local v10, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v10, v2

    .line 651
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 652
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 654
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 655
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 656
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 657
    .local v20, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 659
    move-object/from16 v24, v20

    .line 661
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v21, v0

    .line 662
    .local v21, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 667
    .end local v20           #grow:[I
    .end local v21           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 668
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 669
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 670
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 671
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 673
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 674
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 675
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 673
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 679
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 683
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 684
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 685
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 686
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 689
    .end local v22           #i:I
    :cond_3
    if-nez v10, :cond_5

    .line 690
    if-eqz p21, :cond_4

    .line 691
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 694
    :cond_4
    if-eqz p20, :cond_5

    .line 695
    move/from16 p4, p6

    .line 698
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 699
    if-eqz p21, :cond_6

    .line 700
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 703
    :cond_6
    if-eqz p20, :cond_7

    .line 704
    move/from16 p5, p7

    .line 710
    :cond_7
    if-eqz p15, :cond_10

    .line 711
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 712
    .local v16, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_f

    .line 713
    const-wide/high16 v2, 0x3fe0

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 721
    .end local v16           #ex:D
    .local v18, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 722
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 723
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v18

    aput v3, v24, v2

    .line 725
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 726
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 727
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 729
    if-eqz p14, :cond_8

    .line 730
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 732
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 733
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 737
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v10

    .line 744
    :goto_3
    if-eqz p25, :cond_e

    .line 747
    if-nez v10, :cond_12

    const/16 v19, 0x1

    .line 748
    .local v19, firstLine:Z
    :goto_4
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v14, 0x1

    .line 749
    .local v14, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v13, 0x1

    .line 751
    .local v13, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v19, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v19, :cond_15

    if-nez v14, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_15

    const/4 v15, 0x1

    .line 757
    .local v15, doEllipsis:Z
    :goto_7
    if-eqz v15, :cond_e

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    .line 759
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 765
    .end local v13           #forceEllipsis:Z
    .end local v14           #currentLineIsTheLastVisibleOne:Z
    .end local v15           #doEllipsis:Z
    .end local v19           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 766
    return p8

    .line 715
    .end local v18           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v16       #ex:D
    :cond_f
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18       #extra:I
    goto/16 :goto_2

    .line 718
    .end local v16           #ex:D
    .end local v18           #extra:I
    :cond_10
    const/16 v18, 0x0

    .restart local v18       #extra:I
    goto/16 :goto_2

    .line 740
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto/16 :goto_3

    .line 747
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 748
    .restart local v19       #firstLine:Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 749
    .restart local v14       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_6

    .line 751
    .restart local v13       #forceEllipsis:Z
    :cond_15
    const/4 v15, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1022
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 136
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    invoke-static {}, Landroid/text/Injector$StaticLayoutHook;->before_generate()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v13, 0x0

    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_6

    :cond_0
    const/16 v20, 0x1

    .line 170
    .local v20, needMultiply:Z
    :goto_0
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    .line 171
    const-wide/16 v5, 0x8

    const-string v14, "Text-generate"

    invoke-static {v5, v6, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    const-string v5, "StaticLayout"

    const-string v6, "[generate] start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v94

    .line 175
    .local v94, beforeTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 176
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 178
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v117, v0

    .line 180
    .local v117, measured:Landroid/text/MeasuredText;
    const/16 v130, 0x0

    .line 181
    .local v130, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    move-object/from16 v130, p1

    .line 182
    check-cast v130, Landroid/text/Spanned;

    .line 184
    :cond_2
    const/16 v93, 0x1

    .line 187
    .local v93, DEFAULT_DIR:I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    .line 188
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-0-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_3
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_39

    .line 191
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 192
    .local v38, paraEnd:I
    if-gez v38, :cond_7

    .line 193
    move/from16 v38, p3

    .line 197
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v102, v5, 0x1

    .line 198
    .local v102, firstWidthLineLimit:I
    move/from16 v101, p5

    .line 199
    .local v101, firstWidth:I
    move/from16 v125, p5

    .line 201
    .local v125, restWidth:I
    const/16 v16, 0x0

    .line 203
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v130, :cond_f

    .line 204
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/LeadingMarginSpan;

    .line 206
    .local v126, sp:[Landroid/text/style/LeadingMarginSpan;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_4

    .line 207
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-1-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_4
    const/16 v110, 0x0

    .local v110, i:I
    :goto_3
    move-object/from16 v0, v126

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_8

    .line 210
    aget-object v114, v126, v110

    .line 211
    .local v114, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v126, v110

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v101, v101, v5

    .line 212
    aget-object v5, v126, v110

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v125, v125, v5

    .line 218
    move-object/from16 v0, v114

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_5

    move-object/from16 v115, v114

    .line 219
    check-cast v115, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 220
    .local v115, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v130

    move-object/from16 v1, v115

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v116

    .line 221
    .local v116, lmsFirstLine:I
    invoke-interface/range {v115 .. v115}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v102, v116, v5

    .line 209
    .end local v115           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v116           #lmsFirstLine:I
    :cond_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_3

    .line 168
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v93           #DEFAULT_DIR:I
    .end local v94           #beforeTime:J
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v110           #i:I
    .end local v114           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v117           #measured:Landroid/text/MeasuredText;
    .end local v125           #restWidth:I
    .end local v126           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v130           #spanned:Landroid/text/Spanned;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 195
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v93       #DEFAULT_DIR:I
    .restart local v94       #beforeTime:J
    .restart local v117       #measured:Landroid/text/MeasuredText;
    .restart local v130       #spanned:Landroid/text/Spanned;
    :cond_7
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 224
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v110       #i:I
    .restart local v125       #restWidth:I
    .restart local v126       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_9

    .line 225
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-1-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_9
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 230
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_f

    .line 231
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_b

    .line 233
    :cond_a
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 236
    :cond_b
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_c

    .line 237
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-2-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_c
    const/16 v110, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_e

    .line 240
    aget-object v5, v16, v110

    move-object/from16 v0, v130

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v118

    .line 242
    .local v118, o:I
    move/from16 v0, v118

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v110

    .line 239
    :goto_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_4

    .line 250
    :cond_d
    aput v13, v17, v110

    goto :goto_5

    .line 253
    .end local v118           #o:I
    :cond_e
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_f

    .line 254
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-2-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v110           #i:I
    .end local v126           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_f
    move-object/from16 v0, v117

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 260
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 261
    .local v27, chs:[C
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 262
    .local v28, widths:[F
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 263
    .local v21, chdirs:[B
    move-object/from16 v0, v117

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 264
    .local v22, dir:I
    move-object/from16 v0, v117

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 266
    .local v23, easy:Z
    move/from16 v135, v101

    .line 268
    .local v135, width:I
    const/16 v62, 0x0

    .line 270
    .local v62, w:F
    move/from16 v7, v29

    .line 274
    .local v7, here:I
    move/from16 v119, v29

    .line 275
    .local v119, ok:I
    move/from16 v124, v62

    .line 276
    .local v124, okWidth:F
    const/16 v120, 0x0

    .local v120, okAscent:I
    const/16 v122, 0x0

    .local v122, okDescent:I
    const/16 v123, 0x0

    .local v123, okTop:I
    const/16 v121, 0x0

    .line 280
    .local v121, okBottom:I
    move/from16 v103, v29

    .line 281
    .local v103, fit:I
    move/from16 v104, v62

    .line 282
    .local v104, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 284
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 285
    .local v19, hasTabOrEmoji:Z
    const/16 v109, 0x0

    .line 286
    .local v109, hasTab:Z
    const/16 v132, 0x0

    .line 287
    .local v132, tabStops:Landroid/text/Layout$TabStops;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_10

    .line 288
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-3-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_10
    move/from16 v129, v29

    .local v129, spanStart:I
    :goto_6
    move/from16 v0, v129

    move/from16 v1, v38

    if-ge v0, v1, :cond_35

    .line 292
    if-nez v130, :cond_21

    .line 293
    move/from16 v127, v38

    .line 294
    .local v127, spanEnd:I
    sub-int v128, v127, v129

    .line 295
    .local v128, spanLen:I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_11

    .line 296
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] addStyleRun-nospan-start "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v128

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_11
    move-object/from16 v0, v117

    move-object/from16 v1, p4

    move/from16 v2, v128

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 299
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_12

    .line 300
    const-string v5, "StaticLayout"

    const-string v6, "[generate] addStyleRun-nospan-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_12
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v108, v0

    .line 319
    .local v108, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    .line 320
    .local v106, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v105, v0

    .line 321
    .local v105, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    .line 322
    .local v107, fmDescent:I
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_13

    .line 323
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-4-start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_13
    move/from16 v113, v129

    .local v113, j:I
    :goto_8
    move/from16 v0, v113

    move/from16 v1, v127

    if-ge v0, v1, :cond_2f

    .line 326
    sub-int v5, v113, v29

    aget-char v97, v27, v5

    .line 328
    .local v97, c:C
    const/16 v5, 0xa

    move/from16 v0, v97

    if-ne v0, v5, :cond_23

    .line 379
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v97

    if-eq v0, v5, :cond_14

    const/16 v5, 0x9

    move/from16 v0, v97

    if-eq v0, v5, :cond_14

    const/16 v5, 0x200b

    move/from16 v0, v97

    if-ne v0, v5, :cond_2b

    :cond_14
    const/16 v112, 0x1

    .line 381
    .local v112, isSpaceOrTab:Z
    :goto_a
    move/from16 v0, v135

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_15

    if-eqz v112, :cond_2d

    .line 382
    :cond_15
    move/from16 v104, v62

    .line 383
    add-int/lit8 v103, v113, 0x1

    .line 385
    move/from16 v0, v108

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 386
    move/from16 v41, v108

    .line 387
    :cond_16
    move/from16 v0, v105

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    .line 388
    move/from16 v39, v105

    .line 389
    :cond_17
    move/from16 v0, v107

    move/from16 v1, v40

    if-le v0, v1, :cond_18

    .line 390
    move/from16 v40, v107

    .line 391
    :cond_18
    move/from16 v0, v106

    move/from16 v1, v42

    if-le v0, v1, :cond_19

    .line 392
    move/from16 v42, v106

    .line 395
    :cond_19
    move/from16 v0, v97

    move-object/from16 v1, v27

    move/from16 v2, v113

    move/from16 v3, v127

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Injector$StaticLayoutHook;->validateCJKCharAsSpace(C[CIII)C

    move-result v97

    if-nez v112, :cond_miui_0

    const/16 v5, 0x20

    move/from16 v0, v97

    if-ne v0, v5, :cond_miui_1

    :cond_miui_0
    const/16 v112, 0x1

    :goto_miui

    if-nez v112, :cond_1c

    const/16 v5, 0x2f

    move/from16 v0, v97

    if-eq v0, v5, :cond_1a

    const/16 v5, 0x2d

    move/from16 v0, v97

    if-ne v0, v5, :cond_1b

    :cond_1a
    add-int/lit8 v5, v113, 0x1

    move/from16 v0, v127

    if-ge v5, v0, :cond_1c

    add-int/lit8 v5, v113, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    add-int/lit8 v5, v113, 0x1

    move/from16 v0, v127

    if-ge v5, v0, :cond_2c

    add-int/lit8 v5, v113, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_1c
    const/16 v111, 0x1

    .line 404
    .local v111, isLineBreak:Z
    :goto_b
    if-eqz v111, :cond_20

    .line 405
    move/from16 v124, v62

    .line 406
    add-int/lit8 v119, v113, 0x1

    .line 408
    move/from16 v0, v41

    move/from16 v1, v123

    if-ge v0, v1, :cond_1d

    .line 409
    move/from16 v123, v41

    .line 410
    :cond_1d
    move/from16 v0, v39

    move/from16 v1, v120

    if-ge v0, v1, :cond_1e

    .line 411
    move/from16 v120, v39

    .line 412
    :cond_1e
    move/from16 v0, v40

    move/from16 v1, v122

    if-le v0, v1, :cond_1f

    .line 413
    move/from16 v122, v40

    .line 414
    :cond_1f
    move/from16 v0, v42

    move/from16 v1, v121

    if-le v0, v1, :cond_20

    .line 415
    move/from16 v121, v42

    .line 325
    .end local v111           #isLineBreak:Z
    :cond_20
    add-int/lit8 v113, v113, 0x1

    goto/16 :goto_8

    .line 303
    .end local v97           #c:C
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v112           #isSpaceOrTab:Z
    .end local v113           #j:I
    .end local v127           #spanEnd:I
    .end local v128           #spanLen:I
    :cond_21
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move/from16 v1, v129

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v127

    .line 305
    .restart local v127       #spanEnd:I
    sub-int v128, v127, v129

    .line 306
    .restart local v128       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move/from16 v1, v129

    move/from16 v2, v127

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    check-cast v131, [Landroid/text/style/MetricAffectingSpan;

    .line 308
    .local v131, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v131

    move-object/from16 v1, v130

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    .end local v131           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v131, [Landroid/text/style/MetricAffectingSpan;

    .line 309
    .restart local v131       #spans:[Landroid/text/style/MetricAffectingSpan;
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_22

    .line 310
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] addStyleRun-span-start "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v128

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_22
    move-object/from16 v0, v117

    move-object/from16 v1, p4

    move-object/from16 v2, v131

    move/from16 v3, v128

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 313
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_12

    .line 314
    const-string v5, "StaticLayout"

    const-string v6, "[generate] addStyleRun-span-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 330
    .end local v131           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v97       #c:C
    .restart local v105       #fmAscent:I
    .restart local v106       #fmBottom:I
    .restart local v107       #fmDescent:I
    .restart local v108       #fmTop:I
    .restart local v113       #j:I
    :cond_23
    const/16 v5, 0x9

    move/from16 v0, v97

    if-ne v0, v5, :cond_26

    .line 331
    if-nez v109, :cond_24

    .line 332
    const/16 v109, 0x1

    .line 333
    const/16 v19, 0x1

    .line 334
    if-eqz v130, :cond_24

    .line 336
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    check-cast v131, [Landroid/text/style/TabStopSpan;

    .line 338
    .local v131, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v131

    array-length v5, v0

    if-lez v5, :cond_24

    .line 339
    new-instance v132, Landroid/text/Layout$TabStops;

    .end local v132           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v132

    move-object/from16 v1, v131

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 343
    .end local v131           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v132       #tabStops:Landroid/text/Layout$TabStops;
    :cond_24
    if-eqz v132, :cond_25

    .line 344
    move-object/from16 v0, v132

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_9

    .line 346
    :cond_25
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_9

    .line 348
    :cond_26
    const v5, 0xd800

    move/from16 v0, v97

    if-lt v0, v5, :cond_2a

    const v5, 0xdfff

    move/from16 v0, v97

    if-gt v0, v5, :cond_2a

    add-int/lit8 v5, v113, 0x1

    move/from16 v0, v127

    if-ge v5, v0, :cond_2a

    .line 350
    sub-int v5, v113, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v100

    .line 352
    .local v100, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v100

    if-lt v0, v5, :cond_29

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v100

    if-gt v0, v5, :cond_29

    .line 353
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v96

    .line 355
    .local v96, bm:Landroid/graphics/Bitmap;
    if-eqz v96, :cond_28

    .line 358
    if-nez v130, :cond_27

    .line 359
    move-object/from16 v133, p4

    .line 364
    .local v133, whichPaint:Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v133 .. v133}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v134, v5, v6

    .line 366
    .local v134, wid:F
    add-float v62, v62, v134

    .line 367
    const/16 v19, 0x1

    .line 368
    add-int/lit8 v113, v113, 0x1

    .line 369
    goto/16 :goto_9

    .line 361
    .end local v133           #whichPaint:Landroid/graphics/Paint;
    .end local v134           #wid:F
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v133, v0

    .restart local v133       #whichPaint:Landroid/graphics/Paint;
    goto :goto_c

    .line 370
    .end local v133           #whichPaint:Landroid/graphics/Paint;
    :cond_28
    sub-int v5, v113, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 373
    .end local v96           #bm:Landroid/graphics/Bitmap;
    :cond_29
    sub-int v5, v113, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 376
    .end local v100           #emoji:I
    :cond_2a
    sub-int v5, v113, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 379
    :cond_2b
    const/16 v112, 0x0

    goto/16 :goto_a

    :cond_miui_1
    const/16 v112, 0x0

    goto/16 :goto_miui

    .line 395
    .restart local v112       #isSpaceOrTab:Z
    :cond_2c
    const/16 v111, 0x0

    goto/16 :goto_b

    .line 418
    :cond_2d
    add-int/lit8 v5, v113, 0x1

    move/from16 v0, v127

    if-ge v5, v0, :cond_31

    const/16 v34, 0x1

    .line 423
    .local v34, moreChars:Z
    :goto_d
    move/from16 v0, v119

    if-eq v0, v7, :cond_32

    .line 424
    move/from16 v8, v119

    .line 425
    .local v8, endPos:I
    move/from16 v9, v120

    .line 426
    .local v9, above:I
    move/from16 v10, v122

    .line 427
    .local v10, below:I
    move/from16 v11, v123

    .line 428
    .local v11, top:I
    move/from16 v12, v121

    .line 429
    .local v12, bottom:I
    move/from16 v32, v124

    .local v32, currentTextWidth:F
    :goto_e
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 446
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 453
    move v7, v8

    .line 454
    add-int/lit8 v113, v7, -0x1

    .line 455
    move/from16 v103, v7

    move/from16 v119, v7

    .line 456
    const/16 v62, 0x0

    .line 457
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 458
    const/16 v121, 0x0

    move/from16 v123, v121

    move/from16 v122, v121

    move/from16 v120, v121

    .line 460
    add-int/lit8 v102, v102, -0x1

    if-gtz v102, :cond_2e

    .line 461
    move/from16 v135, v125

    .line 464
    :cond_2e
    move/from16 v0, v129

    if-ge v7, v0, :cond_34

    .line 467
    move-object/from16 v0, v117

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 468
    move/from16 v127, v7

    .line 477
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    .end local v97           #c:C
    .end local v112           #isSpaceOrTab:Z
    :cond_2f
    :goto_f
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_30

    .line 478
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-4-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_30
    move/from16 v129, v127

    goto/16 :goto_6

    .line 418
    .restart local v97       #c:C
    .restart local v112       #isSpaceOrTab:Z
    :cond_31
    const/16 v34, 0x0

    goto :goto_d

    .line 430
    .restart local v34       #moreChars:Z
    :cond_32
    move/from16 v0, v103

    if-eq v0, v7, :cond_33

    .line 431
    move/from16 v8, v103

    .line 432
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 433
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 434
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 435
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 436
    .restart local v12       #bottom:I
    move/from16 v32, v104

    .restart local v32       #currentTextWidth:F
    goto :goto_e

    .line 438
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_33
    add-int/lit8 v8, v7, 0x1

    .line 439
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 440
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 441
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 442
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 443
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_e

    .line 472
    :cond_34
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_20

    goto :goto_f

    .line 481
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    .end local v97           #c:C
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v112           #isSpaceOrTab:Z
    .end local v113           #j:I
    .end local v127           #spanEnd:I
    .end local v128           #spanLen:I
    :cond_35
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_36

    .line 482
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-3-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_36
    move/from16 v0, v38

    if-eq v0, v7, :cond_38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_38

    .line 486
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_37

    .line 488
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 490
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 491
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 492
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 493
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 498
    :cond_37
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_3f

    const/16 v64, 0x1

    :goto_10
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 510
    :cond_38
    move/from16 v29, v38

    .line 512
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_40

    .line 515
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v103           #fit:I
    .end local v104           #fitWidth:F
    .end local v109           #hasTab:Z
    .end local v119           #ok:I
    .end local v120           #okAscent:I
    .end local v121           #okBottom:I
    .end local v122           #okDescent:I
    .end local v123           #okTop:I
    .end local v124           #okWidth:F
    .end local v125           #restWidth:I
    .end local v129           #spanStart:I
    .end local v132           #tabStops:Landroid/text/Layout$TabStops;
    .end local v135           #width:I
    :cond_39
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3a

    .line 516
    const-string v5, "StaticLayout"

    const-string v6, "[generate] for-0-end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_3a
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3b

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_3c

    .line 524
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 526
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v117

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v117

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v81, v0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 537
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v98, v5, v94

    .line 538
    .local v98, diffTime:J
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_3e

    .line 539
    const-wide/16 v5, 0x0

    cmp-long v5, v98, v5

    if-lez v5, :cond_3d

    .line 540
    const-string v5, "StaticLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[generate] diff "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v98 .. v99}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_3d
    const-string v5, "StaticLayout"

    const-string v6, "[generate] end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 545
    :cond_3e
    return-void

    .line 498
    .end local v98           #diffTime:J
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v103       #fit:I
    .restart local v104       #fitWidth:F
    .restart local v109       #hasTab:Z
    .restart local v119       #ok:I
    .restart local v120       #okAscent:I
    .restart local v121       #okBottom:I
    .restart local v122       #okDescent:I
    .restart local v123       #okTop:I
    .restart local v124       #okWidth:F
    .restart local v125       #restWidth:I
    .restart local v129       #spanStart:I
    .restart local v132       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v135       #width:I
    :cond_3f
    const/16 v64, 0x0

    goto/16 :goto_10

    .line 190
    :cond_40
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 995
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 996
    const/4 v0, 0x0

    .line 999
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1004
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1013
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 975
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 955
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 956
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 958
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 980
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 919
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 920
    .local v1, high:I
    const/4 v3, -0x1

    .line 922
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 923
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 924
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 925
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 926
    move v1, v0

    goto :goto_0

    .line 928
    :cond_0
    move v3, v0

    goto :goto_0

    .line 931
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 932
    const/4 v3, 0x0

    .line 934
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 965
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 945
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 946
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 950
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 970
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isSingleLineRtoL()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1029
    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v2, v2, v0

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1017
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1018
    return-void
.end method