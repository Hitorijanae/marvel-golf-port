.class Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;,
        Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;
    }
.end annotation


# instance fields
.field PgTimer:Ljava/util/Timer;

.field public StateMsgTimer:Ljava/util/Timer;

.field public StateTimer:Ljava/util/Timer;

.field bCanToastR:Z

.field bCanToastS:Z

.field public bMuteState:Z

.field public bShuffleState:Z

.field private bStateSynced:Z

.field public lDuration:J

.field public lPosition:J

.field public lPositionDyn:J

.field protected lUserPosition:J

.field public mbIsLiveRenderer:Z

.field public mbIsLiveServer:Z

.field public nPlayState:I

.field public nRepeatState:I

.field public nUserShuffleState:I

.field public nUserState:I

.field public nUserVolume:I

.field public nVolume:I

.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 435
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 443
    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 444
    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 445
    iput-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 446
    iput-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 536
    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveServer:Z

    .line 537
    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveRenderer:Z

    .line 544
    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    .line 573
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 602
    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 603
    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return p1
.end method

.method static synthetic access$3000(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V

    return-void
.end method

.method private isPlaying()Z
    .registers 4

    .prologue
    .line 524
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_12

    .line 525
    :cond_8
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "isPlaying() state:YES(0)"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x1

    .line 529
    :goto_11
    return v0

    .line 528
    :cond_12
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPlaying() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setPosUI(I)V
    .registers 2
    .parameter "nProgress"

    .prologue
    .line 596
    return-void
.end method

.method private setVolUI(I)V
    .registers 2
    .parameter "nVol"

    .prologue
    .line 600
    return-void
.end method


# virtual methods
.method protected checkState()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 461
    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    .line 470
    .local v0, nUserStateMap:[I
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_13

    .line 471
    iput v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 472
    iput v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 474
    :cond_13
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1c

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-gez v1, :cond_1d

    .line 488
    :cond_1c
    :goto_1c
    return-void

    .line 477
    :cond_1d
    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    aget v1, v0, v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-ne v1, v2, :cond_27

    .line 478
    iput-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 480
    :cond_27
    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    if-eqz v1, :cond_1c

    .line 481
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v1, v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1102(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 482
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v1, v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1200(Landroid/media/dlnasharedmodule/HtcDLNAController;I)V

    .line 485
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 486
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    goto :goto_1c

    .line 461
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected refreshRS(I)V
    .registers 2
    .parameter "nRef"

    .prologue
    .line 652
    return-void
.end method

.method protected refreshTime()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 548
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$000(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 550
    :cond_10
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    .line 552
    :cond_19
    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 553
    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    .line 554
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_34

    .line 555
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mStateListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    invoke-interface {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnStateListener;->onUpdateCurrentPosition(J)V

    .line 571
    :cond_34
    :goto_34
    return-void

    .line 559
    :cond_35
    iget-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    goto :goto_34
.end method

.method protected refreshVolume()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    .line 655
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR volume had been set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-gtz v0, :cond_27

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 657
    :cond_27
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-lt v0, v3, :cond_2d

    iput v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 660
    :cond_2d
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-interface {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onVolumeChanged(I)V

    .line 661
    :cond_3c
    return-void
.end method

.method protected setUserState(I)V
    .registers 10
    .parameter "nState"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 450
    iput p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 451
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;

    invoke-direct {v2, p0, v7}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 452
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_37

    .line 453
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 456
    :goto_33
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    .line 457
    return-void

    .line 455
    :cond_37
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x61a8

    invoke-virtual/range {v0 .. v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    goto :goto_33
.end method
