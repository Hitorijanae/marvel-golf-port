.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final bArabicDisplay:Z


# instance fields
.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x19

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v1, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v1, :cond_e

    :cond_a
    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 53
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 53
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 53
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 73
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 80
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 89
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 467
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 469
    :cond_a
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 14
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 275
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 276
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 277
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 278
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 281
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 283
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 286
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_2b

    .line 287
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 288
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 289
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 296
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_25
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    return-void

    .line 291
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_2b
    move v6, p4

    .line 292
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_25
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 416
    .local v4, width:I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 417
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 419
    .local v5, x:I
    const/4 v2, 0x0

    .line 422
    .local v2, progress:F
    sget-boolean v6, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-nez v6, :cond_3c

    .line 424
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_28

    .line 425
    const/4 v3, 0x0

    .line 455
    .local v3, scale:F
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 456
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 458
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 459
    return-void

    .line 426
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_28
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_31

    .line 427
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_1b

    .line 429
    .end local v3           #scale:F
    :cond_31
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 430
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1b

    .line 434
    .end local v3           #scale:F
    :cond_3c
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v6, :cond_6b

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mirror"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 435
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_56

    .line 436
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_1b

    .line 437
    .end local v3           #scale:F
    :cond_56
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_5e

    .line 438
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_1b

    .line 440
    .end local v3           #scale:F
    :cond_5e
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 441
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1b

    .line 444
    .end local v3           #scale:F
    :cond_6b
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_71

    .line 445
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_1b

    .line 446
    .end local v3           #scale:F
    :cond_71
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_7a

    .line 447
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_1b

    .line 449
    .end local v3           #scale:F
    :cond_7a
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 450
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1b
.end method

.method private updateThumbPos(II)V
    .registers 15
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 239
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_45

    move v6, v8

    .line 242
    .local v6, thumbHeight:I
    :goto_a
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 244
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 245
    .local v3, max:I
    if-lez v3, :cond_4a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 247
    .local v4, scale:F
    :goto_25
    if-le v6, v7, :cond_4c

    .line 248
    if-eqz v5, :cond_2c

    .line 249
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 251
    :cond_2c
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 252
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_44

    .line 254
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    .end local v2           #gapForCenteringTrack:I
    :cond_44
    :goto_44
    return-void

    .line 239
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_45
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_a

    .line 245
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_4a
    const/4 v4, 0x0

    goto :goto_25

    .line 259
    .restart local v4       #scale:F
    :cond_4c
    if-eqz v0, :cond_5f

    .line 261
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    :cond_5f
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 265
    .local v1, gap:I
    if-eqz v5, :cond_44

    .line 266
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_44
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 204
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 206
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    :cond_14
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 210
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 211
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 213
    .end local v1           #state:[I
    :cond_29
    return-void

    .line 206
    :cond_2a
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 197
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 198
    :cond_c
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_65

    .line 303
    sget-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-eqz v0, :cond_34

    .line 305
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 312
    :cond_34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 319
    sget-boolean v0, Landroid/widget/AbsSeekBar;->bArabicDisplay:Z

    if-eqz v0, :cond_65

    .line 321
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_67

    .line 326
    :cond_65
    monitor-exit p0

    return-void

    .line 301
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 490
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 494
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 495
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 496
    .local v0, progress:I
    packed-switch p1, :pswitch_data_30

    .line 511
    .end local v0           #progress:I
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_12
    return v1

    .line 498
    .restart local v0       #progress:I
    :pswitch_13
    if-lez v0, :cond_e

    .line 499
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 500
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_12

    .line 504
    :pswitch_20
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 505
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 506
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_12

    .line 496
    :pswitch_data_30
    .packed-switch 0x15
        :pswitch_13
        :pswitch_20
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 330
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4d

    .line 333
    .local v3, thumbHeight:I
    :goto_a
    const/4 v2, 0x0

    .line 334
    .local v2, dw:I
    const/4 v1, 0x0

    .line 335
    .local v1, dh:I
    if-eqz v0, :cond_32

    .line 336
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 337
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 340
    :cond_32
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 341
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 343
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_54

    .line 345
    monitor-exit p0

    return-void

    .line 332
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_4d
    :try_start_4d
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_54

    move-result v3

    goto :goto_a

    .line 330
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .registers 6
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 218
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 219
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 220
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 228
    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 234
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 476
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 484
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 411
    :cond_d
    :goto_d
    return v1

    .line 353
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_9c

    goto :goto_d

    .line 355
    :pswitch_16
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_d

    .line 358
    :cond_23
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 359
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_33

    .line 360
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 362
    :cond_33
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 363
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 364
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 369
    :pswitch_3d
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_45

    .line 370
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 372
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 373
    .local v0, x:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 374
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 375
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_68

    .line 376
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 378
    :cond_68
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 379
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 380
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 386
    .end local v0           #x:F
    :pswitch_72
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_83

    .line 387
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 388
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 389
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 400
    :goto_7f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_d

    .line 393
    :cond_83
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 394
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 395
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_7f

    .line 404
    :pswitch_8d
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_97

    .line 405
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 406
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 408
    :cond_97
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_d

    .line 353
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_72
        :pswitch_3d
        :pswitch_8d
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2
    .parameter "increment"

    .prologue
    .line 163
    if-gez p1, :cond_3

    neg-int p1, p1

    .end local p1
    :cond_3
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 164
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .parameter "max"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 182
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_27

    .line 185
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 187
    :cond_27
    monitor-exit p0

    return-void

    .line 180
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "thumb"

    .prologue
    .line 104
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_59

    .line 105
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    const/4 v0, 0x1

    .line 110
    .local v0, needUpdate:Z
    :goto_f
    if-eqz p1, :cond_39

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 119
    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_36

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_39

    .line 122
    :cond_36
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 125
    :cond_39
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 127
    if-eqz v0, :cond_58

    .line 128
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 132
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 133
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 136
    .end local v1           #state:[I
    :cond_58
    return-void

    .line 108
    .end local v0           #needUpdate:Z
    :cond_59
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_f
.end method

.method public setThumbOffset(I)V
    .registers 2
    .parameter "thumbOffset"

    .prologue
    .line 152
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 153
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 154
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
