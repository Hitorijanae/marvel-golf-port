.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# static fields
.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DEFAULT_METADATA_NUMBER:Ljava/lang/String; = "0"

.field private static final DEFAULT_METADATA_STRING:Ljava/lang/String; = "Unknown"

.field private static final EVENT_PLAYSTATUS_CHANGED:I = 0x1

.field private static final EVENT_TRACK_CHANGED:I = 0x2

.field private static final MESSAGE_PLAYSTATUS_TIMEOUT:I = 0x1

.field private static final MESSAGE_PLUGIN_TONE:I = 0x2

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PLAYSTATUS_REQUEST:Ljava/lang/String; = "com.android.music.playstatusrequest"

.field private static final PLAYSTATUS_RESPONSE:Ljava/lang/String; = "com.android.music.playstatusresponse"

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final STATUS_ERROR:I = 0xff

.field private static final STATUS_FWD_SEEK:I = 0x3

.field private static final STATUS_PAUSED:I = 0x2

.field private static final STATUS_PLAYING:I = 0x1

.field private static final STATUS_REV_SEEK:I = 0x4

.field private static final STATUS_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mDuration:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMediaCount:Ljava/lang/String;

.field private mMediaNumber:Ljava/lang/String;

.field private mPlayStatus:I

.field private mPlayStatusRequestPath:Ljava/lang/String;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPosition:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetA2dpState:I

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 346
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 74
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    .line 75
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    .line 76
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    .line 77
    const-string v0, "0"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    .line 78
    const-string v0, "0"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    .line 79
    const-string v0, "0"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    .line 80
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    .line 81
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    .line 103
    const-string v0, "/"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/server/BluetoothA2dpService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothA2dpService$2;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 349
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 351
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 352
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_5f

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_5f
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 357
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothA2dpService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_6d
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 363
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.music.playstatusresponse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 374
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 375
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 376
    :cond_c8
    const/4 v0, -0x1

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 377
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 378
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/server/BluetoothA2dpService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$1702(Landroid/server/BluetoothA2dpService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$1800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/server/BluetoothA2dpService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/server/BluetoothA2dpService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    return v0
.end method

.method static synthetic access$2102(Landroid/server/BluetoothA2dpService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    return p1
.end method

.method static synthetic access$2200(Landroid/server/BluetoothA2dpService;ZJ)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "device"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 413
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 415
    :cond_13
    monitor-exit p0

    return-void

    .line 412
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .parameter "connectedDevice"

    .prologue
    .line 828
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 829
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_a

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 831
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_a

    .line 834
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2a
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(I)Z
    .registers 6
    .parameter "state"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x2

    .line 837
    const/4 v0, 0x1

    .line 839
    .local v0, result:Z
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-eq p1, v1, :cond_15

    .line 840
    if-ne p1, v3, :cond_16

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v2, :cond_16

    .line 842
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 850
    :cond_15
    :goto_15
    return v0

    .line 843
    :cond_16
    if-ne p1, v2, :cond_24

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v3, :cond_24

    .line 845
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_15

    .line 847
    :cond_24
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .registers 3
    .parameter "value"

    .prologue
    .line 390
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    const/4 v0, 0x0

    .line 400
    :goto_9
    return v0

    .line 392
    :cond_a
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 393
    const/4 v0, 0x1

    goto :goto_9

    .line 394
    :cond_14
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 395
    const/4 v0, 0x2

    goto :goto_9

    .line 396
    :cond_1e
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 397
    const/16 v0, 0xa

    goto :goto_9

    .line 398
    :cond_2a
    const-string v0, "disconnecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 399
    const/4 v0, 0x3

    goto :goto_9

    .line 400
    :cond_34
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private convertPriority(I)Ljava/lang/String;
    .registers 3
    .parameter "priority"

    .prologue
    .line 673
    sparse-switch p1, :sswitch_data_10

    .line 681
    const-string v0, "Not Set"

    :goto_5
    return-object v0

    .line 675
    :sswitch_6
    const-string v0, "Auto Connect"

    goto :goto_5

    .line 677
    :sswitch_9
    const-string v0, "On"

    goto :goto_5

    .line 679
    :sswitch_c
    const-string v0, "Off"

    goto :goto_5

    .line 673
    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_c
        0x64 -> :sswitch_9
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method

.method private declared-synchronized convertedPlayStatus(ZJ)I
    .registers 7
    .parameter "playing"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 294
    monitor-enter p0

    if-nez p1, :cond_d

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_d

    .line 295
    const/4 v0, 0x0

    .line 300
    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    .line 296
    :cond_d
    if-nez p1, :cond_11

    .line 297
    const/4 v0, 0x2

    goto :goto_b

    .line 298
    :cond_11
    if-eq p1, v0, :cond_b

    .line 300
    const/16 v0, 0xff

    goto :goto_b
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 819
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 822
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 15
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 768
    if-eq p3, p2, :cond_ce

    .line 769
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z

    .line 772
    const/4 v5, -0x1

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 776
    if-ne p3, v9, :cond_43

    .line 779
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 781
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HTC Car A1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 782
    const-string v5, "BluetoothA2dpService"

    const-string v6, "Give mute tone for HTC Car A100/A110"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 789
    :cond_3b
    const/16 v5, 0x3e8

    invoke-virtual {p0, p1, v5}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 792
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 795
    :cond_43
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 800
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP state : device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 803
    const-string v5, "BluetoothA2dpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[embedded] A2DP state : address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " State:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1, v9, p3, p2}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 807
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ce
    if-ne p2, v10, :cond_e8

    if-ne p3, v9, :cond_e8

    .line 809
    invoke-virtual {p0}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_d8
    if-ge v1, v3, :cond_e8

    aget-object v4, v0, v1

    .line 810
    .local v4, path:Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V

    .line 811
    iget v5, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    int-to-long v5, v5

    invoke-direct {p0, v4, v10, v5, v6}, Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    .line 814
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    :cond_e8
    return-void
.end method

.method private native initNative()Z
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 465
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_29

    move-result v2

    if-nez v2, :cond_18

    .line 476
    :cond_16
    :goto_16
    monitor-exit p0

    return v1

    .line 470
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 472
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_29

    move-result-object v0

    .line 473
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 476
    const/4 v1, 0x1

    goto :goto_16

    .line 465
    .end local v0           #path:Ljava/lang/String;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 546
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_19

    move-result-object v0

    .line 547
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 557
    :goto_e
    :pswitch_e
    monitor-exit p0

    return v2

    .line 551
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    move-result v1

    .line 552
    .local v1, state:I
    packed-switch v1, :pswitch_data_1c

    .line 557
    :pswitch_17
    const/4 v2, 0x1

    goto :goto_e

    .line 546
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 552
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_17
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 334
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_2a

    .line 335
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, state:I
    if-eqz v2, :cond_2a

    .line 337
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 338
    .local v0, dockDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2a

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 339
    const/4 v3, 0x1

    .line 343
    .end local v0           #dockDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_2a
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 404
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 405
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_16

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 406
    const/4 v1, 0x1

    .line 408
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 885
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 9

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "bluetooth_enabled=false"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 440
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_55

    .line 441
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 442
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 443
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_27
    if-ge v3, v4, :cond_50

    aget-object v1, v0, v3

    .line 444
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 445
    .local v5, state:I
    sparse-switch v5, :sswitch_data_58

    .line 443
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 449
    :sswitch_35
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 451
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    goto :goto_32

    .line 439
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_47
    move-exception v6

    monitor-exit p0

    throw v6

    .line 454
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :sswitch_4a
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_4c
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_32

    .line 459
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #state:I
    :cond_50
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_47

    .line 462
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_55
    monitor-exit p0

    return-void

    .line 445
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_35
        0x2 -> :sswitch_35
        0x3 -> :sswitch_4a
        0xa -> :sswitch_35
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 13

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, devices:Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 420
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_15
    if-ge v4, v5, :cond_46

    aget-object v6, v1, v4

    .line 422
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 424
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 425
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_43

    .line 426
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 429
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 421
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 433
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_46
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 434
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 435
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 436
    monitor-exit p0

    return-void

    .line 418
    .end local v3           #devices:Ljava/lang/String;
    :catchall_59
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .registers 7
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 863
    if-nez p2, :cond_c

    .line 864
    if-eqz p1, :cond_c

    .line 865
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 872
    .end local v0           #address:Ljava/lang/String;
    :cond_c
    :goto_c
    return-void

    .line 867
    .restart local v0       #address:Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 868
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 869
    .local v2, state:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_c
.end method

.method private onGetPlayStatusRequest(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 324
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetPlayStatusRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.playstatusrequest"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    return-void
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    .line 725
    monitor-enter p0

    :try_start_4
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_22

    move-result v5

    if-nez v5, :cond_e

    .line 765
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 729
    :cond_e
    const/4 v5, 0x0

    :try_start_f
    aget-object v2, p2, v5

    .line 730
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_25

    .line 732
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    goto :goto_c

    .line 725
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_22
    move-exception v5

    monitor-exit p0

    throw v5

    .line 736
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_25
    :try_start_25
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 738
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 739
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 740
    .local v4, state:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 742
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6d

    .line 745
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 746
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_c

    .line 748
    :cond_6d
    if-ne v4, v8, :cond_84

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_84

    .line 749
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 751
    const/4 v5, 0x1

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    .line 752
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_c

    .line 753
    :cond_84
    if-ne v4, v7, :cond_99

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_99

    .line 754
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 755
    const/4 v5, 0x0

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    .line 756
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_c

    .line 759
    :cond_99
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 760
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 761
    .local v3, prevState:I
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_ab
    .catchall {:try_start_25 .. :try_end_ab} :catchall_22

    goto/16 :goto_c
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private declared-synchronized sendEvent(Ljava/lang/String;IJ)V
    .registers 8
    .parameter "path"
    .parameter "eventId"
    .parameter "data"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothA2dpService;->sendEventNative(Ljava/lang/String;IJ)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 316
    monitor-exit p0

    return-void

    .line 314
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendEventNative(Ljava/lang/String;IJ)Z
.end method

.method private declared-synchronized sendMetaData(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMetaData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta data info is trackname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMediaNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediaCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPostion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendMetaDataNative(Ljava/lang/String;)Z
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_9f

    .line 311
    monitor-exit p0

    return-void

    .line 305
    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendMetaDataNative(Ljava/lang/String;)Z
.end method

.method private declared-synchronized sendPlayStatus(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPlayStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-wide v1, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    long-to-int v1, v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/server/BluetoothA2dpService;->sendPlayStatusNative(Ljava/lang/String;III)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 321
    monitor-exit p0

    return-void

    .line 319
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendPlayStatusNative(Ljava/lang/String;III)Z
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 9
    .parameter "device"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 701
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_3e

    move-result v3

    if-nez v3, :cond_17

    .line 713
    :goto_15
    monitor-exit p0

    return v2

    .line 707
    :cond_17
    :try_start_17
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 708
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_41

    .line 709
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3e

    goto :goto_15

    .line 701
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 712
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/Integer;
    :cond_41
    :try_start_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_3e

    move-result v2

    goto :goto_15
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 488
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectSink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_5b

    move-result v4

    if-nez v4, :cond_30

    const/4 v3, 0x0

    .line 506
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v3

    .line 494
    :cond_30
    :try_start_30
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 495
    .local v1, sinkDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 496
    .local v2, state:I
    if-eqz v2, :cond_3a

    .line 497
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    if-eq v2, v3, :cond_2e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2e

    .line 502
    :cond_57
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_5b

    goto :goto_3a

    .line 488
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sinkDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_5b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 506
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5e
    :try_start_5e
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5b

    move-result v3

    goto :goto_2e
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_5a

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    .line 542
    :goto_c
    monitor-exit p0

    return v2

    .line 512
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 514
    .local v1, state:I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_5e

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v3

    .line 518
    goto :goto_c

    .line 521
    :cond_2c
    packed-switch v1, :pswitch_data_68

    .line 529
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, path:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 537
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 539
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_5a

    move v2, v3

    .line 540
    goto :goto_c

    .end local v0           #path:Ljava/lang/String;
    :pswitch_54
    move v2, v3

    .line 524
    goto :goto_c

    :pswitch_56
    move v2, v4

    .line 526
    goto :goto_c

    .restart local v0       #path:Ljava/lang/String;
    :cond_58
    move v2, v4

    .line 542
    goto :goto_c

    .line 510
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 514
    nop

    :array_5e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 521
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_56
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3a

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    .line 565
    :goto_2d
    monitor-exit p0

    return v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3a

    move-result v0

    goto :goto_2d

    .line 561
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 569
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 570
    .local v1, state:I
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, path:Ljava/lang/String;
    packed-switch v1, :pswitch_data_36

    .line 580
    :pswitch_14
    const/4 v4, 0x3

    invoke-direct {p0, p1, v1, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 581
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 583
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_32

    move v2, v3

    .line 586
    :cond_2e
    :goto_2e
    :pswitch_2e
    monitor-exit p0

    return v2

    :pswitch_30
    move v2, v3

    .line 574
    goto :goto_2e

    .line 569
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    .line 572
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_14
        :pswitch_14
        :pswitch_2e
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 876
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_51

    move-result v3

    if-eqz v3, :cond_b

    .line 882
    :cond_9
    monitor-exit p0

    return-void

    .line 877
    :cond_b
    :try_start_b
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 879
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 880
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_51

    goto :goto_1a

    .line 876
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 385
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 387
    return-void

    .line 385
    :catchall_7
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    .line 654
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 651
    .end local v0           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectedSinksPaths()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 640
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    const-string v8, "Need BLUETOOTH permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, btDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 643
    .local v5, paths:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 644
    .local v3, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 645
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_1a

    .line 647
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_36
    monitor-exit p0

    return-object v5

    .line 640
    .end local v0           #btDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v5           #paths:[Ljava/lang/String;
    :catchall_38
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .parameter "device"

    .prologue
    .line 632
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 634
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_17

    .line 635
    const/4 v1, 0x0

    .line 636
    :goto_15
    monitor-exit p0

    return v1

    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    move-result v1

    goto :goto_15

    .line 632
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 13
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v6, sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 661
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 662
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2c
    if-ge v3, v4, :cond_19

    aget v7, v0, v3

    .line 663
    .local v7, state:I
    if-ne v7, v5, :cond_39

    .line 664
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 658
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_36
    move-exception v8

    monitor-exit p0

    throw v8

    .line 662
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 669
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v7           #state:I
    :cond_3c
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 686
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 686
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 480
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_34

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 484
    :goto_30
    monitor-exit p0

    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_30

    .line 480
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 611
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 614
    if-eqz p1, :cond_34

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_65

    if-nez v3, :cond_36

    .line 628
    :cond_34
    :goto_34
    monitor-exit p0

    return v2

    .line 617
    :cond_36
    :try_start_36
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 619
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 623
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 624
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 627
    :cond_58
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 628
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_63
    .catchall {:try_start_36 .. :try_end_63} :catchall_65

    move-result v2

    goto :goto_34

    .line 611
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_65
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->convertPriority(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    move-result v0

    monitor-exit p0

    return v0

    .line 693
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 590
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suspendSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 593
    if-eqz p1, :cond_34

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_64

    if-nez v3, :cond_36

    .line 607
    :cond_34
    :goto_34
    monitor-exit p0

    return v2

    .line 596
    :cond_36
    :try_start_36
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 598
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 602
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 603
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 606
    :cond_58
    const/4 v2, 0x2

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 607
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_64

    move-result v2

    goto :goto_34

    .line 590
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_64
    move-exception v2

    monitor-exit p0

    throw v2
.end method
