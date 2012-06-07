.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mBitmapSize:I

.field private final mNativeBitmap:I

.field private mPixelsIsAllocated:Z

.field private mRecycled:Z

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "nativeBitmap"

    .prologue
    const/4 v0, 0x0

    .line 1587
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    .line 1583
    iput v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    .line 1584
    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1588
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    .line 1589
    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1624
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_99

    .line 1629
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1630
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_17

    .line 1631
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1635
    :cond_17
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1636
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_22
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_35

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1638
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1639
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_ee

    .line 1641
    :cond_36
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1642
    :try_start_3b
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_47

    .line 1643
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1646
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_f1

    .line 1648
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    :goto_4a
    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$500(I)V

    .line 1650
    return-void

    .line 1629
    :catchall_4e
    move-exception v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1630
    iget-boolean v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v1, :cond_62

    iget-object v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v1, :cond_62

    .line 1631
    iget-object v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1635
    :cond_62
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1636
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_6d
    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_80

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 1638
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1639
    :cond_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_e8

    .line 1641
    :cond_81
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1642
    :try_start_86
    iget-boolean v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v2, :cond_92

    .line 1643
    iget v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1644
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1646
    :cond_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_eb

    .line 1648
    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v1}, Landroid/graphics/Bitmap;->access$500(I)V

    .line 1629
    throw v0

    .line 1625
    :catch_99
    move-exception v0

    .line 1629
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1630
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v0, :cond_ad

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_ad

    .line 1631
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1635
    :cond_ad
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1636
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_b8
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_cb

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 1638
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1639
    :cond_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_b8 .. :try_end_cc} :catchall_e2

    .line 1641
    :cond_cc
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1642
    :try_start_d1
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_dd

    .line 1643
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1646
    :cond_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_e5

    .line 1648
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    goto/16 :goto_4a

    .line 1639
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    .line 1646
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0

    .line 1639
    :catchall_e8
    move-exception v0

    :try_start_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 1646
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0

    .line 1639
    :catchall_ee
    move-exception v0

    :try_start_ef
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw v0

    .line 1646
    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v0
.end method

.method protected setBitmapPixelIsAllocated(Z)V
    .registers 2
    .parameter "isPixelsAllocated"

    .prologue
    .line 1617
    iput-boolean p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1618
    return-void
.end method

.method protected setBitmapRecycled(Z)V
    .registers 2
    .parameter "isRecycled"

    .prologue
    .line 1602
    iput-boolean p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    .line 1603
    return-void
.end method

.method protected setBitmapSize(I)V
    .registers 2
    .parameter "bitmapSize"

    .prologue
    .line 1608
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    .line 1609
    return-void
.end method

.method protected setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V
    .registers 2
    .parameter "stackTrace"

    .prologue
    .line 1596
    iput-object p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1597
    return-void
.end method
