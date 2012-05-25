.class Landroid/os/memory/RunningState$MergedItem;
.super Landroid/os/memory/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Landroid/os/memory/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/memory/RunningState$BaseItem;-><init>(Z)V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 481
    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    .line 485
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .registers 12
    .parameter "context"
    .parameter "background"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 488
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 489
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 490
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 491
    iput-boolean p2, p0, Landroid/os/memory/RunningState$BaseItem;->mBackground:Z

    .line 493
    iget-boolean v4, p0, Landroid/os/memory/RunningState$BaseItem;->mBackground:Z

    if-nez v4, :cond_3d

    .line 494
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget v4, v4, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    if-lez v4, :cond_69

    move v4, v5

    :goto_21
    iget-object v7, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int v1, v4, v7

    .line 495
    .local v1, numProcesses:I
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 496
    .local v2, numServices:I
    iget v4, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v4, v1, :cond_37

    iget v4, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    if-eq v4, v2, :cond_3d

    .line 497
    :cond_37
    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    .line 498
    iput v2, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    .line 500
    if-eq v1, v5, :cond_6b

    .line 512
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    :cond_3d
    :goto_3d
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    .line 513
    const/4 v0, 0x0

    .local v0, i:I
    :goto_42
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6e

    .line 514
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/memory/RunningState$ServiceItem;

    .line 515
    .local v3, si:Landroid/os/memory/RunningState$ServiceItem;
    iget-wide v4, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-ltz v4, :cond_66

    iget-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    iget-wide v7, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    cmp-long v4, v4, v7

    if-gez v4, :cond_66

    .line 516
    iget-wide v4, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    iput-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    .line 513
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .end local v0           #i:I
    .end local v3           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_69
    move v4, v6

    .line 494
    goto :goto_21

    .line 504
    .restart local v1       #numProcesses:I
    .restart local v2       #numServices:I
    :cond_6b
    if-eq v2, v5, :cond_3d

    goto :goto_3d

    .line 520
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    .restart local v0       #i:I
    :cond_6e
    return v6
.end method

.method updateSize(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 524
    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-wide v2, v2, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 526
    iget-wide v3, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/memory/RunningState$ProcessItem;

    iget-wide v5, v2, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 529
    :cond_23
    iget-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 532
    iput-object v1, p0, Landroid/os/memory/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 538
    :cond_33
    return v7
.end method
