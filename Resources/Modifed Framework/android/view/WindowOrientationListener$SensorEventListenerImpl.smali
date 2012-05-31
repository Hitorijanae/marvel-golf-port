.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 100.0f

.field private static final HISTORY_SIZE:I = 0x14

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 14.709975f

.field private static final MAX_FILTER_DELTA_TIME_MS:F = 1000.0f

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 4.903325f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SETTLE_MAGNITUDE_MAX_DELTA:F = 1.96133f

.field private static final SETTLE_ORIENTATION_ANGLE_MAX_DELTA:I = 0x8

.field private static final SETTLE_TILT_ANGLE_MAX_DELTA:I = 0x8

.field private static final SETTLE_TIME_MAX_MS:I = 0x1f4

.field private static final SETTLE_TIME_MIN_MS:I = 0xc8

.field private static final TILT_TOLERANCE:[[I


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHistoryIndex:I

.field private mHistoryLength:I

.field private final mHistoryMagnitudes:[F

.field private final mHistoryOrientationAngles:[I

.field private final mHistoryTiltAngles:[I

.field private final mHistoryTimestampMS:[J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mLastTimestamp:J

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mProposalAgeMS:J

.field private mProposalRotation:I

.field private mProposalSettled:Z

.field private mProposalTime:J

.field private mSettleTimeMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    return-void

    :array_26
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x46t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;Landroid/content/Context;)V
    .registers 7
    .parameter "orientationListener"
    .parameter "c"

    .prologue
    const/16 v3, 0x14

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 246
    new-array v1, v3, [J

    iput-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    .line 247
    new-array v1, v3, [F

    iput-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    .line 248
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    .line 249
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    .line 350
    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSettleTimeMs:I

    .line 353
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 354
    iput-object p2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mContext:Landroid/content/Context;

    .line 355
    new-instance v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;-><init>(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;Landroid/os/Handler;)V

    .line 356
    .local v0, settingsObserver:Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;
    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;->observe()V

    .line 357
    return-void
.end method

.method private static angleAbsoluteDelta(II)I
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 625
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 626
    .local v0, delta:I
    const/16 v1, 0xb4

    if-le v0, v1, :cond_c

    .line 627
    rsub-int v0, v0, 0x168

    .line 629
    :cond_c
    return v0
.end method

.method private clearProposal()V
    .registers 3

    .prologue
    .line 571
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalSettled:Z

    .line 574
    return-void
.end method

.method private isOrientationAngleAcceptable(II)Z
    .registers 8
    .parameter "proposedRotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 527
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v4, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 528
    .local v0, currentRotation:I
    if-ltz v0, :cond_38

    .line 533
    if-eq p1, v0, :cond_f

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_22

    .line 535
    :cond_f
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 537
    .local v1, lowerBound:I
    if-nez p1, :cond_20

    .line 538
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_22

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_22

    .line 567
    .end local v1           #lowerBound:I
    :cond_1f
    :goto_1f
    return v3

    .line 542
    .restart local v1       #lowerBound:I
    :cond_20
    if-lt p2, v1, :cond_1f

    .line 552
    .end local v1           #lowerBound:I
    :cond_22
    if-eq p1, v0, :cond_2a

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_38

    .line 554
    :cond_2a
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 556
    .local v2, upperBound:I
    if-nez p1, :cond_3a

    .line 557
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_38

    if-gt p2, v2, :cond_1f

    .line 567
    .end local v2           #upperBound:I
    :cond_38
    const/4 v3, 0x1

    goto :goto_1f

    .line 561
    .restart local v2       #upperBound:I
    :cond_3a
    if-le p2, v2, :cond_38

    goto :goto_1f
.end method

.method private isTiltAngleAcceptable(II)Z
    .registers 6
    .parameter "proposedRotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 512
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_13

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private updateProposal(IJFII)V
    .registers 16
    .parameter "rotation"
    .parameter "timestampMS"
    .parameter "magnitude"
    .parameter "tiltAngle"
    .parameter "orientationAngle"

    .prologue
    .line 578
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    if-eq v5, p1, :cond_e

    .line 579
    iput-wide p2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalTime:J

    .line 580
    iput p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    .line 581
    const/4 v5, 0x0

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 582
    const/4 v5, 0x0

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    .line 585
    :cond_e
    iget v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 586
    .local v3, index:I
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aput-wide p2, v5, v3

    .line 587
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aput p4, v5, v3

    .line 588
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aput p5, v5, v3

    .line 589
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aput p6, v5, v3

    .line 590
    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x14

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 591
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_32

    .line 592
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    .line 595
    :cond_32
    const-wide/16 v0, 0x0

    .line 596
    .local v0, age:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_35
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    if-ge v2, v5, :cond_4e

    .line 597
    add-int/lit8 v5, v3, 0x14

    sub-int/2addr v5, v2

    rem-int/lit8 v4, v5, 0x14

    .line 598
    .local v4, olderIndex:I
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aget v5, v5, v4

    sub-float/2addr v5, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ffb0cdd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_65

    .line 615
    .end local v4           #olderIndex:I
    :cond_4e
    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    .line 616
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSettleTimeMs:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_61

    iget-wide v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8d

    .line 618
    :cond_61
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalSettled:Z

    .line 622
    :goto_64
    return-void

    .line 602
    .restart local v4       #olderIndex:I
    :cond_65
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p5}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_4e

    .line 606
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_4e

    .line 610
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aget-wide v5, v5, v4

    sub-long v0, p2, v5

    .line 611
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSettleTimeMs:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_4e

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 620
    .end local v4           #olderIndex:I
    :cond_8d
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalSettled:Z

    goto :goto_64
.end method


# virtual methods
.method public getProposedRotation()I
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalSettled:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 365
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 25
    .parameter "event"

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget-boolean v10, v2, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 373
    .local v10, log:Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v18, v2, v4

    .line 374
    .local v18, x:F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v19, v2, v4

    .line 375
    .local v19, y:F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v20, v2, v4

    .line 377
    .local v20, z:F
    if-eqz v10, :cond_4f

    .line 378
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raw acceleration vector: x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4f
    move-object/from16 v0, p1

    iget-wide v11, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 387
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    sub-long v4, v11, v4

    long-to-float v2, v4

    const v4, 0x358637bd

    mul-float v17, v2, v4

    .line 389
    .local v17, timeDeltaMS:F
    const/4 v2, 0x0

    cmpg-float v2, v17, v2

    if-lez v2, :cond_79

    const/high16 v2, 0x447a

    cmpl-float v2, v17, v2

    if-gtz v2, :cond_79

    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-nez v2, :cond_184

    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_184

    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-nez v2, :cond_184

    .line 391
    :cond_79
    if-eqz v10, :cond_82

    .line 392
    const-string v2, "WindowOrientationListener"

    const-string v4, "Resetting orientation listener."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_82
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    .line 395
    const/16 v16, 0x1

    .line 407
    .local v16, skipSample:Z
    :goto_87
    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 408
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 409
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 410
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v13

    .line 413
    .local v13, oldProposedRotation:I
    if-nez v16, :cond_dc

    .line 415
    mul-float v2, v18, v18

    mul-float v4, v19, v19

    add-float/2addr v2, v4

    mul-float v4, v20, v20

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v6, v4

    .line 416
    .local v6, magnitude:F
    const v2, 0x409ce80a

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_bf

    const v2, 0x416b5c0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1e9

    .line 418
    :cond_bf
    if-eqz v10, :cond_d9

    .line 419
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, magnitude out of range: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_d9
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    .line 484
    .end local v6           #magnitude:F
    :cond_dc
    :goto_dc
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v15

    .line 485
    .local v15, proposedRotation:I
    if-eqz v10, :cond_154

    .line 486
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    long-to-float v2, v4

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSettleTimeMs:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 488
    .local v14, proposalConfidence:F
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result: currentRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v5, v5, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeDeltaMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalAgeMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalConfidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v14           #proposalConfidence:F
    :cond_154
    if-eq v15, v13, :cond_183

    if-ltz v15, :cond_183

    .line 498
    if-eqz v10, :cond_17c

    .line 499
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldProposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_17c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v2, v15}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 504
    :cond_183
    return-void

    .line 397
    .end local v13           #oldProposedRotation:I
    .end local v15           #proposedRotation:I
    .end local v16           #skipSample:Z
    :cond_184
    const/high16 v2, 0x42c8

    add-float v2, v2, v17

    div-float v9, v17, v2

    .line 398
    .local v9, alpha:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    sub-float v2, v18, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    add-float v18, v2, v4

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    sub-float v2, v19, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    add-float v19, v2, v4

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    sub-float v2, v20, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    add-float v20, v2, v4

    .line 401
    if-eqz v10, :cond_1e5

    .line 402
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered acceleration vector: x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1e5
    const/16 v16, 0x0

    .restart local v16       #skipSample:Z
    goto/16 :goto_87

    .line 430
    .end local v9           #alpha:F
    .restart local v6       #magnitude:F
    .restart local v13       #oldProposedRotation:I
    :cond_1e9
    div-float v2, v20, v6

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v21, 0x404ca5dc20000000L

    mul-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v7, v4

    .line 435
    .local v7, tiltAngle:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x4b

    if-le v2, v4, :cond_22d

    .line 436
    if-eqz v10, :cond_228

    .line 437
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, tilt angle too high: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_228
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_dc

    .line 445
    :cond_22d
    move/from16 v0, v18

    neg-float v2, v0

    float-to-double v4, v2

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    const-wide v21, 0x404ca5dc20000000L

    mul-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v8, v4

    .line 447
    .local v8, orientationAngle:I
    if-gez v8, :cond_24d

    .line 449
    add-int/lit16 v8, v8, 0x168

    .line 453
    :cond_24d
    add-int/lit8 v2, v8, 0x2d

    div-int/lit8 v3, v2, 0x5a

    .line 454
    .local v3, nearestRotation:I
    const/4 v2, 0x4

    if-ne v3, v2, :cond_255

    .line 455
    const/4 v3, 0x0

    .line 459
    :cond_255
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v2

    if-eqz v2, :cond_265

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v2

    if-nez v2, :cond_298

    .line 462
    :cond_265
    if-eqz v10, :cond_293

    .line 463
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, no proposal: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientationAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_293
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_dc

    .line 469
    :cond_298
    if-eqz v10, :cond_2d4

    .line 470
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposal: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientationAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2d4
    const-wide/32 v4, 0xf4240

    div-long v4, v11, v4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updateProposal(IJFII)V

    goto/16 :goto_dc
.end method

.method protected updateSettings()V
    .registers 4

    .prologue
    .line 652
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 654
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accelerometer_rotation_settle_time"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSettleTimeMs:I

    .line 656
    return-void
.end method
