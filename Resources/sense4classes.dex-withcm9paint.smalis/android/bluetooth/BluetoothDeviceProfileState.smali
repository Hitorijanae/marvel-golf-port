.class public final Landroid/bluetooth/BluetoothDeviceProfileState;
.super Lcom/android/internal/util/StateMachine;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;,
        Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;,
        Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;,
        Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;,
        Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;,
        Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;,
        Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;,
        Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTO_CONNECT_PROFILES:I = 0x65

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONNECTION_ACCESS_REQUEST_EXPIRY:I = 0x69

.field private static final CONNECTION_ACCESS_REQUEST_EXPIRY_TIMEOUT:I = 0x1b58

.field private static final CONNECTION_ACCESS_REQUEST_REPLY:I = 0x68

.field private static final CONNECTION_ACCESS_UNDEFINED:I = -0x1

.field public static final CONNECT_A2DP_INCOMING:I = 0x4

.field public static final CONNECT_A2DP_OUTGOING:I = 0x3

.field public static final CONNECT_HFP_INCOMING:I = 0x2

.field public static final CONNECT_HFP_OUTGOING:I = 0x1

.field public static final CONNECT_HID_INCOMING:I = 0x6

.field public static final CONNECT_HID_OUTGOING:I = 0x5

.field public static final CONNECT_OTHER_PROFILES:I = 0x67

.field public static final CONNECT_OTHER_PROFILES_DELAY:I = 0xfa0

.field private static final DBG:Z = false

.field public static final DISCONNECT_A2DP_INCOMING:I = 0x35

.field public static final DISCONNECT_A2DP_OUTGOING:I = 0x34

.field private static final DISCONNECT_HFP_INCOMING:I = 0x33

.field public static final DISCONNECT_HFP_OUTGOING:I = 0x32

.field public static final DISCONNECT_HID_INCOMING:I = 0x37

.field public static final DISCONNECT_HID_OUTGOING:I = 0x36

.field public static final DISCONNECT_PBAP_OUTGOING:I = 0x38

.field private static final INIT_INCOMING_REJECT_TIMER:J = 0x3e8L

.field private static final MAX_INCOMING_REJECT_TIMER:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceProfileState"

.field public static final TRANSITION_TO_STABLE:I = 0x66

.field public static final UNPAIR:I = 0x64

.field private static final UNPAIR_COMPLETE:I = 0x6a

.field private static final UNPAIR_COMPLETE_DELAY:I = 0x7d0


# instance fields
.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mA2dpState:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAutoConnectionPending:Z

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionAccessReplyReceived:Z

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mExpectingSdpComplete:Z

.field private mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

.field private mHeadsetState:I

.field private mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

.field private mIncomingConnections:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

.field private mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

.field private mIncomingRejectTimer:J

.field private mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

.field private mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

.field private mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

.field private mPairingRequestRcvd:Z

.field private mPbap:Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

.field private mPbapService:Landroid/bluetooth/BluetoothPbap;

.field private mPbapServiceConnected:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mService:Landroid/server/BluetoothService;

.field private mUnpairStarted:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V
    .registers 12
    .parameter "context"
    .parameter "address"
    .parameter "service"
    .parameter "a2dpService"
    .parameter "setTrust"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BDP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    .line 104
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 105
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    .line 106
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    .line 107
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    .line 108
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    .line 109
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    .line 123
    iput v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    .line 124
    iput v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I

    .line 126
    iput-boolean v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    .line 130
    iput-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z

    .line 131
    iput-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z

    .line 133
    iput-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z

    .line 135
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$1;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$2;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 247
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    .line 248
    new-instance v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, p2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 249
    iput-object p3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    .line 250
    iput-object p4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 252
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 253
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 254
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 255
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 257
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 258
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/State;)V

    .line 259
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->setInitialState(Lcom/android/internal/util/State;)V

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 276
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 279
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbap:Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

    .line 281
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p2}, Landroid/server/BluetoothService;->getIncomingState(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 282
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readTimerValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 283
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    .line 284
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x30000006

    const-string v3, "BluetoothDeviceProfileState"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 289
    if-eqz p5, :cond_11a

    .line 290
    invoke-direct {p0, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V

    .line 292
    :cond_11a
    return-void
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$10000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$10100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/bluetooth/BluetoothDeviceProfileState;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z

    return p1
.end method

.method static synthetic access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$2102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V

    return-void
.end method

.method static synthetic access$7100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V

    return-void
.end method

.method static synthetic access$8000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I

    return v0
.end method

.method static synthetic access$9000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$902(Landroid/bluetooth/BluetoothDeviceProfileState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I

    return p1
.end method

.method static synthetic access$9100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getStringValue(J)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .local v0, sbr:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTrust()I
    .registers 3

    .prologue
    .line 1201
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1203
    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method private handleConnectionOfOtherProfiles(I)V
    .registers 13
    .parameter "command"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide/16 v6, 0xfa0

    const/16 v5, 0x67

    .line 1418
    packed-switch p1, :pswitch_data_a8

    .line 1474
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 1422
    :pswitch_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_23

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_43

    .line 1425
    :cond_23
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    new-array v4, v9, [I

    fill-array-data v4, :array_b2

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    .line 1429
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1432
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1433
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1434
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 1435
    invoke-virtual {p0, v1, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_a

    .line 1436
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_43
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z

    if-eqz v3, :cond_a

    .line 1437
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1438
    .restart local v1       #msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1439
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 1440
    invoke-virtual {p0, v1, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_a

    .line 1447
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_54
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_91

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_70

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_91

    .line 1451
    :cond_70
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v9, [I

    fill-array-data v4, :array_ba

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 1455
    .local v0, headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1458
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1459
    .restart local v1       #msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1460
    iput v8, v1, Landroid/os/Message;->arg1:I

    .line 1461
    invoke-virtual {p0, v1, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_a

    .line 1462
    .end local v0           #headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1           #msg:Landroid/os/Message;
    :cond_91
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z

    if-eqz v3, :cond_a

    .line 1464
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1465
    .restart local v1       #msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1466
    iput v8, v1, Landroid/os/Message;->arg1:I

    .line 1467
    invoke-virtual {p0, v1, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_a

    .line 1418
    nop

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_54
    .end packed-switch

    .line 1425
    :array_b2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 1451
    :array_ba
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private handleIncomingConnection(IZ)Z
    .registers 12
    .parameter "command"
    .parameter "accept"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x66

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, ret:Z
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingConnection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    packed-switch p1, :pswitch_data_b6

    .line 1173
    :pswitch_2c
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for incoming connection but state changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_44
    :goto_44
    return v0

    .line 1138
    :pswitch_45
    if-nez p2, :cond_56

    .line 1139
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1140
    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 1141
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->updateIncomingAllowedTimer()V

    goto :goto_44

    .line 1142
    :cond_56
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    if-ne v1, v6, :cond_66

    .line 1143
    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1144
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_44

    .line 1145
    :cond_66
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    if-nez v1, :cond_44

    .line 1146
    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1147
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleConnectionOfOtherProfiles(I)V

    .line 1148
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_44

    .line 1152
    :pswitch_79
    if-nez p2, :cond_8a

    .line 1153
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v8}, Landroid/server/BluetoothA2dpService;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 1154
    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 1155
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->updateIncomingAllowedTimer()V

    goto :goto_44

    .line 1157
    :cond_8a
    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1158
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v6}, Landroid/server/BluetoothA2dpService;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 1159
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleConnectionOfOtherProfiles(I)V

    goto :goto_44

    .line 1163
    :pswitch_99
    if-nez p2, :cond_aa

    .line 1164
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v8}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 1165
    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 1166
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->updateIncomingAllowedTimer()V

    goto :goto_44

    .line 1168
    :cond_aa
    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1169
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v6}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 1171
    goto :goto_44

    .line 1136
    :pswitch_data_b6
    .packed-switch 0x2
        :pswitch_45
        :pswitch_2c
        :pswitch_79
        :pswitch_2c
        :pswitch_99
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "autoConnectDevice"

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 232
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_2a

    .line 233
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .local v2, state:I
    if-eqz v2, :cond_2a

    .line 235
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2a

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 237
    const/4 v3, 0x1

    .line 241
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_2a
    return v3
.end method

.method private log(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1484
    return-void
.end method

.method private processIncomingConnectCommand(I)V
    .registers 6
    .parameter "command"

    .prologue
    const/4 v2, 0x1

    .line 1378
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getTrust()I

    move-result v0

    .line 1379
    .local v0, access:I
    if-ne v0, v2, :cond_b

    .line 1380
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    .line 1390
    :goto_a
    return-void

    .line 1381
    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readIncomingAllowedValue()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1383
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    goto :goto_a

    .line 1385
    :cond_19
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessIntent()V

    .line 1386
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1387
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0x1b58

    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_a
.end method

.method private readIncomingAllowedValue()Z
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1250
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readTimerValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 1260
    :cond_c
    :goto_c
    return v6

    .line 1251
    :cond_d
    iget-object v8, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1252
    .local v5, value:Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, splits:[Ljava/lang/String;
    if-eqz v0, :cond_35

    array-length v8, v0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_35

    .line 1254
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1255
    .local v1, val1:J
    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1256
    .local v3, val2:J
    add-long v8, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .end local v1           #val1:J
    .end local v3           #val2:J
    :cond_35
    move v6, v7

    .line 1260
    goto :goto_c
.end method

.method private readTimerValue()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 1239
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v4, :cond_7

    .line 1246
    :cond_6
    :goto_6
    return-wide v2

    .line 1241
    :cond_7
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1242
    .local v1, value:Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, splits:[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1244
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_6
.end method

.method private sendConnectionAccessIntent()V
    .registers 4

    .prologue
    .line 1180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    .line 1182
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1184
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1189
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method private sendConnectionAccessRemovalIntent()V
    .registers 4

    .prologue
    .line 1193
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1195
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1197
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method private setTrust(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1217
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v1, :cond_23

    .line 1218
    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getStringValue(J)Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, second:Ljava/lang/String;
    :goto_a
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 1224
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothService;->writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V

    .line 1225
    return-void

    .line 1220
    .end local v0           #second:Ljava/lang/String;
    :cond_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #second:Ljava/lang/String;
    goto :goto_a
.end method

.method private updateIncomingAllowedTimer()V
    .registers 7

    .prologue
    const-wide/32 v4, 0xdbba00

    .line 1124
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 1126
    :cond_f
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 1127
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1e

    .line 1128
    iput-wide v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 1130
    :cond_1e
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1131
    return-void
.end method

.method private writeTimerValue(J)V
    .registers 7
    .parameter "value"

    .prologue
    .line 1229
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v1, :cond_22

    .line 1230
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1234
    .local v0, first:Ljava/lang/Integer;
    :goto_9
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getStringValue(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 1235
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothService;->writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V

    .line 1236
    return-void

    .line 1232
    .end local v0           #first:Ljava/lang/Integer;
    :cond_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .restart local v0       #first:Ljava/lang/Integer;
    goto :goto_9
.end method


# virtual methods
.method declared-synchronized cancelCommand(I)V
    .registers 3
    .parameter "command"

    .prologue
    .line 1104
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 1106
    :try_start_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_d

    .line 1107
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->cancelConnectThread()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    .line 1112
    :cond_d
    monitor-exit p0

    return-void

    .line 1104
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deferProfileServiceMessage(I)V
    .registers 4
    .parameter "command"

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1116
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1117
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1118
    monitor-exit p0

    return-void

    .line 1115
    .end local v0           #msg:Landroid/os/Message;
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 1477
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method declared-synchronized processCommand(I)Z
    .registers 11
    .parameter "command"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x3e8

    const/4 v4, 0x1

    .line 1264
    monitor-enter p0

    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V

    .line 1265
    const/4 v3, 0x0

    .line 1266
    .local v3, uuids:[Landroid/os/ParcelUuid;
    sparse-switch p1, :sswitch_data_162

    .line 1371
    const-string v4, "BluetoothDeviceProfileState"

    const-string v6, "Error: Unknown Command"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_31

    :cond_26
    :goto_26
    move v4, v5

    .line 1373
    :goto_27
    :sswitch_27
    monitor-exit p0

    return v4

    .line 1268
    :sswitch_29
    :try_start_29
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v4, :cond_34

    .line 1269
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_26

    .line 1264
    .end local v3           #uuids:[Landroid/os/ParcelUuid;
    :catchall_31
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1271
    .restart local v3       #uuids:[Landroid/os/ParcelUuid;
    :cond_34
    :try_start_34
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto :goto_27

    .line 1275
    :sswitch_3d
    iget-object v6, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v6, :cond_45

    .line 1276
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V

    goto :goto_26

    .line 1278
    :cond_45
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1279
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_60

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 1281
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 1283
    :cond_60
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processIncomingConnectCommand(I)V

    goto :goto_27

    .line 1288
    :sswitch_64
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    if-eqz v4, :cond_26

    .line 1289
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothA2dpService;->connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto :goto_27

    .line 1293
    :sswitch_71
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1294
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 1295
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 1297
    :cond_84
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processIncomingConnectCommand(I)V

    goto :goto_27

    .line 1300
    :sswitch_88
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto :goto_27

    .line 1302
    :sswitch_91
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1303
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 1304
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 1306
    :cond_a4
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processIncomingConnectCommand(I)V

    goto :goto_27

    .line 1309
    :sswitch_a8
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v4, :cond_b1

    .line 1310
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V

    goto/16 :goto_26

    .line 1314
    :cond_b1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1315
    .local v1, m:Landroid/os/Message;
    const/16 v4, 0x38

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1316
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    .line 1317
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v0

    .line 1318
    .local v0, bluetoothState:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v8, :cond_da

    const/16 v4, 0xd

    if-eq v0, v4, :cond_da

    .line 1321
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1323
    :cond_da
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->cancelConnectThread()Z

    .line 1324
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto/16 :goto_27

    .line 1334
    .end local v0           #bluetoothState:I
    .end local v1           #m:Landroid/os/Message;
    :sswitch_e9
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    if-eqz v4, :cond_26

    .line 1335
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v8, :cond_100

    .line 1337
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1339
    :cond_100
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothA2dpService;->disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto/16 :goto_27

    .line 1346
    :sswitch_10a
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v8, :cond_11d

    .line 1348
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/server/BluetoothService;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1350
    :cond_11d
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    goto/16 :goto_27

    .line 1352
    :sswitch_127
    iget-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z

    if-nez v4, :cond_130

    .line 1353
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V

    goto/16 :goto_26

    .line 1355
    :cond_130
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    move-result v4

    goto/16 :goto_27

    .line 1359
    :sswitch_138
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 1360
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V

    .line 1361
    const/16 v4, 0x6a

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1362
    .local v2, msg:Landroid/os/Message;
    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v2, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1363
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z

    .line 1364
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->removeBondInternal(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_27

    .line 1368
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_15d
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mUnpairStarted:Z
    :try_end_160
    .catchall {:try_start_34 .. :try_end_160} :catchall_31

    goto/16 :goto_26

    .line 1266
    :sswitch_data_162
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_64
        0x4 -> :sswitch_71
        0x5 -> :sswitch_88
        0x6 -> :sswitch_91
        0x32 -> :sswitch_a8
        0x33 -> :sswitch_27
        0x34 -> :sswitch_e9
        0x35 -> :sswitch_27
        0x36 -> :sswitch_10a
        0x37 -> :sswitch_27
        0x38 -> :sswitch_127
        0x64 -> :sswitch_138
        0x6a -> :sswitch_15d
    .end sparse-switch
.end method

.method protected quitting()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 511
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 512
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 513
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbap:Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

    .line 514
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 515
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    .line 516
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    .line 517
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    .line 518
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    .line 519
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 520
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    .line 521
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    .line 522
    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    .line 524
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->quitting()V

    .line 525
    return-void
.end method
