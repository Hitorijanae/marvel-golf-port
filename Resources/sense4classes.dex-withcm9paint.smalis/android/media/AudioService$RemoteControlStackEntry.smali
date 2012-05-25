.class Landroid/media/AudioService$RemoteControlStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControlStackEntry"
.end annotation


# instance fields
.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUid:I

.field public mMediaIntent:Landroid/app/PendingIntent;

.field public mRcClient:Landroid/media/IRemoteControlClient;

.field public mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

.field public mReceiverComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5066
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5067
    iput-object p1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    .line 5068
    iput-object p2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    .line 5069
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5070
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5071
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5088
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5089
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5090
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .registers 5

    .prologue
    .line 5074
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$10700(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 5076
    :try_start_c
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$10700(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5077
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 5084
    :cond_1b
    :goto_1b
    return-void

    .line 5078
    :catch_1c
    move-exception v0

    .line 5080
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unlinkToRcClientDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5081
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_1b
.end method
