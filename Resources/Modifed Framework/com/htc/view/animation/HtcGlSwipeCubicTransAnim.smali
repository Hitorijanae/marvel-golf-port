.class public Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlSwipeCubicTransAnim.java"


# static fields
.field public static final TRANSIT_DIRECTION_LEFT:I = 0x1

.field public static final TRANSIT_DIRECTION_RIGHT:I


# instance fields
.field private final mAnimDuration:J

.field private mDirection:I

.field private final mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 48
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 25
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 28
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 32
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 49
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 51
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 25
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 28
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 32
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 42
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 44
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 121
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 25
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 28
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 32
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 123
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 125
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 126
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    .line 86
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-nez v1, :cond_e

    .line 88
    const-string/jumbo v1, "right"

    aput-object v1, v0, v2

    .line 95
    :cond_d
    :goto_d
    return-object v0

    .line 90
    :cond_e
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-ne v1, v3, :cond_d

    .line 92
    const-string/jumbo v1, "left"

    aput-object v1, v0, v2

    goto :goto_d
.end method

.method public getDirection()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    return v0
.end method

.method public monitorTransAnim(Z)V
    .registers 4
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 101
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_a

    .line 118
    :cond_9
    :goto_9
    return-void

    .line 104
    :cond_a
    if-eqz p1, :cond_1e

    .line 105
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 106
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_9

    .line 108
    :cond_18
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_9

    .line 111
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 112
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_9

    .line 114
    :cond_2a
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_9
.end method

.method public setDirection(I)V
    .registers 4
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    if-nez p1, :cond_7

    .line 59
    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 72
    :goto_6
    return-void

    .line 60
    :cond_7
    if-ne p1, v1, :cond_c

    .line 61
    iput v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    goto :goto_6

    .line 64
    :cond_c
    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
