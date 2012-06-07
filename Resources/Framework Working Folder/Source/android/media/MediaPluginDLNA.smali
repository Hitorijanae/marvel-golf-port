.class Landroid/media/MediaPluginDLNA;
.super Landroid/media/MediaPlugin;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPluginDLNA$EventHandler;,
        Landroid/media/MediaPluginDLNA$RendererListener;,
        Landroid/media/MediaPluginDLNA$ControllerListener;
    }
.end annotation


# static fields
.field public static final MEDIA_BUFFERING:I = 0x1800

.field public static final MEDIA_DLNAMIDDLELAYER_CONNECTED:I = 0x1000

.field public static final MEDIA_END:I = 0x1200

.field public static final MEDIA_ERROR:I = 0x1100

.field public static final MEDIA_IDLE:I = 0x1001

.field public static final MEDIA_INITIALIZED:I = 0x1002

.field public static final MEDIA_PAUSED:I = 0x1020

.field public static final MEDIA_PLAY_COMPLETED:I = 0x1080

.field public static final MEDIA_PREPARED:I = 0x1008

.field public static final MEDIA_PREPARING:I = 0x1004

.field public static final MEDIA_SEEKED:I = 0x1400

.field public static final MEDIA_STARTED:I = 0x1010

.field public static final MEDIA_STOPPED:I = 0x1040

.field public static final STATUS_CHANGE:I = 0x2010

.field public static final STATUS_ERROR:I = 0x2021

.field public static final STATUS_INIT_FAILED:I = 0x2041

.field public static final STATUS_PREPARE:I = 0x2080

.field public static final STATUS_PREPARE_FAILED:I = 0x2082

.field public static final STATUS_PREPARE_SUCCESS:I = 0x2081

.field public static final STATUS_RESPONSE:I = 0x2040

.field private static final TAG:Ljava/lang/String; = "[MediaPluginDLNA]"


# instance fields
.field private final COMMAND_PAUSE_TIMEOUT:I

.field private final COMMAND_SEEKTO_TIMEOUT:I

.field private final COMMAND_START_TIMEOUT:I

.field private final CONNECT_DELAY:I

.field private final MediaPluginDLNACookie:Ljava/lang/String;

.field private final PAUSE_DELAY:I

.field private final SEEK_DELAY:I

.field private clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private ctx:Landroid/content/Context;

.field private eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

.field private mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

.field private mCurrentPos:I

.field private mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDataPath:Ljava/lang/String;

.field private mDmrID:Ljava/lang/String;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

.field private mSeeking:Z

.field private mState:I

.field private mStreamingPath:Z

.field private mWaitMirrorConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "path"

    .prologue
    const/16 v3, 0xbb8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/media/MediaPlugin;-><init>()V

    .line 28
    const-string v0, "MediaPluginDLNACookie"

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 30
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 31
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    .line 32
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    .line 35
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 36
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 37
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 38
    const/16 v0, 0x1001

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 39
    iput v2, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 63
    iput v2, p0, Landroid/media/MediaPluginDLNA;->CONNECT_DELAY:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/MediaPluginDLNA;->PAUSE_DELAY:I

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/media/MediaPluginDLNA;->SEEK_DELAY:I

    .line 66
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/MediaPluginDLNA;->COMMAND_START_TIMEOUT:I

    .line 67
    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_PAUSE_TIMEOUT:I

    .line 68
    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_SEEKTO_TIMEOUT:I

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 71
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 100
    new-instance v0, Landroid/media/MediaPluginDLNA$1;

    invoke-direct {v0, p0}, Landroid/media/MediaPluginDLNA$1;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 77
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/media/MediaPluginDLNA$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaPluginDLNA$EventHandler;-><init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    .line 79
    iput-object p2, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 80
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_90

    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_90

    .line 82
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string v2, "MediaPluginDLNACookie"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 83
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_85

    .line 84
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] mDLNAManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_84
    return-void

    .line 87
    :cond_85
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 88
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 90
    :cond_90
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] ctx = null... failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v1, 0x2041

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 92
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84
.end method

.method static synthetic access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/MediaPluginDLNA;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return v0
.end method

.method static synthetic access$502(Landroid/media/MediaPluginDLNA;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPluginDLNA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return v0
.end method

.method static synthetic access$702(Landroid/media/MediaPluginDLNA;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaPluginDLNA;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaPluginDLNA;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    return-object v0
.end method

.method public static checkPath(Ljava/lang/String;)Z
    .registers 2
    .parameter "path"

    .prologue
    .line 303
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "rtsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 304
    :cond_12
    const/4 v0, 0x1

    .line 306
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public connect()V
    .registers 3

    .prologue
    .line 373
    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_16

    .line 375
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[connect]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->connect(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 379
    :cond_16
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getCurrentState()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return v0
.end method

.method public handleGetCurrentPosition()I
    .registers 4

    .prologue
    .line 460
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v1, :cond_6

    .line 461
    const/4 v0, 0x0

    .line 466
    :goto_5
    return v0

    .line 464
    :cond_6
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 465
    .local v0, nPos:I
    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    goto :goto_5
.end method

.method public handleOnBufferUpdate(I)V
    .registers 4
    .parameter "percent"

    .prologue
    .line 537
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnBufferUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    monitor-enter p0

    .line 539
    :try_start_8
    monitor-exit p0

    .line 540
    return-void

    .line 539
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public handleOnPlayComplete()V
    .registers 3

    .prologue
    .line 530
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnPlayComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    monitor-enter p0

    .line 532
    const/16 v0, 0x1080

    :try_start_a
    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 533
    monitor-exit p0

    .line 534
    return-void

    .line 533
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v0
.end method

.method public handleOnPrepared()V
    .registers 4

    .prologue
    .line 520
    monitor-enter p0

    .line 521
    :try_start_1
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_20

    .line 525
    :cond_20
    const/16 v0, 0x1008

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 526
    monitor-exit p0

    .line 527
    return-void

    .line 526
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public handlePause()V
    .registers 3

    .prologue
    .line 415
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handlePause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    monitor-enter p0

    .line 417
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_1c

    .line 418
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 419
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    .line 421
    :cond_1c
    monitor-exit p0

    .line 422
    return-void

    .line 421
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public handleRelease()V
    .registers 3

    .prologue
    .line 502
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleRelease]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-enter p0

    .line 504
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_20

    .line 505
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "disconnect with controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 507
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 510
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 511
    const/16 v0, 0x1200

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 515
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 516
    monitor-exit p0

    .line 517
    return-void

    .line 516
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public handleReset()V
    .registers 4

    .prologue
    const/16 v2, 0x1001

    .line 484
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleReset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    monitor-enter p0

    .line 486
    :try_start_a
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    if-eq v0, v2, :cond_26

    .line 487
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "disconnect with controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 489
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 492
    :cond_26
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 493
    const/16 v0, 0x1001

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 497
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 498
    monitor-exit p0

    .line 499
    return-void

    .line 498
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public handleSeekComplete()V
    .registers 3

    .prologue
    .line 470
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleSeekComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public handleSeekTo(I)V
    .registers 5
    .parameter "msec"

    .prologue
    .line 425
    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    if-nez v0, :cond_76

    .line 428
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1020

    if-eq v0, v1, :cond_3d

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1010

    if-eq v0, v1, :cond_3d

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_3d

    .line 429
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSeekTo][SKIP][Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPluginDLNA;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    monitor-exit p0

    .line 441
    :goto_3c
    return-void

    .line 432
    :cond_3d
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSeekTo] msec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 434
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    div-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    .line 436
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    .line 440
    :goto_71
    monitor-exit p0

    goto :goto_3c

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v0

    .line 438
    :cond_76
    :try_start_76
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "seeking is in progress, reject this seek..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_73

    goto :goto_71
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .registers 15
    .parameter "path"

    .prologue
    .line 310
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleSetDataSource][Path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-enter p0

    .line 313
    :try_start_1f
    const-string v2, ""
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_159

    .line 315
    .local v2, localIp:Ljava/lang/String;
    :try_start_21
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 316
    .local v1, ifaces:Ljava/util/Enumeration;
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 317
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 318
    .local v0, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_db

    .line 319
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip Real iface addresses: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_21 .. :try_end_5b} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5b} :catch_5c

    goto :goto_25

    .line 342
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    :catch_5c
    move-exception v9

    .line 346
    :cond_5d
    :try_start_5d
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8f

    .line 348
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://localhost"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_192

    .line 349
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://localhost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 355
    :cond_8f
    :goto_8f
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleSetDataSource][mDataPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/media/MediaPluginDLNA;->checkPath(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1be

    const/4 v9, 0x1

    :goto_b8
    iput-boolean v9, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 358
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v9, :cond_d5

    .line 359
    iget-boolean v9, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    if-eqz v9, :cond_1c1

    .line 360
    const-string v9, "[MediaPluginDLNA]"

    const-string/jumbo v10, "is streaming path"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v10, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v11, ""

    const-string v12, ""

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_d5
    :goto_d5
    const/16 v9, 0x1002

    iput v9, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 369
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_5d .. :try_end_da} :catchall_159

    .line 370
    return-void

    .line 322
    .restart local v0       #iface:Ljava/net/NetworkInterface;
    .restart local v1       #ifaces:Ljava/util/Enumeration;
    :cond_db
    :try_start_db
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Real iface addresses: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 324
    .local v8, virtualIfaces:Ljava/util/Enumeration;
    :cond_fb
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 325
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 326
    .local v7, viface:Ljava/net/NetworkInterface;
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " VIRT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    .line 328
    .local v6, vaddrs:Ljava/util/Enumeration;
    :goto_12f
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_fb

    .line 329
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 330
    .local v5, vaddr:Ljava/net/InetAddress;
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vaddr \t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catchall {:try_start_db .. :try_end_158} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_158} :catch_5c

    goto :goto_12f

    .line 369
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    .end local v2           #localIp:Ljava/lang/String;
    .end local v5           #vaddr:Ljava/net/InetAddress;
    .end local v6           #vaddrs:Ljava/util/Enumeration;
    .end local v7           #viface:Ljava/net/NetworkInterface;
    .end local v8           #virtualIfaces:Ljava/util/Enumeration;
    :catchall_159
    move-exception v9

    :try_start_15a
    monitor-exit p0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    throw v9

    .line 333
    .restart local v0       #iface:Ljava/net/NetworkInterface;
    .restart local v1       #ifaces:Ljava/util/Enumeration;
    .restart local v2       #localIp:Ljava/lang/String;
    .restart local v8       #virtualIfaces:Ljava/util/Enumeration;
    :cond_15c
    :try_start_15c
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 334
    .local v4, raddrs:Ljava/util/Enumeration;
    :cond_160
    :goto_160
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 335
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 336
    .local v3, raddr:Ljava/net/InetAddress;
    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_160

    .line 337
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 338
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "raddr \t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catchall {:try_start_15c .. :try_end_191} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_191} :catch_5c

    goto :goto_160

    .line 351
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    .end local v3           #raddr:Ljava/net/InetAddress;
    .end local v4           #raddrs:Ljava/util/Enumeration;
    .end local v8           #virtualIfaces:Ljava/util/Enumeration;
    :cond_192
    :try_start_192
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://127.0.0.1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 352
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://127.0.0.1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    goto/16 :goto_8f

    .line 357
    :cond_1be
    const/4 v9, 0x0

    goto/16 :goto_b8

    .line 364
    :cond_1c1
    const-string v9, "[MediaPluginDLNA]"

    const-string/jumbo v10, "not streaming path"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v10, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Ljava/lang/String;)V
    :try_end_1d0
    .catchall {:try_start_192 .. :try_end_1d0} :catchall_159

    goto/16 :goto_d5
.end method

.method public handleSetLooping(Z)V
    .registers 5
    .parameter "looping"

    .prologue
    .line 452
    const-string v1, "[MediaPluginDLNA]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetLooping]:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1e

    const-string/jumbo v0, "true"

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 452
    :cond_1e
    const-string v0, "false"

    goto :goto_12
.end method

.method public handleSetVolume(FF)V
    .registers 6
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 444
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetVoleum]: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_27

    .line 449
    :goto_26
    return-void

    .line 448
    :cond_27
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    goto :goto_26
.end method

.method public handleStart()V
    .registers 5

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_28

    .line 386
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1080

    if-ne v0, v1, :cond_2a

    .line 387
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart][MEDIA_PLAY_COMPLETED][replay]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    :cond_28
    :goto_28
    monitor-exit p0

    .line 400
    return-void

    .line 391
    :cond_2a
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1020

    if-eq v0, v1, :cond_3c

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1040

    if-eq v0, v1, :cond_3c

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_4a

    .line 392
    :cond_3c
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 393
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    goto :goto_28

    .line 399
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_47

    throw v0

    .line 395
    :cond_4a
    :try_start_4a
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleStart][SKIP][Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPluginDLNA;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_47

    goto :goto_28
.end method

.method public handleStop()V
    .registers 3

    .prologue
    .line 474
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStop]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    monitor-enter p0

    .line 476
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_11

    .line 477
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestStop()V

    .line 479
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 480
    monitor-exit p0

    .line 481
    return-void

    .line 480
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 407
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSeeking()Z
    .registers 2

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return v0
.end method

.method public lockCommand(I)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 543
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 546
    :try_start_c
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_14} :catch_21

    .line 550
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 552
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 547
    :catch_21
    move-exception v0

    .line 548
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_22
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2c

    .line 550
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_16

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 98
    return-void
.end method

.method public unlockCommand()V
    .registers 3

    .prologue
    .line 556
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 559
    :try_start_c
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_21

    .line 562
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 562
    :catchall_21
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
