.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Network$1;,
        Landroid/webkit/Network$RoamingMonitor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mRoaming:Z

.field private mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandlerImpl;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    .line 171
    new-instance v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandlerImpl;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    .line 173
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 174
    return-void
.end method

.method static synthetic access$002(Landroid/webkit/Network;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/webkit/Network;->mRoaming:Z

    return p1
.end method

.method public static disablePlatformNotifications()V
    .registers 1

    .prologue
    .line 140
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_18

    .line 141
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_19

    .line 142
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 143
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->stopMonitoringRoaming()V

    .line 148
    :cond_18
    :goto_18
    return-void

    .line 145
    :cond_19
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_18
.end method

.method public static enablePlatformNotifications()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 125
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_19

    .line 126
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1a

    .line 127
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 128
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->monitorRoaming()V

    .line 133
    :cond_19
    :goto_19
    return-void

    .line 130
    :cond_1a
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_19
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    const-class v1, Landroid/webkit/Network;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v0, :cond_1f

    .line 108
    new-instance v0, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 109
    sget-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v0, :cond_1f

    .line 113
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 114
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 117
    :cond_1f
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private monitorRoaming()V
    .registers 4

    .prologue
    .line 189
    new-instance v1, Landroid/webkit/Network$RoamingMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/Network$RoamingMonitor;-><init>(Landroid/webkit/Network;Landroid/webkit/Network$1;)V

    iput-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v2, v2, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method public static setProxyEnabled(Z)V
    .registers 1
    .parameter "flag"

    .prologue
    .line 157
    return-void
.end method

.method private stopMonitoringRoaming()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 200
    :cond_e
    return-void
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .registers 4
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 375
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 376
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 378
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearUserSslPrefTable()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandlerImpl;->clear()V

    .line 359
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 389
    if-eqz p1, :cond_7

    .line 390
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandlerImpl;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 392
    :cond_7
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 368
    if-eqz p1, :cond_7

    .line 369
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 371
    :cond_7
    return-void
.end method

.method public isValidProxySet()Z
    .registers 3

    .prologue
    .line 272
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v1

    .line 273
    :try_start_3
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 274
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .registers 14
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 263
    :cond_b
    :goto_b
    return v2

    .line 225
    :cond_c
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 231
    iget-boolean v3, p0, Landroid/webkit/Network;->mRoaming:Z

    if-eqz v3, :cond_3f

    const-string v3, "X-Moz"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string/jumbo v3, "prefetch"

    const-string v4, "X-Moz"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 237
    :cond_3f
    const/4 v6, 0x0

    .line 238
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 239
    .local v7, bodyLength:I
    if-eqz p3, :cond_49

    .line 240
    array-length v7, p3

    .line 241
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 244
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_49
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 245
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v8, 0x0

    .line 246
    .local v8, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 247
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 249
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 250
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 251
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 263
    :goto_66
    const/4 v2, 0x1

    goto :goto_b

    .line 253
    :cond_68
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 260
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_66
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "inState"

    .prologue
    .line 351
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "outState"

    .prologue
    .line 337
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyPassword"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyUsername"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 304
    monitor-exit p0

    return-void

    .line 303
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 397
    return-void
.end method

.method public stopTiming()V
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 401
    return-void
.end method
