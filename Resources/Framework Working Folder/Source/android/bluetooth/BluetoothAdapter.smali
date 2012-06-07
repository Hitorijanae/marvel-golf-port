.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final BT_FTP_ENABLE:Ljava/lang/String; = "bt_ftp_enable"

.field public static final BT_MAP_ENABLE:Ljava/lang/String; = "bt_map_enable"

.field private static final DBG:Z = false

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final HOST_PATCH_AVOID_AUTO_CONNECT:I = 0x3

.field public static final HOST_PATCH_AVOID_CONNECT_ON_PAIR:I = 0x2

.field public static final HOST_PATCH_DONT_REMOVE_SERVICE:I = 0x1

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private final mService:Landroid/bluetooth/IBluetooth;

.field private mServiceRecordHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 404
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    if-nez p1, :cond_e

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_e
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    .line 410
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 1573
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_c

    .line 1593
    :cond_b
    :goto_b
    return v2

    .line 1576
    :cond_c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v4, :cond_31

    .line 1577
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1578
    .local v0, c:C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_34

    .line 1576
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1581
    :pswitch_1b
    const/16 v3, 0x30

    if-lt v0, v3, :cond_23

    const/16 v3, 0x39

    if-le v0, v3, :cond_18

    :cond_23
    const/16 v3, 0x41

    if-lt v0, v3, :cond_b

    const/16 v3, 0x46

    if-gt v0, v3, :cond_b

    goto :goto_18

    .line 1587
    :pswitch_2c
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_b

    goto :goto_18

    .line 1593
    .end local v0           #c:C
    :cond_31
    const/4 v2, 0x1

    goto :goto_b

    .line 1578
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_2c
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 15
    .parameter "name"
    .parameter "uuid"
    .parameter "auth"
    .parameter "encrypt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 1148
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;

    invoke-direct {v4, p2}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;-><init>(Ljava/util/UUID;)V

    .line 1154
    .local v4, picker:Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    :goto_6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;->nextChannel()I

    move-result v0

    .line 1156
    .local v0, channel:I
    if-ne v0, v9, :cond_14

    .line 1157
    new-instance v6, Ljava/io/IOException;

    const-string v7, "No available channels"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1160
    :cond_14
    new-instance v5, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p3, p4, v0}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1162
    .local v5, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v2

    .line 1163
    .local v2, errno:I
    if-nez v2, :cond_51

    .line 1180
    const/4 v3, -0x1

    .line 1182
    .local v3, handle:I
    :try_start_23
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-interface {v6, p1, v7, v0, v8}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_64

    move-result v3

    .line 1185
    :goto_33
    if-ne v3, v9, :cond_6d

    .line 1187
    :try_start_35
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_84

    .line 1189
    :goto_38
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to register SDP record for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1166
    .end local v3           #handle:I
    :cond_51
    const/16 v6, 0x62

    if-ne v2, v6, :cond_5b

    .line 1169
    :try_start_55
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_6

    .line 1170
    :catch_59
    move-exception v6

    goto :goto_6

    .line 1174
    :cond_5b
    :try_start_5b
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_82

    .line 1176
    :goto_5e
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    goto :goto_6

    .line 1184
    .restart local v3       #handle:I
    :catch_64
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothAdapter"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1192
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6d
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    if-nez v6, :cond_7c

    .line 1193
    new-instance v6, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    .line 1205
    :cond_7c
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1206
    return-object v5

    .line 1175
    .end local v3           #handle:I
    :catch_82
    move-exception v6

    goto :goto_5e

    .line 1188
    .restart local v3       #handle:I
    :catch_84
    move-exception v6

    goto :goto_38
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 4

    .prologue
    .line 390
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1a

    .line 391
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 392
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 393
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 394
    .local v1, service:Landroid/bluetooth/IBluetooth;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetooth;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 397
    .end local v1           #service:Landroid/bluetooth/IBluetooth;
    :cond_1a
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v3

    return-object v2

    .line 390
    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1310
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1312
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1313
    .local v0, errno:I
    if-eqz v0, :cond_18

    .line 1315
    :try_start_10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_19

    .line 1317
    :goto_13
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1319
    :cond_18
    return-object v1

    .line 1316
    :catch_19
    move-exception v2

    goto :goto_13
.end method

.method private toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1497
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 1498
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1500
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancelDiscovery()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 820
    :goto_9
    return v1

    .line 818
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 819
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .registers 8
    .parameter "on"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 1460
    if-nez p2, :cond_4

    .line 1468
    :goto_3
    return v1

    .line 1463
    :cond_4
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;

    invoke-direct {v3, p0, p2}, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, p1, v3, v4}, Landroid/bluetooth/IBluetooth;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    move-result v1

    goto :goto_3

    .line 1465
    :catch_15
    move-exception v0

    .line 1466
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "changeBluetoothState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 8
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1403
    if-nez p2, :cond_3

    .line 1427
    :goto_2
    return-void

    .line 1405
    :cond_3
    packed-switch p1, :pswitch_data_2a

    goto :goto_2

    :pswitch_7
    move-object v1, p2

    .line 1407
    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    .line 1408
    .local v1, headset:Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_2

    .end local v1           #headset:Landroid/bluetooth/BluetoothHeadset;
    :pswitch_e
    move-object v0, p2

    .line 1411
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 1412
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_2

    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :pswitch_15
    move-object v3, p2

    .line 1415
    check-cast v3, Landroid/bluetooth/BluetoothInputDevice;

    .line 1416
    .local v3, iDev:Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_2

    .end local v3           #iDev:Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_1c
    move-object v4, p2

    .line 1419
    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 1420
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_2

    .end local v4           #pan:Landroid/bluetooth/BluetoothPan;
    :pswitch_23
    move-object v2, p2

    .line 1423
    check-cast v2, Landroid/bluetooth/BluetoothHealth;

    .line 1424
    .local v2, health:Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_2

    .line 1405
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_23
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method

.method public disable()Z
    .registers 4

    .prologue
    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 578
    :goto_7
    return v1

    .line 577
    :catch_8
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public disableDUN()Z
    .registers 4

    .prologue
    .line 1543
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disableDUN()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1545
    :goto_6
    return v1

    .line 1544
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableFTP()Z
    .registers 4

    .prologue
    .line 1512
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disableFTP()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1514
    :goto_6
    return v1

    .line 1513
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableFromPowerSaver()Z
    .registers 4

    .prologue
    .line 1614
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disableFromPowerSaver()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1616
    :goto_6
    return v1

    .line 1615
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1616
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableMAP()Z
    .registers 4

    .prologue
    .line 1526
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disableMAP()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1528
    :goto_6
    return v1

    .line 1527
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enable()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    .line 521
    :try_start_2
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 522
    .local v6, sm:Ljava/lang/Class;
    const-string v8, "getService"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "DeviceManager3LM"

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 525
    .local v2, dmBinder:Ljava/lang/Object;
    const-string v8, "android.os.IDeviceManager3LM$Stub"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 526
    .local v5, lmstub:Ljava/lang/Class;
    const-string v8, "asInterface"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v10, v11

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 527
    .local v0, asInterface:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    check-cast v2, Landroid/os/IBinder;

    .end local v2           #dmBinder:Ljava/lang/Object;
    aput-object v2, v10, v11

    invoke-virtual {v0, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 530
    .local v7, svc:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 532
    .local v1, dm:Ljava/lang/Class;
    const-string v8, "getBluetoothEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 535
    .local v4, getBluetoothEnabled:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_70

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v14, :cond_70

    .line 536
    const-string v8, "BluetoothAdapter"

    const-string v10, "enable(): 3LM getBluetoothEnabled = true"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v8

    .line 547
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #dm:Ljava/lang/Class;
    .end local v4           #getBluetoothEnabled:Ljava/lang/reflect/Method;
    .end local v5           #lmstub:Ljava/lang/Class;
    .end local v6           #sm:Ljava/lang/Class;
    .end local v7           #svc:Ljava/lang/Object;
    :goto_6f
    return v8

    .line 539
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #dm:Ljava/lang/Class;
    .restart local v4       #getBluetoothEnabled:Ljava/lang/reflect/Method;
    .restart local v5       #lmstub:Ljava/lang/Class;
    .restart local v6       #sm:Ljava/lang/Class;
    .restart local v7       #svc:Ljava/lang/Object;
    :cond_70
    const-string v8, "BluetoothAdapter"

    const-string v10, "enable(): 3LM getBluetoothEnabled = false"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_77} :catch_79
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_77} :catch_9d

    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #dm:Ljava/lang/Class;
    .end local v4           #getBluetoothEnabled:Ljava/lang/reflect/Method;
    .end local v5           #lmstub:Ljava/lang/Class;
    .end local v6           #sm:Ljava/lang/Class;
    .end local v7           #svc:Ljava/lang/Object;
    :goto_77
    move v8, v9

    .line 547
    goto :goto_6f

    .line 541
    :catch_79
    move-exception v3

    .line 542
    .local v3, e:Ljava/lang/Exception;
    :try_start_7a
    const-string v8, "BluetoothAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Didn\'t have 3LM Service feature : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_9b} :catch_9d

    move-result v8

    goto :goto_6f

    .line 546
    .end local v3           #e:Ljava/lang/Exception;
    :catch_9d
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "BluetoothAdapter"

    const-string v10, ""

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77
.end method

.method public enableDUN()Z
    .registers 4

    .prologue
    .line 1535
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enableDUN()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1537
    :goto_6
    return v1

    .line 1536
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableFTP()Z
    .registers 4

    .prologue
    .line 1505
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enableFTP()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1507
    :goto_6
    return v1

    .line 1506
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1507
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableMAP()Z
    .registers 4

    .prologue
    .line 1519
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enableMAP()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1521
    :goto_6
    return v1

    .line 1520
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1521
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableSspDebugMode(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 1655
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    const-string v1, "<UNKNOWN>"

    .line 593
    :goto_a
    return-object v1

    .line 591
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    goto :goto_a

    .line 592
    :catch_12
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getBondedDevices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_10

    .line 863
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 868
    :goto_f
    return-object v1

    .line 866
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listBonds()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_f

    .line 867
    :catch_1b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getCOD()Ljava/lang/String;
    .registers 4

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getCOD()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 638
    :goto_6
    return-object v1

    .line 637
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getChipset()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1664
    const-string/jumbo v0, "ro.bt.chipset"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 889
    :goto_9
    return v1

    .line 887
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 888
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getDiscoverableTimeout()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 745
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 749
    :goto_9
    return v1

    .line 747
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 748
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_12

    const-string/jumbo v1, "ro.product.model"

    const-string v2, "<UNKNOWN>"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_11
    return-object v1

    .line 606
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_11

    .line 607
    :catch_19
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getProfileConnectionState(I)I
    .registers 6
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 908
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 914
    :goto_9
    return v1

    .line 910
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 911
    :catch_11
    move-exception v0

    .line 912
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getProfileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1700
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .registers 12
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1369
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v5, v6

    .line 1387
    :goto_7
    return v5

    .line 1371
    :cond_8
    if-ne p3, v5, :cond_10

    .line 1372
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1373
    .local v1, headset:Landroid/bluetooth/BluetoothHeadset;
    goto :goto_7

    .line 1374
    .end local v1           #headset:Landroid/bluetooth/BluetoothHeadset;
    :cond_10
    const/4 v7, 0x2

    if-ne p3, v7, :cond_19

    .line 1375
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1376
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    goto :goto_7

    .line 1377
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_19
    const/4 v7, 0x4

    if-ne p3, v7, :cond_22

    .line 1378
    new-instance v3, Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1379
    .local v3, iDev:Landroid/bluetooth/BluetoothInputDevice;
    goto :goto_7

    .line 1380
    .end local v3           #iDev:Landroid/bluetooth/BluetoothInputDevice;
    :cond_22
    const/4 v7, 0x5

    if-ne p3, v7, :cond_2b

    .line 1381
    new-instance v4, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1382
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    goto :goto_7

    .line 1383
    .end local v4           #pan:Landroid/bluetooth/BluetoothPan;
    :cond_2b
    const/4 v7, 0x3

    if-ne p3, v7, :cond_34

    .line 1384
    new-instance v2, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1385
    .local v2, health:Landroid/bluetooth/BluetoothHealth;
    goto :goto_7

    .end local v2           #health:Landroid/bluetooth/BluetoothHealth;
    :cond_34
    move v5, v6

    .line 1387
    goto :goto_7
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .parameter "address"

    .prologue
    .line 425
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .registers 5

    .prologue
    const/16 v1, 0x14

    .line 694
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_b

    .line 698
    :goto_a
    return v1

    .line 696
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    goto :goto_a

    .line 697
    :catch_12
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public getStackName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1682
    const-string/jumbo v0, "ro.bt.stack"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1691
    const-string/jumbo v0, "ro.bt.stack.version"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 4

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 484
    :goto_6
    return v1

    .line 483
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/16 v1, 0xa

    goto :goto_6
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 624
    :goto_9
    return-object v1

    .line 622
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_9

    .line 623
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1673
    const-string/jumbo v0, "ro.bt.version"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioGatewaySupported()Z
    .registers 2

    .prologue
    .line 1603
    const/4 v0, 0x1

    return v0
.end method

.method public isDiscovering()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 843
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 847
    :goto_9
    return v1

    .line 845
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 846
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isDunEnabled()Z
    .registers 4

    .prologue
    .line 1559
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isDunEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1561
    :goto_6
    return v1

    .line 1560
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDunSupported()Z
    .registers 4

    .prologue
    .line 1551
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isDunSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1553
    :goto_6
    return v1

    .line 1552
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 440
    :goto_6
    return v1

    .line 439
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isHostPatchRequired(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "btDevice"
    .parameter "patch_id"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->isHostPatchRequired(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 378
    :goto_6
    return v1

    .line 377
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isServiceRegistered(Landroid/os/ParcelUuid;)Z
    .registers 5
    .parameter "uuid"

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->isServiceRegistered(Landroid/os/ParcelUuid;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 452
    :goto_6
    return v1

    .line 451
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public listBondedDevices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1627
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listBondsExt()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1629
    :goto_a
    return-object v1

    .line 1628
    :catch_b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1629
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public listenUsingEl2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "psm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1035
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1037
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1038
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1040
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1045
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1047
    :cond_17
    return-object v1

    .line 1041
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1241
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1243
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1244
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1246
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1248
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1250
    :cond_17
    return-object v1

    .line 1247
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureEl2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "psm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1285
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1287
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1288
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1290
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1295
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1297
    :cond_17
    return-object v1

    .line 1291
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "psm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1263
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1265
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1266
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1268
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1270
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1272
    :cond_17
    return-object v1

    .line 1269
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1219
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1221
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1222
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1224
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1226
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1228
    :cond_17
    return-object v1

    .line 1225
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 6
    .parameter "psm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1009
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1011
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1012
    .local v0, errno:I
    if-eqz v0, :cond_17

    .line 1014
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_18

    .line 1016
    :goto_12
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1018
    :cond_17
    return-object v1

    .line 1015
    :catch_18
    move-exception v2

    goto :goto_12
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 982
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v2, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 984
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 985
    .local v0, errno:I
    if-eqz v0, :cond_16

    .line 987
    :try_start_e
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_17

    .line 989
    :goto_11
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 991
    :cond_16
    return-object v1

    .line 988
    :catch_17
    move-exception v2

    goto :goto_11
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1074
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    .line 1331
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_c

    .line 1350
    :cond_b
    :goto_b
    return-object v4

    .line 1336
    :cond_c
    :try_start_c
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->readOutOfBandData()[B

    move-result-object v3

    .line 1338
    .local v3, ret:[B
    if-eqz v3, :cond_b

    array-length v5, v3

    if-ne v5, v7, :cond_b

    .line 1340
    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1341
    .local v1, hash:[B
    const/16 v5, 0x10

    const/16 v6, 0x20

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1347
    .local v2, randomizer:[B
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_2d

    move-object v4, v5

    goto :goto_b

    .line 1349
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #ret:[B
    :catch_2d
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothAdapter"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public registerService(Landroid/os/ParcelUuid;Z)Z
    .registers 6
    .parameter "uuid"
    .parameter "enable"

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->registerService(Landroid/os/ParcelUuid;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 466
    :goto_6
    return v1

    .line 465
    :catch_7
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAFH(ZBB)Z
    .registers 5
    .parameter "enable"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public setDiscoverableTimeout(I)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 754
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    .line 758
    :goto_8
    return-void

    .line 756
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_8

    .line 757
    :catch_f
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 6
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 661
    :goto_9
    return v1

    .line 659
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 660
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setScanMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 739
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    .line 740
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x78

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_9
.end method

.method public setScanMode(II)Z
    .registers 7
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 734
    :goto_9
    return v1

    .line 732
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 733
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setUseWifi(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setUseWifiForBtTransfers(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 675
    :goto_5
    return-void

    .line 674
    :catch_6
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public startDiscovery()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 795
    :goto_9
    return v1

    .line 793
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    goto :goto_9

    .line 794
    :catch_11
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
