.class Landroid/os/memory/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/memory/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 542
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/memory/RunningState$ProcessItem;Landroid/os/memory/RunningState$ProcessItem;)I
    .registers 9
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 545
    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_f

    .line 547
    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v2, :cond_d

    .line 558
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 547
    goto :goto_c

    .line 549
    :cond_f
    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_1d

    .line 551
    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_1b

    :goto_19
    move v0, v1

    goto :goto_c

    :cond_1b
    move v1, v0

    goto :goto_19

    .line 553
    :cond_1d
    iget-wide v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2f

    .line 556
    iget-wide v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    move v0, v1

    goto :goto_c

    .line 558
    :cond_2f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    check-cast p1, Landroid/os/memory/RunningState$ProcessItem;

    .end local p1
    check-cast p2, Landroid/os/memory/RunningState$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/memory/RunningState$ServiceProcessComparator;->compare(Landroid/os/memory/RunningState$ProcessItem;Landroid/os/memory/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
