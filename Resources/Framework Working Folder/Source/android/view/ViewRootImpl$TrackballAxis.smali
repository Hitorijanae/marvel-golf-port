.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final MAX_ACCELERATION:F = 20.0f


# instance fields
.field absPosition:F

.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 4644
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4667
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .registers 13
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 4693
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_55

    .line 4694
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 4695
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_1b

    .line 4697
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4698
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4699
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4700
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4702
    :cond_1b
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4720
    :goto_1e
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_47

    .line 4721
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 4722
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4723
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4724
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7b

    .line 4726
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4727
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3f

    mul-float/2addr v0, v5

    .line 4731
    :cond_3f
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_78

    .end local v0           #acc:F
    :goto_45
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4742
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_47
    :goto_47
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4743
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    return v6

    .line 4703
    .end local v3           #normTime:J
    :cond_55
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_75

    .line 4704
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 4705
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_71

    .line 4707
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4708
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4709
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4710
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4712
    :cond_71
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_1e

    .line 4714
    .end local v3           #normTime:J
    :cond_75
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto :goto_1e

    .line 4731
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_78
    const/high16 v0, 0x41a0

    goto :goto_45

    .line 4734
    .end local v5           #scale:F
    :cond_7b
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4735
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8a

    div-float/2addr v0, v5

    .line 4739
    :cond_8a
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_93

    .end local v0           #acc:F
    :goto_90
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_47

    .restart local v0       #acc:F
    :cond_93
    const/high16 v0, 0x3f80

    goto :goto_90
.end method

.method generate(F)I
    .registers 10
    .parameter "precision"

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    .line 4758
    const/4 v2, 0x0

    .line 4759
    .local v2, movement:I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4761
    :goto_9
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1d

    move v1, v3

    .line 4762
    .local v1, dir:I
    :goto_11
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_78

    .line 4795
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_51

    .line 4796
    :cond_1c
    return v2

    .line 4761
    .end local v1           #dir:I
    :cond_1d
    const/4 v1, -0x1

    goto :goto_11

    .line 4767
    .restart local v1       #dir:I
    :pswitch_1f
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, p1

    if-ltz v4, :cond_1c

    .line 4770
    add-int/2addr v2, v1

    .line 4771
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4772
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_9

    .line 4778
    :pswitch_2e
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1c

    .line 4781
    add-int/2addr v2, v1

    .line 4782
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4783
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    if-lez v1, :cond_4f

    const/high16 v4, -0x4000

    :goto_40
    add-float/2addr v4, v7

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4784
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    .line 4785
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_9

    :cond_4f
    move v4, v5

    .line 4783
    goto :goto_40

    .line 4798
    :cond_51
    add-int/2addr v2, v1

    .line 4799
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    if-ltz v1, :cond_72

    const/high16 v4, -0x4080

    :goto_58
    add-float/2addr v4, v7

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4800
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    .line 4801
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4802
    .local v0, acc:F
    const v4, 0x3f8ccccd

    mul-float/2addr v0, v4

    .line 4803
    const/high16 v4, 0x41a0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_74

    .end local v0           #acc:F
    :goto_6f
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_9

    :cond_72
    move v4, v6

    .line 4799
    goto :goto_58

    .line 4803
    .restart local v0       #acc:F
    :cond_74
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_6f

    .line 4762
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2e
    .end packed-switch
.end method

.method reset(I)V
    .registers 4
    .parameter "_step"

    .prologue
    .line 4674
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4675
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4676
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4677
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4678
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4679
    return-void
.end method
