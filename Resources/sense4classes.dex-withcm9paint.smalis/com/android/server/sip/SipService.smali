.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$1;,
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$AutoRegistrationProcess;,
        Lcom/android/server/sip/SipService$IntervalMeasurementProcess;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final MIN_EXPIRY_TIME:I = 0x3c

.field private static final SHORT_EXPIRY_TIME:I = 0xa

.field static final TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private mConnected:Z

.field private mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

.field private mKeepAliveInterval:I

.field private mLastGoodKeepAliveInterval:I

.field private mLocalIp:Ljava/lang/String;

.field private mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mNetworkType:Ljava/lang/String;

.field private mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSipOnWifiOnly:Z

.field private mTimer:Lcom/android/server/sip/SipWakeupTimer;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 101
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 123
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 126
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 129
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 130
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 132
    new-instance v1, Lcom/android/server/sip/SipWakeLock;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 135
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 136
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sip/SipService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/sip/SipService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/sip/SipService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getKeepAliveInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/os/Looper;
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sip/SipService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object v0
.end method

.method private declared-synchronized addPendingSession(Landroid/net/sip/ISipSession;)V
    .registers 5
    .parameter "session"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 398
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    .line 404
    :goto_d
    monitor-exit p0

    return-void

    .line 400
    :catch_f
    move-exception v0

    .line 402
    .local v0, e:Landroid/os/RemoteException;
    :try_start_10
    const-string v1, "SipService"

    const-string v2, "addPendingSession()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_d

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private anyOpenedToReceiveCalls()Z
    .registers 4

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 348
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    .line 350
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private declared-synchronized callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 7
    .parameter "ringingGroup"
    .parameter "ringingSession"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 421
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v1, p1, :cond_f

    invoke-virtual {v1, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_28

    move-result v3

    if-eqz v3, :cond_f

    .line 425
    const/4 v3, 0x1

    .line 428
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_24
    monitor-exit p0

    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_24

    .line 419
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private cleanUpPendingSessions()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 410
    .local v1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_17
    if-ge v3, v4, :cond_34

    aget-object v2, v0, v3

    .line 411
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/sip/ISipSession;

    invoke-interface {v5}, Landroid/net/sip/ISipSession;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_31

    .line 412
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 415
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_34
    return-void
.end method

.method private createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 6
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 302
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1d

    .line 303
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 304
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 309
    :cond_1c
    return-object v0

    .line 306
    :cond_1d
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 307
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 8
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 317
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_24

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 319
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1d
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 322
    invoke-virtual {v0, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 329
    :goto_23
    return-object v0

    .line 324
    :cond_24
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 326
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_23
.end method

.method private static createLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 1215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private determineLocalIp()Ljava/lang/String;
    .registers 5

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 289
    .local v1, s:Ljava/net/DatagramSocket;
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 290
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v2

    .line 294
    .end local v1           #s:Ljava/net/DatagramSocket;
    :goto_18
    return-object v2

    .line 291
    :catch_19
    move-exception v0

    .line 294
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private getKeepAliveInterval()I
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_7

    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    goto :goto_6
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 445
    :try_start_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 446
    .local v0, d:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_35

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xac

    if-ne v4, v5, :cond_23

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_35

    :cond_23
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_50

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2f} :catch_36

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_50

    .line 456
    .end local v0           #d:[B
    :cond_35
    :goto_35
    return v2

    .line 453
    :catch_36
    move-exception v1

    .line 454
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v2, "SipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBehindAT()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_50
    move v2, v3

    .line 456
    goto :goto_35
.end method

.method private isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 5
    .parameter "group"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 194
    .local v0, profile:Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 3
    .parameter "group"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isCallerRadio()Z
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .registers 5
    .parameter "localProfile"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .registers 5
    .parameter "localProfile"

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private declared-synchronized onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .registers 11
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1153
    monitor-enter p0

    if-eqz p1, :cond_17

    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 1155
    :cond_17
    iget-object v7, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1157
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1162
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_25
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_38

    iget-boolean v7, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    if-eqz v7, :cond_37

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_38

    :cond_37
    move v1, v6

    .line 1164
    .local v1, connected:Z
    :cond_38
    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, networkType:Ljava/lang/String;
    :goto_3e
    iget-boolean v7, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    if-ne v1, v7, :cond_50

    iget-object v7, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_7f

    move-result v7

    if-eqz v7, :cond_50

    .line 1212
    :goto_4a
    monitor-exit p0

    return-void

    .line 1164
    .end local v5           #networkType:Ljava/lang/String;
    :cond_4c
    :try_start_4c
    const-string/jumbo v5, "null"
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_7f

    goto :goto_3e

    .line 1176
    .restart local v5       #networkType:Ljava/lang/String;
    :cond_50
    :try_start_50
    iget-boolean v7, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    if-eqz v7, :cond_82

    .line 1177
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1178
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1179
    iget-object v7, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1180
    .local v3, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_7f
    .catch Ljavax/sip/SipException; {:try_start_50 .. :try_end_74} :catch_75

    goto :goto_64

    .line 1209
    .end local v3           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_75
    move-exception v2

    .line 1210
    .local v2, e:Ljavax/sip/SipException;
    :try_start_76
    const-string v6, "SipService"

    const-string/jumbo v7, "onConnectivityChanged()"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7f

    goto :goto_4a

    .line 1153
    .end local v1           #connected:Z
    .end local v2           #e:Ljavax/sip/SipException;
    .end local v5           #networkType:Ljava/lang/String;
    :catchall_7f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1184
    .restart local v1       #connected:Z
    .restart local v5       #networkType:Ljava/lang/String;
    :cond_82
    :try_start_82
    iput-boolean v1, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    .line 1185
    iput-object v5, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    .line 1187
    if-eqz v1, :cond_c2

    .line 1188
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1189
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 1190
    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1191
    iget-object v7, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1192
    .restart local v3       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    goto :goto_9f

    .line 1196
    .end local v3           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_b0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_bc

    .line 1197
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_4a

    .line 1199
    :cond_bc
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_4a

    .line 1205
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_c2
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1207
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v6}, Lcom/android/server/sip/SipWakeLock;->reset()V
    :try_end_cc
    .catchall {:try_start_82 .. :try_end_cc} :catchall_7f
    .catch Ljavax/sip/SipException; {:try_start_82 .. :try_end_cc} :catch_75

    goto/16 :goto_4a
.end method

.method private declared-synchronized onKeepAliveIntervalChanged()V
    .registers 4

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 433
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 432
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 435
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method private registerReceivers()V
    .registers 5

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1135
    return-void
.end method

.method private restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 4
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 393
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 110
    :try_start_6
    const-string/jumbo v1, "sip"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_24

    .line 111
    const-string/jumbo v1, "sip"

    new-instance v2, Lcom/android/server/sip/SipService;

    invoke-direct {v2, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.sip.SIP_SERVICE_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    .line 119
    :cond_24
    :goto_24
    return-void

    .line 115
    :catch_25
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    .registers 3
    .parameter "localProfile"

    .prologue
    .line 362
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 364
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 7
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    if-nez v1, :cond_5a

    iget v1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 371
    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start NAT port mapping timeout measurement on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 375
    .local v0, minInterval:I
    if-lt v0, p2, :cond_4e

    .line 378
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 380
    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  reset min interval to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_4e
    new-instance v1, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    .line 384
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->start()V

    .line 386
    .end local v0           #minInterval:I
    :cond_5a
    return-void
.end method

.method private stopPortMappingMeasurement()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    if-eqz v0, :cond_c

    .line 355
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/android/server/sip/SipService$IntervalMeasurementProcess;

    .line 358
    :cond_c
    return-void
.end method

.method private unregisterReceivers()V
    .registers 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    .line 1144
    return-void
.end method


# virtual methods
.method public declared-synchronized close(Ljava/lang/String;)V
    .registers 6
    .parameter "localProfileUri"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_24

    .line 209
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_15

    .line 223
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 210
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 211
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator or radio can close this profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 206
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 216
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 217
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 219
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->anyOpenedToReceiveCalls()Z

    move-result v1

    if-nez v1, :cond_13

    .line 220
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V

    .line 221
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v1}, Lcom/android/server/sip/SipWakeLock;->reset()V
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_24

    goto :goto_13
.end method

.method public declared-synchronized createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .registers 9
    .parameter "localProfile"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 266
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 269
    iget-boolean v3, p0, Lcom/android/server/sip/SipService;->mConnected:Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_22

    if-nez v3, :cond_17

    .line 275
    :goto_15
    monitor-exit p0

    return-object v2

    .line 271
    :cond_17
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 272
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_22
    .catch Ljavax/sip/SipException; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v2

    goto :goto_15

    .line 273
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_20
    move-exception v0

    .line 275
    .local v0, e:Ljavax/sip/SipException;
    goto :goto_15

    .line 266
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getListOfProfiles()[Landroid/net/sip/SipProfile;
    .registers 8

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.USE_SIP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v2

    .line 142
    .local v2, isCallerRadio:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v3, profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 144
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v2, :cond_30

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 145
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_1c

    .line 139
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isCallerRadio:Z
    .end local v3           #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :catchall_38
    move-exception v4

    monitor-exit p0

    throw v4

    .line 148
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #isCallerRadio:Z
    .restart local v3       #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/sip/SipProfile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/sip/SipProfile;
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_38

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .registers 6
    .parameter "callId"

    .prologue
    const/4 v0, 0x0

    .line 280
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    .line 282
    if-nez p1, :cond_e

    .line 283
    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_c

    .line 280
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened(Ljava/lang/String;)Z
    .registers 7
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 226
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_27

    .line 229
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_16

    .line 234
    :goto_14
    monitor-exit p0

    return v1

    .line 230
    :cond_16
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 231
    const/4 v1, 0x1

    goto :goto_14

    .line 233
    :cond_1e
    const-string v2, "SipService"

    const-string/jumbo v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    goto :goto_14

    .line 226
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .registers 7
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 239
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_2a

    .line 242
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_16

    .line 247
    :goto_14
    monitor-exit p0

    return v1

    .line 243
    :cond_16
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 244
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1

    goto :goto_14

    .line 246
    :cond_21
    const-string v2, "SipService"

    const-string/jumbo v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_2a

    goto :goto_14

    .line 239
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open(Landroid/net/sip/SipProfile;)V
    .registers 7
    .parameter "localProfile"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_32

    .line 156
    :try_start_10
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 157
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 158
    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_32
    .catch Ljavax/sip/SipException; {:try_start_10 .. :try_end_26} :catch_28

    .line 163
    .end local v0           #addingFirstProfile:Z
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    .line 159
    :catch_28
    move-exception v1

    .line 160
    .local v1, e:Ljavax/sip/SipException;
    :try_start_29
    const-string v2, "SipService"

    const-string/jumbo v3, "openToMakeCalls()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    goto :goto_26

    .line 152
    .end local v1           #e:Ljavax/sip/SipException;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .registers 10
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 171
    if-nez p2, :cond_1c

    .line 172
    const-string v3, "SipService"

    const-string/jumbo v4, "incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_47

    .line 190
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 179
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 180
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v2

    .line 182
    .local v2, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 183
    :cond_33
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 184
    invoke-virtual {v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_47
    .catch Ljavax/sip/SipException; {:try_start_1c .. :try_end_3c} :catch_3d

    goto :goto_1a

    .line 186
    .end local v0           #addingFirstProfile:Z
    .end local v2           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_3d
    move-exception v1

    .line 187
    .local v1, e:Ljavax/sip/SipException;
    :try_start_3e
    const-string v3, "SipService"

    const-string/jumbo v4, "openToReceiveCalls()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_47

    goto :goto_1a

    .line 168
    .end local v1           #e:Ljavax/sip/SipException;
    :catchall_47
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V
    .registers 7
    .parameter "localProfileUri"
    .parameter "listener"

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1f

    .line 256
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_15

    .line 262
    :goto_13
    monitor-exit p0

    return-void

    .line 257
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 258
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 253
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 260
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_22
    :try_start_22
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator can set listener on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_1f

    goto :goto_13
.end method
