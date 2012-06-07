.class Landroid/server/BluetoothService$ConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    }
.end annotation


# instance fields
.field private mA2dpAudioActive:Z

.field private mBtPolicyHandle:I

.field private mBtPolicyHandlesAvailable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioActive:Z

.field private mUseWifiForBtTransfers:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothService;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1277
    iput-object p1, p0, Landroid/server/BluetoothService$ConnectionManager;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    .line 1279
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 1280
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 1281
    iput-boolean v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 1283
    iput v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    .line 1284
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    .line 1286
    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothService;Landroid/server/BluetoothService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;-><init>(Landroid/server/BluetoothService;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothService$ConnectionManager;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1277
    iget-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothService$ConnectionManager;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothService$ConnectionManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1277
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method static synthetic access$704(Landroid/server/BluetoothService$ConnectionManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1277
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method private updateConnectionAmpPolicies()Z
    .registers 8

    .prologue
    .line 1408
    const/4 v3, 0x1

    .line 1409
    .local v3, result:Z
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1410
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1411
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1412
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I

    invoke-virtual {p0, v5}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 1413
    .local v0, allowedPolicy:I
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    if-eq v0, v5, :cond_7

    .line 1415
    :try_start_1d
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 1416
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_7

    .line 1417
    :catch_25
    move-exception v1

    .line 1418
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    const/4 v3, 0x0

    goto :goto_7

    .line 1423
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_2f
    return v3
.end method

.method private validateAmpPolicy(I)I
    .registers 3
    .parameter "policy"

    .prologue
    .line 1323
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 1327
    .end local p1
    :cond_6
    :goto_6
    return p1

    .restart local p1
    :cond_7
    const/4 p1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public declared-synchronized deregisterEl2capConnection(I)V
    .registers 5
    .parameter "handle"

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1345
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1346
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1347
    .local v1, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v2, v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v2, p1, :cond_7

    .line 1348
    invoke-virtual {v1, p1}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->removeHandle(I)Z

    .line 1349
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 1353
    .end local v1           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1f
    monitor-exit p0

    return-void

    .line 1344
    .end local v0           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getEffectiveAmpPolicy(I)I
    .registers 3
    .parameter "policy"

    .prologue
    .line 1331
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    if-nez v0, :cond_10

    .line 1332
    :cond_d
    const/4 v0, 0x0

    .line 1334
    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    move-result v0

    goto :goto_e

    .line 1331
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I
    .registers 5
    .parameter "callback"
    .parameter "initialPolicy"

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;-><init>(Landroid/server/BluetoothService$ConnectionManager;Landroid/bluetooth/IBluetoothCallback;I)V

    .line 1339
    .local v0, bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget-object v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {v0}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->getHandle()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v1

    monitor-exit p0

    return v1

    .line 1338
    .end local v0           #bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setA2dpAudioActive(Z)V
    .registers 5
    .parameter "active"

    .prologue
    .line 1389
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setA2dpAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-eq v0, p1, :cond_23

    .line 1392
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 1393
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1395
    :cond_23
    monitor-exit p0

    return-void

    .line 1389
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDesiredAmpPolicy(II)Z
    .registers 10
    .parameter "handle"
    .parameter "policy"

    .prologue
    .line 1356
    monitor-enter p0

    const/4 v3, 0x1

    .line 1357
    .local v3, result:Z
    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1358
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    invoke-direct {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result p2

    .line 1359
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 1360
    .local v0, allowedPolicy:I
    :cond_10
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1361
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1362
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v5, p1, :cond_10

    .line 1363
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_39

    if-eq v5, v0, :cond_2d

    .line 1365
    :try_start_24
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 1366
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    .line 1367
    iput p2, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2f

    .line 1376
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v3

    .line 1368
    .restart local v4       #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catch_2f
    move-exception v1

    .line 1369
    .local v1, e:Landroid/os/RemoteException;
    :try_start_30
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 1370
    const/4 v3, 0x0

    .line 1371
    goto :goto_2d

    .line 1356
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setScoAudioActive(Z)V
    .registers 5
    .parameter "active"

    .prologue
    .line 1380
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScoAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-eq v0, p1, :cond_23

    .line 1383
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 1384
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1386
    :cond_23
    monitor-exit p0

    return-void

    .line 1380
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseWifiForBtTransfers(Z)V
    .registers 5
    .parameter "useWifi"

    .prologue
    .line 1398
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseWifiForBtTransfers(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    if-eq v0, p1, :cond_23

    .line 1401
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 1402
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1404
    :cond_23
    monitor-exit p0

    return-void

    .line 1398
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
