.class Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmpPolicyHelper"
.end annotation


# instance fields
.field private mHandle:I

.field private final service:Landroid/bluetooth/IBluetooth;

.field final synthetic this$0:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;I)V
    .registers 6
    .parameter
    .parameter "initialPolicy"

    .prologue
    .line 508
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    .line 506
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    .line 509
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    .line 512
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p2}, Landroid/bluetooth/IBluetooth;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    .line 516
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetooth;->getEffectiveAmpPolicy(I)I

    move-result v1

    #calls: Landroid/bluetooth/BluetoothSocket;->setAmpPolicyNative(I)V
    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothSocket;->access$100(Landroid/bluetooth/BluetoothSocket;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_29

    .line 522
    :goto_1f
    return-void

    .line 517
    :catch_20
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 519
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_29
    move-exception v0

    .line 520
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 504
    iget v0, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    return v0
.end method


# virtual methods
.method public declared-synchronized deregister()V
    .registers 4

    .prologue
    .line 526
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->deregisterEl2capConnection(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    .line 528
    :goto_8
    monitor-exit p0

    return-void

    .line 527
    :catch_a
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_8

    .line 526
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAmpPolicyChange(I)V
    .registers 5
    .parameter "newPolicy"

    .prologue
    .line 533
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->this$0:Landroid/bluetooth/BluetoothSocket;

    #calls: Landroid/bluetooth/BluetoothSocket;->setAmpPolicyNative(I)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothSocket;->access$100(Landroid/bluetooth/BluetoothSocket;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    .line 537
    :goto_6
    monitor-exit p0

    return-void

    .line 534
    :catch_8
    move-exception v0

    .line 535
    .local v0, e:Ljava/io/IOException;
    :try_start_9
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 533
    .end local v0           #e:Ljava/io/IOException;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRfcommChannelFound(I)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 541
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
