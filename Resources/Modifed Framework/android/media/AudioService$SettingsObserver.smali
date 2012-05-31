.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2323
    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    .line 2324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2325
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2327
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_link_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2329
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2333
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2334
    iget-object v3, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2335
    :try_start_c
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mode_ringer_streams_affected"

    const/16 v6, 0xa6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2339
    .local v1, ringerModeAffectedStreams:I
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2340
    and-int/lit8 v1, v1, -0x9

    .line 2344
    :goto_25
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    invoke-static {v4}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)I

    move-result v4

    if-eq v1, v4, :cond_3e

    .line 2349
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    invoke-static {v4, v1}, Landroid/media/AudioService;->access$5702(Landroid/media/AudioService;I)I

    .line 2350
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v6, 0x0

    #calls: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;IZ)V

    .line 2353
    :cond_3e
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_link_notification"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_5f

    .line 2355
    .local v0, linkNotificationWithVolume:Z
    :goto_4e
    if-eqz v0, :cond_61

    .line 2356
    iget-object v2, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    aput v5, v2, v4

    .line 2360
    :goto_5a
    monitor-exit v3

    .line 2361
    return-void

    .line 2342
    .end local v0           #linkNotificationWithVolume:Z
    :cond_5c
    or-int/lit8 v1, v1, 0x8

    goto :goto_25

    :cond_5f
    move v0, v2

    .line 2353
    goto :goto_4e

    .line 2358
    .restart local v0       #linkNotificationWithVolume:Z
    :cond_61
    iget-object v2, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[I

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput v5, v2, v4

    goto :goto_5a

    .line 2360
    .end local v0           #linkNotificationWithVolume:Z
    .end local v1           #ringerModeAffectedStreams:I
    :catchall_6c
    move-exception v2

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_6c

    throw v2
.end method
