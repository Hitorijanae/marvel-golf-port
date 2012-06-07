.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final bArabicDisplay:Z

.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v2, :cond_b

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v2, :cond_18

    :cond_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Landroid/text/MeasuredText;->bArabicDisplay:Z

    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void

    :cond_18
    move v0, v1

    .line 32
    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 51
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 58
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 59
    :try_start_3
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, i:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 60
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 61
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 62
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 63
    monitor-exit v3

    .line 71
    :goto_1a
    return-object v1

    .line 66
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 67
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 71
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_1a

    .line 66
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 76
    sget-boolean v1, Landroid/text/MeasuredText;->bArabicDisplay:Z

    if-eqz v1, :cond_a

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredText;->mDir:I

    .line 78
    :cond_a
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_27

    .line 79
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    :try_start_14
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 81
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_28

    .line 82
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 87
    :cond_26
    monitor-exit v2

    .line 89
    .end local v0           #i:I
    :cond_27
    return-object v3

    .line 80
    .restart local v0       #i:I
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 87
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2b

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 26
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 166
    if-eqz p3, :cond_9

    .line 167
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 170
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 171
    .local v4, p:I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 173
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_38

    .line 174
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    const/4 v8, 0x0

    .line 176
    .local v8, flags:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 193
    :cond_35
    return v21

    .line 174
    .end local v8           #flags:I
    :cond_36
    const/4 v8, 0x1

    goto :goto_21

    .line 179
    :cond_38
    const/16 v21, 0x0

    .line 180
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 181
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 182
    .local v18, e:I
    :goto_45
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_82

    .line 183
    :cond_55
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_85

    const/4 v8, 0x0

    .line 184
    .restart local v8       #flags:I
    :goto_5a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 186
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_35

    .line 189
    move/from16 v11, v19

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 181
    .end local v8           #flags:I
    :cond_82
    add-int/lit8 v19, v19, 0x1

    goto :goto_45

    .line 183
    :cond_85
    const/4 v8, 0x1

    goto :goto_5a
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 199
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 200
    .local v1, workPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 202
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    .line 206
    aget-object v8, p2, v7

    .line 207
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    .line 208
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 205
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 210
    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    .line 215
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    if-nez v0, :cond_38

    .line 216
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 228
    .local v10, wid:F
    :goto_23
    if-eqz p4, :cond_37

    .line 229
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_67

    .line 230
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 231
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 238
    :cond_37
    :goto_37
    return v10

    .line 219
    .end local v10           #wid:F
    :cond_38
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 221
    .restart local v10       #wid:F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 222
    .local v9, w:[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 223
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, e:I
    :goto_59
    if-ge v7, v6, :cond_61

    .line 224
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 223
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 225
    :cond_61
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_23

    .line 233
    .end local v6           #e:I
    .end local v9           #w:[F
    :cond_67
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 234
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method addStyleRunEx(Landroid/text/TextPaint;IILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 27
    .parameter "paint"
    .parameter "span_start"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 278
    if-eqz p4, :cond_9

    .line 279
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 282
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v4, p2, v2

    .line 283
    .local v4, p:I
    add-int v2, v4, p3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 285
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3a

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    const/4 v8, 0x0

    .line 287
    .local v8, flags:I
    :goto_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p3

    move v6, v4

    move/from16 v7, p3

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 303
    :cond_37
    return v21

    .line 286
    .end local v8           #flags:I
    :cond_38
    const/4 v8, 0x1

    goto :goto_23

    .line 290
    :cond_3a
    const/16 v21, 0x0

    .line 291
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 292
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p3

    .line 293
    .local v18, e:I
    :goto_47
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_84

    .line 294
    :cond_57
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_87

    const/4 v8, 0x0

    .line 295
    .restart local v8       #flags:I
    :goto_5c
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 296
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_37

    .line 299
    move/from16 v11, v19

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 292
    .end local v8           #flags:I
    :cond_84
    add-int/lit8 v19, v19, 0x1

    goto :goto_47

    .line 294
    :cond_87
    const/4 v8, 0x1

    goto :goto_5c
.end method

.method addStyleRunEx(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 21
    .parameter "paint"
    .parameter "spans"
    .parameter "span_start"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 307
    iget-object v4, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 308
    .local v4, workPaint:Landroid/text/TextPaint;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 310
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/TextPaint;->baselineShift:I

    .line 312
    const/4 v3, 0x0

    .line 314
    .local v3, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_c
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v10, v5, :cond_21

    .line 315
    aget-object v11, p2, v10

    .line 316
    .local v11, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v5, v11, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_1d

    move-object v3, v11

    .line 317
    check-cast v3, Landroid/text/style/ReplacementSpan;

    .line 314
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 319
    :cond_1d
    invoke-virtual {v11, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1a

    .line 324
    .end local v11           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_21
    if-nez v3, :cond_4a

    .line 325
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRunEx(Landroid/text/TextPaint;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v14

    .line 342
    .local v14, wid:F
    :goto_2d
    if-eqz p5, :cond_49

    .line 343
    iget v5, v4, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_70

    .line 344
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 345
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 352
    :cond_49
    :goto_49
    return v14

    .line 329
    .end local v14           #wid:F
    :cond_4a
    iget-object v5, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    add-int v7, p3, p4

    move/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v5

    int-to-float v14, v5

    .line 331
    .restart local v14       #wid:F
    iget-object v13, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 333
    .local v13, w:[F
    iget v5, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v12, p3, v5

    .line 335
    .local v12, start_offset:I
    aput v14, v13, v12

    .line 336
    add-int/lit8 v10, v12, 0x1

    add-int v9, v12, p4

    .local v9, e:I
    :goto_63
    if-ge v10, v9, :cond_6b

    .line 337
    const/4 v5, 0x0

    aput v5, v13, v10

    .line 336
    add-int/lit8 v10, v10, 0x1

    goto :goto_63

    .line 339
    :cond_6b
    add-int v5, v12, p4

    iput v5, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2d

    .line 347
    .end local v9           #e:I
    .end local v12           #start_offset:I
    .end local v13           #w:[F
    :cond_70
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 348
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_49
.end method

.method breakText(IIZF)I
    .registers 9
    .parameter "start"
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 243
    .local v1, w:[F
    if-eqz p3, :cond_15

    .line 244
    move v0, p1

    .local v0, i:I
    :goto_6
    if-ge v0, p2, :cond_26

    .line 245
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_12

    .line 246
    sub-int v2, v0, p1

    .line 257
    :goto_11
    return v2

    .line 244
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 250
    .end local v0           #i:I
    :cond_15
    move v0, p2

    .restart local v0       #i:I
    :cond_16
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_26

    .line 251
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_16

    .line 252
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 257
    :cond_26
    sub-int v2, p2, p1

    goto :goto_11
.end method

.method measure(II)F
    .registers 7
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 263
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 264
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 266
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 21
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 97
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    .line 99
    sub-int v9, p3, p2

    .line 100
    .local v9, len:I
    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/MeasuredText;->mLen:I

    .line 101
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mPos:I

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v13, v13

    if-ge v13, v9, :cond_2e

    .line 104
    :cond_24
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v13

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    .line 106
    :cond_2e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v13, :cond_3b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    array-length v13, v13

    if-ge v13, v9, :cond_45

    .line 107
    :cond_3b
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v13

    new-array v13, v13, [C

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    .line 109
    :cond_45
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v13, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 111
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/text/Spanned;

    if-eqz v13, :cond_8f

    move-object/from16 v10, p1

    .line 112
    check-cast v10, Landroid/text/Spanned;

    .line 113
    .local v10, spanned:Landroid/text/Spanned;
    const-class v13, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v0, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ReplacementSpan;

    .line 116
    .local v11, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6a
    array-length v13, v11

    if-ge v6, v13, :cond_8f

    .line 117
    aget-object v13, v11, v6

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    sub-int v12, v13, p2

    .line 118
    .local v12, startInPara:I
    aget-object v13, v11, v6

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    sub-int v5, v13, p2

    .line 119
    .local v5, endInPara:I
    move v8, v12

    .local v8, j:I
    :goto_7e
    if-ge v8, v5, :cond_8c

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const v14, 0xfffc

    aput-char v14, v13, v8

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_7e

    .line 116
    :cond_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 125
    .end local v5           #endInPara:I
    .end local v6           #i:I
    .end local v8           #j:I
    .end local v10           #spanned:Landroid/text/Spanned;
    .end local v11           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v12           #startInPara:I
    :cond_8f
    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v13, :cond_a1

    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v13, :cond_a1

    sget-object v13, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_b7

    :cond_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    invoke-static {v13, v14, v9}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 129
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 130
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/text/MeasuredText;->mEasy:Z

    .line 163
    :goto_b6
    return-void

    .line 132
    :cond_b7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v13, :cond_c4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v13, v13

    if-ge v13, v9, :cond_ce

    .line 133
    :cond_c4
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v13

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    .line 136
    :cond_ce
    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_f0

    .line 137
    const/4 v3, 0x1

    .line 149
    .local v3, bidiRequest:I
    :goto_d5
    sget-boolean v13, Landroid/text/MeasuredText;->bArabicDisplay:Z

    if-nez v13, :cond_119

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v15, 0x0

    invoke-static {v3, v13, v14, v9, v15}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 161
    :cond_ea
    :goto_ea
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_b6

    .line 138
    .end local v3           #bidiRequest:I
    :cond_f0
    sget-object v13, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_f8

    .line 139
    const/4 v3, -0x1

    .restart local v3       #bidiRequest:I
    goto :goto_d5

    .line 140
    .end local v3           #bidiRequest:I
    :cond_f8
    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_100

    .line 141
    const/4 v3, 0x2

    .restart local v3       #bidiRequest:I
    goto :goto_d5

    .line 142
    .end local v3           #bidiRequest:I
    :cond_100
    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_108

    .line 143
    const/4 v3, -0x2

    .restart local v3       #bidiRequest:I
    goto :goto_d5

    .line 145
    .end local v3           #bidiRequest:I
    :cond_108
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v13, v14, v9}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v7

    .line 146
    .local v7, isRtl:Z
    if-eqz v7, :cond_117

    const/4 v3, -0x1

    .restart local v3       #bidiRequest:I
    :goto_116
    goto :goto_d5

    .end local v3           #bidiRequest:I
    :cond_117
    const/4 v3, 0x1

    goto :goto_116

    .line 155
    .end local v7           #isRtl:Z
    .restart local v3       #bidiRequest:I
    :cond_119
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mDir:I

    .line 156
    .local v4, currentDir:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v15, 0x0

    invoke-static {v3, v13, v14, v9, v15}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 157
    if-eqz v4, :cond_ea

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    aget-char v13, v13, v14

    const/16 v14, 0x2022

    if-ne v13, v14, :cond_ea

    .line 158
    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/MeasuredText;->mDir:I

    goto :goto_ea
.end method
