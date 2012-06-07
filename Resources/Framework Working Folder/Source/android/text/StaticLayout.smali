.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1

.field private static final bArabicDisplay:Z


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLastDir:I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x19

    .line 42
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v1, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v1, :cond_e

    :cond_a
    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Landroid/text/StaticLayout;->bArabicDisplay:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1021
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1055
    iput v3, p0, Landroid/text/StaticLayout;->mLastDir:I

    .line 1057
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 154
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 155
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 156
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 158
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
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
    .line 71
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

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
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
    .line 93
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

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 25
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
    .line 83
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

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 29
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
    .line 107
    if-nez p11, :cond_87

    move-object/from16 v2, p1

    :goto_4
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1021
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1055
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/StaticLayout;->mLastDir:I

    .line 1057
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 122
    if-eqz p11, :cond_9f

    .line 123
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 125
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 126
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 127
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 128
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 130
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 136
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_3c
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 137
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 139
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 141
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 143
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

    .line 147
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 149
    return-void

    .line 107
    :cond_87
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_96

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_96
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 132
    :cond_9f
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 133
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_3c
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 51
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

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 20
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 62
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

    .line 64
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 28
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
    .line 795
    cmpg-float v14, p8, p5

    if-gtz v14, :cond_27

    if-nez p10, :cond_27

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 891
    :goto_26
    return-void

    .line 802
    :cond_27
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_79

    const-string/jumbo v14, "\u2025"

    :goto_30
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 804
    .local v3, ellipsisWidth:F
    const/4 v2, 0x0

    .line 805
    .local v2, ellipsisStart:I
    const/4 v1, 0x0

    .line 806
    .local v1, ellipsisCount:I
    sub-int v7, p2, p1

    .line 809
    .local v7, len:I
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_92

    .line 810
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_81

    .line 811
    const/4 v12, 0x0

    .line 814
    .local v12, sum:F
    move v4, v7

    .local v4, i:I
    :goto_49
    if-ltz v4, :cond_5a

    .line 815
    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 817
    .local v13, w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_7d

    .line 824
    .end local v13           #w:F
    :cond_5a
    const/4 v2, 0x0

    .line 825
    move v1, v4

    .line 889
    .end local v4           #i:I
    .end local v12           #sum:F
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 890
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_26

    .line 802
    .end local v1           #ellipsisCount:I
    .end local v2           #ellipsisStart:I
    .end local v3           #ellipsisWidth:F
    .end local v7           #len:I
    :cond_79
    const-string/jumbo v14, "\u2026"

    goto :goto_30

    .line 821
    .restart local v1       #ellipsisCount:I
    .restart local v2       #ellipsisStart:I
    .restart local v3       #ellipsisWidth:F
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v12       #sum:F
    .restart local v13       #w:F
    :cond_7d
    add-float/2addr v12, v13

    .line 814
    add-int/lit8 v4, v4, -0x1

    goto :goto_49

    .line 827
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_81
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 828
    const-string v14, "StaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 831
    :cond_92
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_a4

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_a4

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_c6

    .line 833
    :cond_a4
    const/4 v12, 0x0

    .line 836
    .restart local v12       #sum:F
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_a6
    if-ge v4, v7, :cond_b5

    .line 837
    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 839
    .restart local v13       #w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_c2

    .line 846
    .end local v13           #w:F
    :cond_b5
    move v2, v4

    .line 847
    sub-int v1, v7, v4

    .line 848
    if-eqz p10, :cond_5c

    if-nez v1, :cond_5c

    if-lez v7, :cond_5c

    .line 849
    add-int/lit8 v2, v7, -0x1

    .line 850
    const/4 v1, 0x1

    goto :goto_5c

    .line 843
    .restart local v13       #w:F
    :cond_c2
    add-float/2addr v12, v13

    .line 836
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 854
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_c6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_108

    .line 855
    const/4 v8, 0x0

    .local v8, lsum:F
    const/4 v11, 0x0

    .line 856
    .local v11, rsum:F
    const/4 v6, 0x0

    .local v6, left:I
    move v10, v7

    .line 858
    .local v10, right:I
    sub-float v14, p5, v3

    const/high16 v15, 0x4000

    div-float v9, v14, v15

    .line 859
    .local v9, ravail:F
    move v10, v7

    :goto_d8
    if-ltz v10, :cond_e8

    .line 860
    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 862
    .restart local v13       #w:F
    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_100

    .line 869
    .end local v13           #w:F
    :cond_e8
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    .line 870
    .local v5, lavail:F
    const/4 v6, 0x0

    :goto_ed
    if-ge v6, v10, :cond_fb

    .line 871
    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 873
    .restart local v13       #w:F
    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_104

    .line 880
    .end local v13           #w:F
    :cond_fb
    move v2, v6

    .line 881
    sub-int v1, v10, v6

    .line 882
    goto/16 :goto_5c

    .line 866
    .end local v5           #lavail:F
    .restart local v13       #w:F
    :cond_100
    add-float/2addr v11, v13

    .line 859
    add-int/lit8 v10, v10, -0x1

    goto :goto_d8

    .line 877
    .restart local v5       #lavail:F
    :cond_104
    add-float/2addr v8, v13

    .line 870
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    .line 883
    .end local v5           #lavail:F
    .end local v6           #left:I
    .end local v8           #lsum:F
    .end local v9           #ravail:F
    .end local v10           #right:I
    .end local v11           #rsum:F
    .end local v13           #w:F
    :cond_108
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 884
    const-string v14, "StaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 582
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_b

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_b

    .line 659
    :cond_a
    :goto_a
    return v0

    .line 585
    :cond_b
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_a

    .line 588
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_1f

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_1f

    .line 589
    if-nez p1, :cond_a

    .line 590
    sparse-switch p0, :sswitch_data_74

    goto :goto_a

    :sswitch_1d
    move v0, v1

    .line 607
    goto :goto_a

    .line 612
    :cond_1f
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_2f

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_2f

    .line 613
    if-nez p1, :cond_a

    .line 614
    sparse-switch p0, :sswitch_data_b6

    goto :goto_a

    :sswitch_2d
    move v0, v1

    .line 632
    goto :goto_a

    .line 637
    :cond_2f
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_37

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_a

    .line 640
    :cond_37
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_40

    const v2, 0x9fbb

    if-le p0, v2, :cond_a

    .line 643
    :cond_40
    const v2, 0xf900

    if-lt p0, v2, :cond_4a

    const v2, 0xfad9

    if-le p0, v2, :cond_a

    .line 646
    :cond_4a
    const v2, 0xa000

    if-lt p0, v2, :cond_54

    const v2, 0xa48f

    if-le p0, v2, :cond_a

    .line 649
    :cond_54
    const v2, 0xa490

    if-lt p0, v2, :cond_5e

    const v2, 0xa4cf

    if-le p0, v2, :cond_a

    .line 652
    :cond_5e
    const v2, 0xfe62

    if-lt p0, v2, :cond_68

    const v2, 0xfe66

    if-le p0, v2, :cond_a

    .line 655
    :cond_68
    const v2, 0xff10

    if-lt p0, v2, :cond_72

    const v2, 0xff19

    if-le p0, v2, :cond_a

    :cond_72
    move v0, v1

    .line 659
    goto :goto_a

    .line 590
    :sswitch_data_74
    .sparse-switch
        0x3041 -> :sswitch_1d
        0x3043 -> :sswitch_1d
        0x3045 -> :sswitch_1d
        0x3047 -> :sswitch_1d
        0x3049 -> :sswitch_1d
        0x3063 -> :sswitch_1d
        0x3083 -> :sswitch_1d
        0x3085 -> :sswitch_1d
        0x3087 -> :sswitch_1d
        0x308e -> :sswitch_1d
        0x3095 -> :sswitch_1d
        0x3096 -> :sswitch_1d
        0x309b -> :sswitch_1d
        0x309c -> :sswitch_1d
        0x309d -> :sswitch_1d
        0x309e -> :sswitch_1d
    .end sparse-switch

    .line 614
    :sswitch_data_b6
    .sparse-switch
        0x30a0 -> :sswitch_2d
        0x30a1 -> :sswitch_2d
        0x30a3 -> :sswitch_2d
        0x30a5 -> :sswitch_2d
        0x30a7 -> :sswitch_2d
        0x30a9 -> :sswitch_2d
        0x30c3 -> :sswitch_2d
        0x30e3 -> :sswitch_2d
        0x30e5 -> :sswitch_2d
        0x30e7 -> :sswitch_2d
        0x30ee -> :sswitch_2d
        0x30f5 -> :sswitch_2d
        0x30f6 -> :sswitch_2d
        0x30fb -> :sswitch_2d
        0x30fc -> :sswitch_2d
        0x30fd -> :sswitch_2d
        0x30fe -> :sswitch_2d
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 58
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
    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 674
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 675
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 676
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 678
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_5d

    .line 679
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 680
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 681
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 683
    move-object/from16 v24, v19

    .line 685
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 686
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 691
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_5d
    if-eqz p11, :cond_c8

    .line 692
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 693
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 694
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 695
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 697
    const/16 v21, 0x0

    .local v21, i:I
    :goto_79
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_b0

    .line 698
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_9e

    .line 699
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 697
    :goto_9b
    add-int/lit8 v21, v21, 0x1

    goto :goto_79

    .line 703
    :cond_9e
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_9b

    .line 707
    :cond_b0
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 708
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 709
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 710
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 713
    .end local v21           #i:I
    :cond_c8
    if-nez v22, :cond_d6

    .line 714
    if-eqz p21, :cond_d2

    .line 715
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 718
    :cond_d2
    if-eqz p20, :cond_d6

    .line 719
    move/from16 p4, p6

    .line 722
    :cond_d6
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_e8

    .line 723
    if-eqz p21, :cond_e4

    .line 724
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 727
    :cond_e4
    if-eqz p20, :cond_e8

    .line 728
    move/from16 p5, p7

    .line 734
    :cond_e8
    if-eqz p15, :cond_1aa

    .line 735
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 736
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_1a0

    .line 737
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 745
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_101
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 746
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 747
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 749
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 750
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 751
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 753
    if-eqz p14, :cond_134

    .line 754
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 756
    :cond_134
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 757
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 761
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_1ae

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 768
    :goto_147
    if-eqz p25, :cond_195

    .line 771
    if-nez v22, :cond_1c5

    const/16 v18, 0x1

    .line 772
    .local v18, firstLine:Z
    :goto_14d
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1c8

    const/4 v13, 0x1

    .line 773
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_156
    if-eqz p29, :cond_1ca

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1ca

    const/4 v12, 0x1

    .line 775
    .local v12, forceEllipsis:Z
    :goto_165
    if-eqz v18, :cond_16f

    if-nez p29, :cond_16f

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17b

    :cond_16f
    if-nez v18, :cond_1cc

    if-nez v13, :cond_175

    if-nez p29, :cond_1cc

    :cond_175
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_1cc

    :cond_17b
    const/4 v14, 0x1

    .line 779
    .local v14, doEllipsis:Z
    :goto_17c
    if-eqz v14, :cond_195

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 780
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 786
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_195
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 787
    return p8

    .line 739
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_1a0
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_101

    .line 742
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_1aa
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_101

    .line 764
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_1ae
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

    aput-object v2, v8, v22

    goto :goto_147

    .line 771
    :cond_1c5
    const/16 v18, 0x0

    goto :goto_14d

    .line 772
    .restart local v18       #firstLine:Z
    :cond_1c8
    const/4 v13, 0x0

    goto :goto_156

    .line 773
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_1ca
    const/4 v12, 0x0

    goto :goto_165

    .line 775
    .restart local v12       #forceEllipsis:Z
    :cond_1cc
    const/4 v14, 0x0

    goto :goto_17c
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1002
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 144
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
    .line 167
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 169
    const/16 v18, 0x0

    .line 170
    .local v18, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_9e

    :cond_12
    const/16 v25, 0x1

    .line 172
    .local v25, needMultiply:Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 173
    .local v9, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v22, 0x0

    .line 175
    .local v22, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 177
    .local v4, measured:Landroid/text/MeasuredText;
    const/16 v126, 0x0

    .line 178
    .local v126, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2a

    move-object/from16 v126, p1

    .line 179
    check-cast v126, Landroid/text/Spanned;

    .line 181
    :cond_2a
    const/16 v85, 0x1

    .line 184
    .local v85, DEFAULT_DIR:I
    move/from16 v34, p2

    .local v34, paraStart:I
    :goto_2e
    move/from16 v0, v34

    move/from16 v1, p3

    if-gt v0, v1, :cond_45d

    .line 185
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v43

    .line 186
    .local v43, paraEnd:I
    if-gez v43, :cond_a2

    .line 187
    move/from16 v43, p3

    .line 191
    :goto_44
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v102, v5, 0x1

    .line 192
    .local v102, firstWidthLineLimit:I
    move/from16 v101, p5

    .line 193
    .local v101, firstWidth:I
    move/from16 v123, p5

    .line 195
    .local v123, restWidth:I
    const/16 v21, 0x0

    .line 197
    .local v21, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v126, :cond_fa

    .line 198
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/LeadingMarginSpan;

    .line 200
    .local v124, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v110, 0x0

    .local v110, i:I
    :goto_62
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_a5

    .line 201
    aget-object v112, v124, v110

    .line 202
    .local v112, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v124, v110

    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v101, v101, v5

    .line 203
    aget-object v5, v124, v110

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v123, v123, v5

    .line 209
    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_9b

    move-object/from16 v113, v112

    .line 210
    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 211
    .local v113, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v126

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v114

    .line 212
    .local v114, lmsFirstLine:I
    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v102, v114, v5

    .line 200
    .end local v113           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v114           #lmsFirstLine:I
    :cond_9b
    add-int/lit8 v110, v110, 0x1

    goto :goto_62

    .line 170
    .end local v4           #measured:Landroid/text/MeasuredText;
    .end local v9           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v21           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v22           #chooseHtv:[I
    .end local v25           #needMultiply:Z
    .end local v34           #paraStart:I
    .end local v43           #paraEnd:I
    .end local v85           #DEFAULT_DIR:I
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v110           #i:I
    .end local v112           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v123           #restWidth:I
    .end local v124           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v126           #spanned:Landroid/text/Spanned;
    :cond_9e
    const/16 v25, 0x0

    goto/16 :goto_14

    .line 189
    .restart local v4       #measured:Landroid/text/MeasuredText;
    .restart local v9       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v22       #chooseHtv:[I
    .restart local v25       #needMultiply:Z
    .restart local v34       #paraStart:I
    .restart local v43       #paraEnd:I
    .restart local v85       #DEFAULT_DIR:I
    .restart local v126       #spanned:Landroid/text/Spanned;
    :cond_a2
    add-int/lit8 v43, v43, 0x1

    goto :goto_44

    .line 216
    .restart local v21       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v110       #i:I
    .restart local v123       #restWidth:I
    .restart local v124       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_a5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v21, [Landroid/text/style/LineHeightSpan;

    .line 218
    .restart local v21       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v21

    array-length v5, v0

    if-eqz v5, :cond_fa

    .line 219
    if-eqz v22, :cond_c2

    move-object/from16 v0, v22

    array-length v5, v0

    move-object/from16 v0, v21

    array-length v10, v0

    if-ge v5, v10, :cond_cd

    .line 221
    :cond_c2
    move-object/from16 v0, v21

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v22, v0

    .line 225
    :cond_cd
    const/16 v110, 0x0

    :goto_cf
    move-object/from16 v0, v21

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_fa

    .line 226
    aget-object v5, v21, v110

    move-object/from16 v0, v126

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    .line 228
    .local v116, o:I
    move/from16 v0, v116

    move/from16 v1, v34

    if-ge v0, v1, :cond_f7

    .line 232
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v22, v110

    .line 225
    :goto_f4
    add-int/lit8 v110, v110, 0x1

    goto :goto_cf

    .line 236
    :cond_f7
    aput v18, v22, v110

    goto :goto_f4

    .line 242
    .end local v110           #i:I
    .end local v116           #o:I
    .end local v124           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_fa
    sget-boolean v5, Landroid/text/StaticLayout;->bArabicDisplay:Z

    if-nez v5, :cond_261

    .line 243
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v43

    move-object/from16 v3, p6

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 251
    :goto_109
    iget-object v0, v4, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v32, v0

    .line 252
    .local v32, chs:[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v33, v0

    .line 253
    .local v33, widths:[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v26, v0

    .line 254
    .local v26, chdirs:[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v27, v0

    .line 255
    .local v27, dir:I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v28, v0

    .line 257
    .local v28, easy:Z
    move/from16 v130, v101

    .line 259
    .local v130, width:I
    const/16 v67, 0x0

    .line 260
    .local v67, w:F
    move/from16 v12, v34

    .line 262
    .local v12, here:I
    move/from16 v117, v34

    .line 263
    .local v117, ok:I
    move/from16 v122, v67

    .line 264
    .local v122, okWidth:F
    const/16 v118, 0x0

    .local v118, okAscent:I
    const/16 v120, 0x0

    .local v120, okDescent:I
    const/16 v121, 0x0

    .local v121, okTop:I
    const/16 v119, 0x0

    .line 266
    .local v119, okBottom:I
    move/from16 v103, v34

    .line 267
    .local v103, fit:I
    move/from16 v104, v67

    .line 268
    .local v104, fitWidth:F
    const/16 v44, 0x0

    .local v44, fitAscent:I
    const/16 v45, 0x0

    .local v45, fitDescent:I
    const/16 v46, 0x0

    .local v46, fitTop:I
    const/16 v47, 0x0

    .line 270
    .local v47, fitBottom:I
    const/16 v24, 0x0

    .line 271
    .local v24, hasTabOrEmoji:Z
    const/16 v109, 0x0

    .line 272
    .local v109, hasTab:Z
    const/16 v127, 0x0

    .line 274
    .local v127, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v7, v34

    .local v7, spanStart:I
    move/from16 v125, v7

    .line 275
    .local v125, spanEnd:I
    :goto_145
    move/from16 v0, v43

    if-ge v7, v0, :cond_3f0

    .line 277
    move/from16 v0, v125

    if-ne v7, v0, :cond_15a

    .line 278
    if-nez v126, :cond_27a

    .line 279
    move/from16 v125, v43

    .line 284
    :goto_151
    sub-int v8, v125, v7

    .line 285
    .local v8, spanLen:I
    if-nez v126, :cond_286

    .line 286
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v8, v9}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 304
    .end local v8           #spanLen:I
    :cond_15a
    :goto_15a
    move/from16 v115, v125

    .line 306
    .local v115, nextSpanStart:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v108, v0

    .line 307
    .local v108, fmTop:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    .line 308
    .local v106, fmBottom:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v105, v0

    .line 309
    .local v105, fmAscent:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    .line 311
    .local v107, fmDescent:I
    move/from16 v111, v7

    .local v111, j:I
    :goto_16e
    move/from16 v0, v111

    move/from16 v1, v125

    if-ge v0, v1, :cond_25d

    .line 312
    sub-int v5, v111, v34

    aget-char v99, v32, v5

    .line 314
    .local v99, c:C
    const/16 v5, 0xa

    move/from16 v0, v99

    if-ne v0, v5, :cond_2a3

    .line 367
    :goto_17e
    move/from16 v0, v130

    int-to-float v5, v0

    cmpg-float v5, v67, v5

    if-gtz v5, :cond_350

    .line 368
    move/from16 v104, v67

    .line 369
    add-int/lit8 v103, v111, 0x1

    .line 371
    move/from16 v0, v108

    move/from16 v1, v46

    if-ge v0, v1, :cond_191

    .line 372
    move/from16 v46, v108

    .line 373
    :cond_191
    move/from16 v0, v105

    move/from16 v1, v44

    if-ge v0, v1, :cond_199

    .line 374
    move/from16 v44, v105

    .line 375
    :cond_199
    move/from16 v0, v107

    move/from16 v1, v45

    if-le v0, v1, :cond_1a1

    .line 376
    move/from16 v45, v107

    .line 377
    :cond_1a1
    move/from16 v0, v106

    move/from16 v1, v47

    if-le v0, v1, :cond_1a9

    .line 378
    move/from16 v47, v106

    .line 396
    :cond_1a9
    const/16 v5, 0x20

    move/from16 v0, v99

    if-eq v0, v5, :cond_22f

    const/16 v5, 0x9

    move/from16 v0, v99

    if-eq v0, v5, :cond_22f

    const/16 v5, 0x2e

    move/from16 v0, v99

    if-eq v0, v5, :cond_1cd

    const/16 v5, 0x2c

    move/from16 v0, v99

    if-eq v0, v5, :cond_1cd

    const/16 v5, 0x3a

    move/from16 v0, v99

    if-eq v0, v5, :cond_1cd

    const/16 v5, 0x3b

    move/from16 v0, v99

    if-ne v0, v5, :cond_1ef

    :cond_1cd
    add-int/lit8 v5, v111, -0x1

    if-lt v5, v12, :cond_1dd

    add-int/lit8 v5, v111, -0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1ef

    :cond_1dd
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_22f

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22f

    :cond_1ef
    const/16 v5, 0x2f

    move/from16 v0, v99

    if-eq v0, v5, :cond_1fb

    const/16 v5, 0x2d

    move/from16 v0, v99

    if-ne v0, v5, :cond_20d

    :cond_1fb
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_22f

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22f

    :cond_20d
    const/16 v5, 0x2e80

    move/from16 v0, v99

    if-lt v0, v5, :cond_253

    const/4 v5, 0x1

    move/from16 v0, v99

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_253

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_253

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    const/4 v10, 0x0

    invoke-static {v5, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_253

    .line 405
    :cond_22f
    move/from16 v122, v67

    .line 406
    add-int/lit8 v117, v111, 0x1

    .line 408
    move/from16 v0, v46

    move/from16 v1, v121

    if-ge v0, v1, :cond_23b

    .line 409
    move/from16 v121, v46

    .line 410
    :cond_23b
    move/from16 v0, v44

    move/from16 v1, v118

    if-ge v0, v1, :cond_243

    .line 411
    move/from16 v118, v44

    .line 412
    :cond_243
    move/from16 v0, v45

    move/from16 v1, v120

    if-le v0, v1, :cond_24b

    .line 413
    move/from16 v120, v45

    .line 414
    :cond_24b
    move/from16 v0, v47

    move/from16 v1, v119

    if-le v0, v1, :cond_253

    .line 415
    move/from16 v119, v47

    .line 516
    :cond_253
    :goto_253
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v10, :cond_3ec

    .line 275
    .end local v99           #c:C
    :cond_25d
    move/from16 v7, v115

    goto/16 :goto_145

    .line 245
    .end local v7           #spanStart:I
    .end local v12           #here:I
    .end local v24           #hasTabOrEmoji:Z
    .end local v26           #chdirs:[B
    .end local v27           #dir:I
    .end local v28           #easy:Z
    .end local v32           #chs:[C
    .end local v33           #widths:[F
    .end local v44           #fitAscent:I
    .end local v45           #fitDescent:I
    .end local v46           #fitTop:I
    .end local v47           #fitBottom:I
    .end local v67           #w:F
    .end local v103           #fit:I
    .end local v104           #fitWidth:F
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v109           #hasTab:Z
    .end local v111           #j:I
    .end local v115           #nextSpanStart:I
    .end local v117           #ok:I
    .end local v118           #okAscent:I
    .end local v119           #okBottom:I
    .end local v120           #okDescent:I
    .end local v121           #okTop:I
    .end local v122           #okWidth:F
    .end local v125           #spanEnd:I
    .end local v127           #tabStops:Landroid/text/Layout$TabStops;
    .end local v130           #width:I
    :cond_261
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLastDir:I

    iput v5, v4, Landroid/text/MeasuredText;->mDir:I

    .line 246
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v43

    move-object/from16 v3, p6

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 247
    iget v5, v4, Landroid/text/MeasuredText;->mDir:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLastDir:I

    goto/16 :goto_109

    .line 281
    .restart local v7       #spanStart:I
    .restart local v12       #here:I
    .restart local v24       #hasTabOrEmoji:Z
    .restart local v26       #chdirs:[B
    .restart local v27       #dir:I
    .restart local v28       #easy:Z
    .restart local v32       #chs:[C
    .restart local v33       #widths:[F
    .restart local v44       #fitAscent:I
    .restart local v45       #fitDescent:I
    .restart local v46       #fitTop:I
    .restart local v47       #fitBottom:I
    .restart local v67       #w:F
    .restart local v103       #fit:I
    .restart local v104       #fitWidth:F
    .restart local v109       #hasTab:Z
    .restart local v117       #ok:I
    .restart local v118       #okAscent:I
    .restart local v119       #okBottom:I
    .restart local v120       #okDescent:I
    .restart local v121       #okTop:I
    .restart local v122       #okWidth:F
    .restart local v125       #spanEnd:I
    .restart local v127       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v130       #width:I
    :cond_27a
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move/from16 v1, v43

    invoke-interface {v0, v7, v1, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v125

    goto/16 :goto_151

    .line 288
    .restart local v8       #spanLen:I
    :cond_286
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move/from16 v1, v125

    invoke-interface {v0, v7, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    .line 290
    .local v6, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    invoke-static {v6, v0, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    .restart local v6       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v5, p4

    .line 299
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->addStyleRunEx(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_15a

    .line 316
    .end local v6           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v8           #spanLen:I
    .restart local v99       #c:C
    .restart local v105       #fmAscent:I
    .restart local v106       #fmBottom:I
    .restart local v107       #fmDescent:I
    .restart local v108       #fmTop:I
    .restart local v111       #j:I
    .restart local v115       #nextSpanStart:I
    :cond_2a3
    const/16 v5, 0x9

    move/from16 v0, v99

    if-ne v0, v5, :cond_2e1

    .line 317
    if-nez v109, :cond_2cb

    .line 318
    const/16 v109, 0x1

    .line 319
    const/16 v24, 0x1

    .line 320
    if-eqz v126, :cond_2cb

    .line 322
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 324
    .local v6, spans:[Landroid/text/style/TabStopSpan;
    array-length v5, v6

    if-lez v5, :cond_2cb

    .line 325
    new-instance v127, Landroid/text/Layout$TabStops;

    .end local v127           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v127

    invoke-direct {v0, v5, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 329
    .end local v6           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v127       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2cb
    if-eqz v127, :cond_2d7

    .line 330
    move-object/from16 v0, v127

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v67

    goto/16 :goto_17e

    .line 332
    :cond_2d7
    const/16 v5, 0x14

    move/from16 v0, v67

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v67

    goto/16 :goto_17e

    .line 334
    :cond_2e1
    const v5, 0xd800

    move/from16 v0, v99

    if-lt v0, v5, :cond_348

    const v5, 0xdfff

    move/from16 v0, v99

    if-gt v0, v5, :cond_348

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_348

    .line 336
    sub-int v5, v111, v34

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v100

    .line 338
    .local v100, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v100

    if-lt v0, v5, :cond_340

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v100

    if-gt v0, v5, :cond_340

    .line 339
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v98

    .line 341
    .local v98, bm:Landroid/graphics/Bitmap;
    if-eqz v98, :cond_338

    .line 344
    if-nez v126, :cond_331

    .line 345
    move-object/from16 v128, p4

    .line 350
    .local v128, whichPaint:Landroid/graphics/Paint;
    :goto_317
    invoke-virtual/range {v98 .. v98}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v128 .. v128}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v5, v10

    invoke-virtual/range {v98 .. v98}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v129, v5, v10

    .line 352
    .local v129, wid:F
    add-float v67, v67, v129

    .line 353
    const/16 v24, 0x1

    .line 354
    add-int/lit8 v111, v111, 0x1

    .line 355
    goto/16 :goto_17e

    .line 347
    .end local v128           #whichPaint:Landroid/graphics/Paint;
    .end local v129           #wid:F
    :cond_331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v128, v0

    .restart local v128       #whichPaint:Landroid/graphics/Paint;
    goto :goto_317

    .line 356
    .end local v128           #whichPaint:Landroid/graphics/Paint;
    :cond_338
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_17e

    .line 359
    .end local v98           #bm:Landroid/graphics/Bitmap;
    :cond_340
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_17e

    .line 362
    .end local v100           #emoji:I
    :cond_348
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_17e

    .line 418
    :cond_350
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-gt v5, v0, :cond_375

    const/16 v39, 0x1

    .line 439
    .local v39, moreChars:Z
    :goto_358
    move/from16 v0, v117

    if-eq v0, v12, :cond_3c5

    .line 441
    const/16 v5, 0x20

    move/from16 v0, v99

    if-ne v0, v5, :cond_364

    add-int/lit8 v117, v111, 0x1

    .line 443
    :cond_364
    :goto_364
    move/from16 v0, v117

    move/from16 v1, v125

    if-ge v0, v1, :cond_378

    sub-int v5, v117, v34

    aget-char v5, v32, v5

    const/16 v10, 0x20

    if-ne v5, v10, :cond_378

    .line 444
    add-int/lit8 v117, v117, 0x1

    goto :goto_364

    .line 418
    .end local v39           #moreChars:Z
    :cond_375
    const/16 v39, 0x0

    goto :goto_358

    .line 447
    .restart local v39       #moreChars:Z
    :cond_378
    move/from16 v13, v117

    .line 448
    .local v13, endPos:I
    move/from16 v14, v118

    .line 449
    .local v14, above:I
    move/from16 v15, v120

    .line 450
    .local v15, below:I
    move/from16 v16, v121

    .line 451
    .local v16, top:I
    move/from16 v17, v119

    .line 452
    .local v17, bottom:I
    move/from16 v37, v122

    .local v37, currentTextWidth:F
    :goto_384
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v19, p7

    move/from16 v20, p8

    move-object/from16 v23, v9

    move/from16 v29, p3

    move/from16 v30, p9

    move/from16 v31, p10

    move-object/from16 v35, p12

    move/from16 v36, p11

    move-object/from16 v38, p4

    .line 469
    invoke-direct/range {v10 .. v39}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    .line 475
    move v12, v13

    .line 477
    if-ge v12, v7, :cond_3e9

    .line 481
    move/from16 v115, v12

    move/from16 v111, v12

    .line 501
    move/from16 v125, v115

    .line 507
    :goto_3a7
    move/from16 v103, v12

    move/from16 v117, v12

    .line 508
    const/16 v67, 0x0

    .line 509
    const/16 v47, 0x0

    move/from16 v46, v47

    move/from16 v45, v47

    move/from16 v44, v47

    .line 510
    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    .line 512
    add-int/lit8 v102, v102, -0x1

    if-gtz v102, :cond_253

    .line 513
    move/from16 v130, v123

    goto/16 :goto_253

    .line 453
    .end local v13           #endPos:I
    .end local v14           #above:I
    .end local v15           #below:I
    .end local v16           #top:I
    .end local v17           #bottom:I
    .end local v37           #currentTextWidth:F
    :cond_3c5
    move/from16 v0, v103

    if-eq v0, v12, :cond_3d6

    .line 454
    move/from16 v13, v103

    .line 455
    .restart local v13       #endPos:I
    move/from16 v14, v44

    .line 456
    .restart local v14       #above:I
    move/from16 v15, v45

    .line 457
    .restart local v15       #below:I
    move/from16 v16, v46

    .line 458
    .restart local v16       #top:I
    move/from16 v17, v47

    .line 459
    .restart local v17       #bottom:I
    move/from16 v37, v104

    .restart local v37       #currentTextWidth:F
    goto :goto_384

    .line 461
    .end local v13           #endPos:I
    .end local v14           #above:I
    .end local v15           #below:I
    .end local v16           #top:I
    .end local v17           #bottom:I
    .end local v37           #currentTextWidth:F
    :cond_3d6
    add-int/lit8 v13, v12, 0x1

    .line 462
    .restart local v13       #endPos:I
    iget v14, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 463
    .restart local v14       #above:I
    iget v15, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 464
    .restart local v15       #below:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v16, v0

    .line 465
    .restart local v16       #top:I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v17, v0

    .line 466
    .restart local v17       #bottom:I
    sub-int v5, v12, v34

    aget v37, v33, v5

    .restart local v37       #currentTextWidth:F
    goto :goto_384

    .line 504
    :cond_3e9
    add-int/lit8 v111, v12, -0x1

    goto :goto_3a7

    .line 311
    .end local v13           #endPos:I
    .end local v14           #above:I
    .end local v15           #below:I
    .end local v16           #top:I
    .end local v17           #bottom:I
    .end local v37           #currentTextWidth:F
    .end local v39           #moreChars:Z
    :cond_3ec
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_16e

    .line 522
    .end local v99           #c:C
    .end local v105           #fmAscent:I
    .end local v106           #fmBottom:I
    .end local v107           #fmDescent:I
    .end local v108           #fmTop:I
    .end local v111           #j:I
    .end local v115           #nextSpanStart:I
    :cond_3f0
    move/from16 v0, v43

    if-eq v0, v12, :cond_455

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v10, :cond_455

    .line 523
    or-int v5, v46, v47

    or-int v5, v5, v45

    or-int v5, v5, v44

    if-nez v5, :cond_41b

    .line 524
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 526
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v46, v0

    .line 527
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v47, v0

    .line 528
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v44, v0

    .line 529
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v45, v0

    .line 534
    :cond_41b
    move/from16 v0, v43

    move/from16 v1, p3

    if-eq v0, v1, :cond_4c5

    const/16 v69, 0x1

    :goto_423
    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move/from16 v42, v12

    move/from16 v48, v18

    move/from16 v49, p7

    move/from16 v50, p8

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v9

    move/from16 v54, v24

    move/from16 v55, v25

    move-object/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, p3

    move/from16 v60, p9

    move/from16 v61, p10

    move-object/from16 v62, v32

    move-object/from16 v63, v33

    move/from16 v64, v34

    move-object/from16 v65, p12

    move/from16 v66, p11

    move-object/from16 v68, p4

    invoke-direct/range {v40 .. v69}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    .line 546
    :cond_455
    move/from16 v34, v43

    .line 548
    move/from16 v0, v43

    move/from16 v1, p3

    if-ne v0, v1, :cond_4c9

    .line 552
    .end local v7           #spanStart:I
    .end local v12           #here:I
    .end local v21           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v24           #hasTabOrEmoji:Z
    .end local v26           #chdirs:[B
    .end local v27           #dir:I
    .end local v28           #easy:Z
    .end local v32           #chs:[C
    .end local v33           #widths:[F
    .end local v43           #paraEnd:I
    .end local v44           #fitAscent:I
    .end local v45           #fitDescent:I
    .end local v46           #fitTop:I
    .end local v47           #fitBottom:I
    .end local v67           #w:F
    .end local v101           #firstWidth:I
    .end local v102           #firstWidthLineLimit:I
    .end local v103           #fit:I
    .end local v104           #fitWidth:F
    .end local v109           #hasTab:Z
    .end local v117           #ok:I
    .end local v118           #okAscent:I
    .end local v119           #okBottom:I
    .end local v120           #okDescent:I
    .end local v121           #okTop:I
    .end local v122           #okWidth:F
    .end local v123           #restWidth:I
    .end local v125           #spanEnd:I
    .end local v127           #tabStops:Landroid/text/Layout$TabStops;
    .end local v130           #width:I
    :cond_45d
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_46f

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v10, 0xa

    if-ne v5, v10, :cond_4c4

    :cond_46f
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v10, :cond_4c4

    .line 556
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 558
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v72, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v73, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v74, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v75, v0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x1

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v95, 0x0

    const/16 v97, 0x0

    move-object/from16 v68, p0

    move-object/from16 v69, p1

    move/from16 v70, p3

    move/from16 v71, p3

    move/from16 v76, v18

    move/from16 v77, p7

    move/from16 v78, p8

    move-object/from16 v81, v9

    move/from16 v83, v25

    move/from16 v87, p3

    move/from16 v88, p9

    move/from16 v89, p10

    move/from16 v92, p2

    move-object/from16 v93, p12

    move/from16 v94, p11

    move-object/from16 v96, p4

    invoke-direct/range {v68 .. v97}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    .line 569
    :cond_4c4
    return-void

    .line 534
    .restart local v7       #spanStart:I
    .restart local v12       #here:I
    .restart local v21       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v24       #hasTabOrEmoji:Z
    .restart local v26       #chdirs:[B
    .restart local v27       #dir:I
    .restart local v28       #easy:Z
    .restart local v32       #chs:[C
    .restart local v33       #widths:[F
    .restart local v43       #paraEnd:I
    .restart local v44       #fitAscent:I
    .restart local v45       #fitDescent:I
    .restart local v46       #fitTop:I
    .restart local v47       #fitBottom:I
    .restart local v67       #w:F
    .restart local v101       #firstWidth:I
    .restart local v102       #firstWidthLineLimit:I
    .restart local v103       #fit:I
    .restart local v104       #fitWidth:F
    .restart local v109       #hasTab:Z
    .restart local v117       #ok:I
    .restart local v118       #okAscent:I
    .restart local v119       #okBottom:I
    .restart local v120       #okDescent:I
    .restart local v121       #okTop:I
    .restart local v122       #okWidth:F
    .restart local v123       #restWidth:I
    .restart local v125       #spanEnd:I
    .restart local v127       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v130       #width:I
    :cond_4c5
    const/16 v69, 0x0

    goto/16 :goto_423

    .line 184
    :cond_4c9
    move/from16 v34, v43

    goto/16 :goto_2e
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 970
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 975
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 976
    const/4 v0, 0x0

    .line 979
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 984
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 985
    const/4 v0, 0x0

    .line 988
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 993
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .parameter "line"

    .prologue
    .line 955
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 920
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 935
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 936
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1c

    .line 938
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_1c
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 960
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .parameter "vertical"

    .prologue
    .line 899
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 900
    .local v1, high:I
    const/4 v3, -0x1

    .line 902
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 903
    .local v2, lines:[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 904
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 905
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 906
    move v1, v0

    goto :goto_5

    .line 908
    :cond_19
    move v3, v0

    goto :goto_5

    .line 911
    .end local v0           #guess:I
    :cond_1b
    if-gez v3, :cond_1e

    .line 912
    const/4 v3, 0x0

    .line 914
    .end local v3           #low:I
    :cond_1e
    return v3
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 945
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
    .registers 5
    .parameter "line"

    .prologue
    .line 925
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 926
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1a

    .line 928
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 930
    :cond_1a
    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 950
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 965
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 997
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 998
    return-void
.end method
