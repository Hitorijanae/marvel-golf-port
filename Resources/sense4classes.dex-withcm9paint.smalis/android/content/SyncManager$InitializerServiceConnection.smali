.class Landroid/content/SyncManager$InitializerServiceConnection;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializerServiceConnection"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private volatile mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .parameter "account"
    .parameter "authority"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 490
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    .line 492
    iput-object p2, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    .line 493
    iput-object p3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 494
    iput-object p4, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    .line 496
    return-void
.end method

.method static synthetic access$700(Landroid/content/SyncManager$InitializerServiceConnection;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 482
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Landroid/content/SyncManager$InitializerServiceConnection;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 482
    iput-object p1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter "name"
    .parameter "service"

    .prologue
    const-wide/16 v4, 0x1388

    .line 500
    :try_start_2
    iget-boolean v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    if-nez v1, :cond_43

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    .line 502
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 503
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_38
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/ISyncAdapter;->initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_7d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_4e

    .line 514
    :cond_43
    iget-object v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    :goto_4a
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    return-void

    .line 507
    :catch_4e
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4f
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while initializing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_4f .. :try_end_75} :catchall_7d

    .line 514
    iget-object v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    goto :goto_4a

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_7d
    move-exception v1

    iget-object v2, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 527
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 530
    :cond_c
    return-void
.end method
