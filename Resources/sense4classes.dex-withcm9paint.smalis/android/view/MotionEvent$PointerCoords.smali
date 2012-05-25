.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3164
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .parameter "other"

    .prologue
    .line 3172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3173
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3174
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .parameter "size"

    .prologue
    .line 3178
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3179
    .local v0, array:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 3180
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3179
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3182
    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3287
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3288
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3289
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3290
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3291
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3292
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3293
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3294
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3295
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3296
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 10
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 3304
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3305
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3306
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_20

    .line 3307
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3308
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3309
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3310
    .local v4, values:[F
    if-eqz v4, :cond_18

    array-length v5, v4

    if-le v2, v5, :cond_1d

    .line 3311
    :cond_18
    array-length v5, v3

    new-array v4, v5, [F

    .line 3312
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3314
    :cond_1d
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3317
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_20
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3318
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3319
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3320
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3321
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3322
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3323
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3324
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3325
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3326
    return-void
.end method

.method public getAxisValue(I)F
    .registers 13
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 3338
    packed-switch p1, :pswitch_data_48

    .line 3358
    if-ltz p1, :cond_b

    const/16 v5, 0x3f

    if-le p1, v5, :cond_2e

    .line 3359
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3340
    :pswitch_13
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3367
    :goto_15
    return v5

    .line 3342
    :pswitch_16
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_15

    .line 3344
    :pswitch_19
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_15

    .line 3346
    :pswitch_1c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_15

    .line 3348
    :pswitch_1f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_15

    .line 3350
    :pswitch_22
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_15

    .line 3352
    :pswitch_25
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_15

    .line 3354
    :pswitch_28
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_15

    .line 3356
    :pswitch_2b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_15

    .line 3361
    :cond_2e
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3362
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3363
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3c

    .line 3364
    const/4 v5, 0x0

    goto :goto_15

    .line 3366
    :cond_3c
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3367
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_15

    .line 3338
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .registers 16
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3382
    packed-switch p1, :pswitch_data_76

    .line 3411
    if-ltz p1, :cond_c

    const/16 v8, 0x3f

    if-le p1, v8, :cond_2f

    .line 3412
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3384
    :pswitch_14
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3443
    :goto_16
    return-void

    .line 3387
    :pswitch_17
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_16

    .line 3390
    :pswitch_1a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_16

    .line 3393
    :pswitch_1d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_16

    .line 3396
    :pswitch_20
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_16

    .line 3399
    :pswitch_23
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_16

    .line 3402
    :pswitch_26
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_16

    .line 3405
    :pswitch_29
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_16

    .line 3408
    :pswitch_2c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_16

    .line 3414
    :cond_2f
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3415
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3416
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3417
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3418
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_50

    .line 3419
    if-nez v7, :cond_53

    .line 3420
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3421
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3438
    :cond_4c
    :goto_4c
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3440
    :cond_50
    aput p2, v7, v5

    goto :goto_16

    .line 3423
    :cond_53
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3424
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_64

    .line 3425
    if-eq v5, v4, :cond_4c

    .line 3426
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c

    .line 3430
    :cond_64
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3431
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3432
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3434
    move-object v7, v6

    .line 3435
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_4c

    .line 3382
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method
