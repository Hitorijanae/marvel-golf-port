.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "lockType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1607
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    .line 1609
    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    .line 1610
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 1611
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    .line 1612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 1613
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1614
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1598
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 7

    .prologue
    .line 1628
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1629
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v0, :cond_45

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_51

    if-lez v0, :cond_43

    .line 1631
    :goto_f
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    .line 1632
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_3f

    .line 1633
    :try_start_21
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_4a

    .line 1634
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 1640
    :catch_3f
    move-exception v0

    .line 1642
    :goto_40
    const/4 v0, 0x1

    :try_start_41
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1644
    :cond_43
    monitor-exit v1

    .line 1645
    return-void

    .line 1629
    :cond_45
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_51

    if-nez v0, :cond_43

    goto :goto_f

    .line 1638
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$008(Landroid/net/wifi/WifiManager;)I

    .line 1639
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_3c

    goto :goto_40

    .line 1644
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1746
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1747
    :try_start_6
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-eqz v0, :cond_1c

    .line 1749
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1750
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_21

    .line 1751
    :try_start_16
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$010(Landroid/net/wifi/WifiManager;)I

    .line 1752
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1e

    .line 1756
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_23

    .line 1757
    return-void

    .line 1752
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1753
    :catch_21
    move-exception v0

    goto :goto_1c

    .line 1756
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1698
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1699
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1700
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 1660
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1661
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_43

    if-nez v0, :cond_24

    .line 1663
    :goto_f
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1664
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_4e

    .line 1665
    :try_start_1b
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$010(Landroid/net/wifi/WifiManager;)I

    .line 1666
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_4b

    .line 1669
    :goto_21
    const/4 v0, 0x0

    :try_start_22
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1671
    :cond_24
    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-gez v0, :cond_50

    .line 1672
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw v0

    .line 1661
    :cond_46
    :try_start_46
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_43

    if-eqz v0, :cond_24

    goto :goto_f

    .line 1666
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1667
    :catch_4e
    move-exception v0

    goto :goto_21

    .line 1674
    :cond_50
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_43

    .line 1675
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1689
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 1690
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 7
    .parameter "ws"

    .prologue
    .line 1704
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    .line 1705
    if-eqz p1, :cond_c

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 1706
    const/4 p1, 0x0

    .line 1708
    :cond_c
    const/4 v0, 0x1

    .line 1709
    .local v0, changed:Z
    if-nez p1, :cond_25

    .line 1710
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1720
    :cond_12
    :goto_12
    if-eqz v0, :cond_23

    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_36

    if-eqz v1, :cond_23

    .line 1722
    :try_start_18
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_49

    .line 1726
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v2

    .line 1727
    return-void

    .line 1711
    :cond_25
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_3b

    .line 1712
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_39

    const/4 v0, 0x1

    .line 1713
    :goto_2e
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_12

    .line 1726
    .end local v0           #changed:Z
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_36

    throw v1

    .line 1712
    .restart local v0       #changed:Z
    :cond_39
    const/4 v0, 0x0

    goto :goto_2e

    .line 1715
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 1716
    if-eqz v0, :cond_12

    .line 1717
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_36

    goto :goto_12

    .line 1723
    :catch_49
    move-exception v1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1731
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 1732
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v3, :cond_55

    const-string/jumbo v1, "held; "

    .line 1734
    .local v1, s2:Ljava/lang/String;
    :goto_12
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v3, :cond_58

    .line 1735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1739
    .local v2, s3:Ljava/lang/String;
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 1733
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_55
    const-string v1, ""

    goto :goto_12

    .line 1737
    .restart local v1       #s2:Ljava/lang/String;
    :cond_58
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2c

    .line 1740
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v3
.end method
