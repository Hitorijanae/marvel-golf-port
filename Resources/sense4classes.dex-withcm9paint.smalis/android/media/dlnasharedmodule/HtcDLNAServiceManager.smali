.class public Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;,
        Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "android.media.dlnasharedmodule.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

.field public static final BUFFERING_TIMEOUT:I = 0xfa0

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final ERROR_COMMAND_PAUSE:I = -0x40c7

.field public static final ERROR_COMMAND_PAUSE_MSG:Ljava/lang/String; = "Command requestPause in wrong status"

.field public static final ERROR_COMMAND_PLAY:I = -0x40c4

.field public static final ERROR_COMMAND_PLAYBYID:I = -0x40cb

.field public static final ERROR_COMMAND_PLAYBYID_MSG:Ljava/lang/String; = "Command startPlay(String) in wrong status"

.field public static final ERROR_COMMAND_PLAYBYINDEX:I = -0x40ca

.field public static final ERROR_COMMAND_PLAYBYINDEX_MSG:Ljava/lang/String; = "Command startPlay(long) in wrong status"

.field public static final ERROR_COMMAND_PLAYNEXT:I = -0x40c5

.field public static final ERROR_COMMAND_PLAYNEXT_MSG:Ljava/lang/String; = "Command playNext in wrong status"

.field public static final ERROR_COMMAND_PLAYPREVIOUS:I = -0x40c6

.field public static final ERROR_COMMAND_PLAYPREVIOUS_MSG:Ljava/lang/String; = "Command playPrevious in wrong status"

.field public static final ERROR_COMMAND_PLAY_MSG:Ljava/lang/String; = "Command startPlay in wrong status"

.field public static final ERROR_COMMAND_SEEKTO:I = -0x40c9

.field public static final ERROR_COMMAND_SEEKTO_MSG:Ljava/lang/String; = "Command seekTo in wrong status"

.field public static final ERROR_COMMAND_STATUS:I = -0x4064

.field public static final ERROR_COMMAND_STATUS_MSG:Ljava/lang/String; = "Command Status Error"

.field public static final ERROR_COMMAND_STOP:I = -0x40c8

.field public static final ERROR_COMMAND_STOP_MSG:Ljava/lang/String; = "Command requestStop in wrong status"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final SENDING_CONTENT_TIMEOUT:I = 0xea60

.field public static final SENDING_CONTENT_TIMEOUT_LARGE:I = 0x2bf20

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field public static final STATE_BUFFERING:I = 0x64

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSING:I = 0x69

.field public static final STATE_PLAYING:I = 0x0

.field static final STATE_REQUEST_PAUSE:I = 0x67

.field static final STATE_REQUEST_PLAY:I = 0x66

.field public static final STATE_SENDING_CONTENT:I = 0x6a

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x68

.field public static final STATE_TRANSITIONING:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x7

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_STATE_CHANGE_TIMEOUT:I

.field private SEEK_THREADHOLD:I

.field private isDTCPIPContent:Z

.field mClientSeekTo:J

.field mContext:Landroid/content/Context;

.field mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:J

.field private mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

.field mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field mServerID:Ljava/lang/String;

.field mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8
    .parameter "context"
    .parameter "cookie"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 146
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 147
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 148
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 149
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 150
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 151
    iput v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 153
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 154
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 155
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 156
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 157
    const/16 v1, 0x1388

    iput v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_STATE_CHANGE_TIMEOUT:I

    .line 158
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 160
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 161
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 162
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 163
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 165
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 166
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 167
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 169
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 171
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 173
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 174
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 185
    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 240
    new-instance v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 277
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 278
    iput p2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 279
    new-instance v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 280
    new-instance v1, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-direct {v1, p0}, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 281
    new-instance v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 282
    const/4 v1, 0x2

    if-ne p3, v1, :cond_74

    const/4 v0, 0x1

    :cond_74
    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 283
    iput p3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter "context"
    .parameter "cookie"
    .parameter "filter"

    .prologue
    .line 272
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;ILjava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private lockCommand(I)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 1870
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1873
    :try_start_c
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_14} :catch_21

    .line 1877
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1879
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    return-void

    .line 1874
    :catch_21
    move-exception v0

    .line 1875
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_22
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2c

    .line 1877
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_16

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .registers 8
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v4, 0x0

    .line 1832
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_6

    .line 1840
    :cond_5
    :goto_5
    return v4

    .line 1834
    :cond_6
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1835
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_5

    .line 1836
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendErrorMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .registers 9
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v4, 0x0

    .line 1844
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_6

    .line 1852
    :cond_5
    :goto_5
    return v4

    .line 1846
    :cond_6
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1847
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_5

    .line 1848
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendResponseMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5
.end method

.method private unlockCommand()V
    .registers 3

    .prologue
    .line 1883
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1886
    :try_start_c
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1e

    .line 1888
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1890
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    return-void

    .line 1888
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "nCookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    .line 1732
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[albumArtDownload]"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_10

    .line 1745
    :cond_f
    :goto_f
    return-void

    .line 1739
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_f

    .line 1741
    :catch_16
    move-exception v0

    goto :goto_f
.end method

.method public connect(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z
    .registers 6
    .parameter "clientListener"

    .prologue
    const/4 v0, 0x0

    .line 310
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 312
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_12

    .line 314
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v0, :cond_10

    .line 315
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    .line 316
    :cond_10
    const/4 v0, 0x1

    .line 372
    :goto_11
    return v0

    .line 319
    :cond_12
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[connect] Request connect service"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    new-instance v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$2;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 369
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_11
.end method

.method public disconnect()V
    .registers 6

    .prologue
    .line 377
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 378
    .local v0, clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_7

    .line 379
    invoke-interface {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 381
    :cond_7
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_c

    .line 398
    :goto_b
    return-void

    .line 384
    :cond_c
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[disconnect] Request disconnect service"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_13
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 389
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_2b

    .line 397
    :goto_27
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_b

    .line 391
    :catch_2b
    move-exception v1

    .line 394
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public findUsableRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .registers 5
    .parameter "statusBarData"

    .prologue
    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 452
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_e
    return v0

    .line 455
    :cond_f
    invoke-virtual {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 456
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 460
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getContainerID()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1770
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_a

    .line 1782
    :cond_9
    :goto_9
    return-object v0

    .line 1775
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_9

    .line 1777
    :catch_15
    move-exception v1

    goto :goto_9
.end method

.method public getContentID()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1749
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_a

    .line 1761
    :cond_9
    :goto_9
    return-object v0

    .line 1754
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_9

    .line 1756
    :catch_15
    move-exception v1

    goto :goto_9
.end method

.method public getCookie()I
    .registers 2

    .prologue
    .line 808
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()I
    .registers 2

    .prologue
    .line 1866
    iget v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1791
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_11

    .line 1811
    :cond_10
    :goto_10
    return-object v0

    .line 1796
    :cond_11
    const/4 v0, 0x0

    .line 1799
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_12
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 1800
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v2, v3, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1801
    .local v2, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_10

    .line 1803
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_2c

    goto :goto_10

    .line 1806
    .end local v2           #listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    :catch_2c
    move-exception v1

    .line 1808
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .registers 5

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 823
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_22

    move-result-object v0

    .line 830
    :goto_9
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-object v0

    .line 825
    :catch_22
    move-exception v1

    goto :goto_9
.end method

.method public getPlayingIndex()J
    .registers 9

    .prologue
    .line 1645
    const-wide/16 v1, -0x1

    .line 1646
    .local v1, index:J
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_c

    :cond_a
    move-wide v3, v1

    .line 1658
    .end local v1           #index:J
    .local v3, index:J
    :goto_b
    return-wide v3

    .line 1650
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_c
    :try_start_c
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_30

    move-result-wide v1

    .line 1656
    :goto_16
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1658
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_b

    .line 1651
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_30
    move-exception v0

    .line 1653
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public getPlayingPosition()J
    .registers 10

    .prologue
    const-wide/16 v3, 0x0

    .line 1681
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_b

    .line 1716
    :cond_a
    :goto_a
    return-wide v3

    .line 1690
    :cond_b
    const-wide/16 v1, 0x0

    .line 1693
    .local v1, position:J
    :try_start_d
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_35

    move-result-wide v1

    .line 1701
    :goto_17
    cmp-long v5, v1, v3

    if-gez v5, :cond_1d

    .line 1702
    const-wide/16 v1, 0x0

    .line 1705
    :cond_1d
    iget-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_4f

    iget-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4f

    .line 1706
    iget-wide v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto :goto_a

    .line 1697
    :catch_35
    move-exception v0

    .line 1699
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingPosition] Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1708
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4f
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_64

    iget-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_64

    .line 1710
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2711

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1712
    :cond_64
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1715
    cmp-long v3, v1, v3

    if-lez v3, :cond_71

    .end local v1           #position:J
    :goto_6c
    iput-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1716
    iget-wide v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_a

    .line 1715
    .restart local v1       #position:J
    :cond_71
    iget-wide v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_6c
.end method

.method public getPlaylistSize()J
    .registers 9

    .prologue
    .line 1627
    const-wide/16 v1, -0x1

    .line 1628
    .local v1, total:J
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_c

    :cond_a
    move-wide v3, v1

    .line 1640
    .end local v1           #total:J
    .local v3, total:J
    :goto_b
    return-wide v3

    .line 1632
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_c
    :try_start_c
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_30

    move-result-wide v1

    .line 1638
    :goto_16
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getCount] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1640
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_b

    .line 1633
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_30
    move-exception v0

    .line 1635
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public getRenderer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 786
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 788
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    .registers 6
    .parameter "rendererID"

    .prologue
    .line 841
    const/4 v0, 0x0

    .line 845
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20

    move-result-object v0

    .line 852
    :goto_7
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-object v0

    .line 847
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public getRepeatState()I
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;
    .registers 6

    .prologue
    .line 859
    const/4 v1, 0x0

    .line 863
    .local v1, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_start_1
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 870
    :goto_b
    return-object v1

    .line 865
    :catch_c
    move-exception v0

    .line 867
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getServiceControlStatus] Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method getSlideShowSatatus()I
    .registers 6

    .prologue
    .line 1663
    const/4 v0, 0x1

    .line 1664
    .local v0, nRet:I
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_b

    :cond_9
    move v1, v0

    .line 1676
    .end local v0           #nRet:I
    .local v1, nRet:I
    :goto_a
    return v1

    .line 1669
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_17

    move-result v0

    :goto_15
    move v1, v0

    .line 1676
    .end local v0           #nRet:I
    .restart local v1       #nRet:I
    goto :goto_a

    .line 1671
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :catch_17
    move-exception v2

    goto :goto_15
.end method

.method public getState()I
    .registers 5

    .prologue
    .line 1618
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 1620
    :try_start_3
    const-string v0, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getState] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1622
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public getVolume()I
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public isPlaying()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1721
    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_f

    .line 1722
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-nez v3, :cond_d

    .line 1725
    :goto_c
    return v1

    :cond_d
    move v1, v2

    .line 1722
    goto :goto_c

    .line 1724
    :cond_f
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 1725
    .local v0, state:I
    if-eqz v0, :cond_1d

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_1e

    :cond_1d
    move v2, v1

    :cond_1e
    move v1, v2

    goto :goto_c
.end method

.method public isShuffleEnabled()Z
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return v0
.end method

.method public playNext()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 1066
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_a

    .line 1102
    :cond_9
    :goto_9
    return-void

    .line 1069
    :cond_a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6c

    .line 1076
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playNext(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/16 v0, -0x40c5

    const-string v1, "Command playNext in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_9

    .line 1081
    :cond_6c
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playNext] Request next"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :try_start_73
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_8c

    .line 1087
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_9

    .line 1098
    :catch_89
    move-exception v0

    goto/16 :goto_9

    .line 1091
    :cond_8c
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_a5

    .line 1092
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1095
    :goto_9a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1094
    :cond_a5
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_ab} :catch_89

    goto :goto_9a
.end method

.method public playPrevious()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 1026
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_a

    .line 1062
    :cond_9
    :goto_9
    return-void

    .line 1029
    :cond_a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6c

    .line 1036
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playPrevious(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const/16 v0, -0x40c6

    const-string v1, "Command playPrevious in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_9

    .line 1041
    :cond_6c
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playPrevious] Request previous"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :try_start_73
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_8c

    .line 1047
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_9

    .line 1058
    :catch_89
    move-exception v0

    goto/16 :goto_9

    .line 1051
    :cond_8c
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_a5

    .line 1052
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1055
    :goto_9a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1054
    :cond_a5
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_ab} :catch_89

    goto :goto_9a
.end method

.method public powerOff()V
    .registers 4

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1128
    :cond_8
    :goto_8
    return-void

    .line 1109
    :cond_9
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[powerOff] Request powerOff"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :try_start_10
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1114
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 1116
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1117
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    if-eqz v0, :cond_36

    .line 1118
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->lockCommand(I)V

    .line 1119
    :cond_36
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 1120
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->resumeMirror(Landroid/content/Context;)V

    .line 1121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4b} :catch_4c

    goto :goto_8

    .line 1124
    :catch_4c
    move-exception v0

    goto :goto_8
.end method

.method public refreshRendererList()V
    .registers 4

    .prologue
    .line 1816
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_5

    .line 1829
    :goto_4
    return-void

    .line 1821
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 1822
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_4

    .line 1824
    :catch_14
    move-exception v0

    .line 1827
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public requestPause()V
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 988
    :cond_8
    :goto_8
    return-void

    .line 967
    :cond_9
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_33

    .line 968
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] error status for requestPause(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/16 v0, -0x40c7

    const-string v1, "Command requestPause in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_8

    .line 973
    :cond_33
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[pause] Request pause"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :try_start_3a
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_51

    .line 978
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 982
    :goto_48
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    goto :goto_8

    .line 984
    :catch_4f
    move-exception v0

    goto :goto_8

    .line 980
    :cond_51
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_4f

    goto :goto_48
.end method

.method public requestStop()V
    .registers 5

    .prologue
    .line 996
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1022
    :cond_8
    :goto_8
    return-void

    .line 999
    :cond_9
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    .line 1000
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] error status for requestStop()"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/16 v0, -0x40c8

    const-string v1, "Command requestStop in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_8

    .line 1005
    :cond_29
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] Request stop"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :try_start_30
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_4b

    .line 1010
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 1015
    :goto_3e
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1016
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_8

    .line 1018
    :catch_49
    move-exception v0

    goto :goto_8

    .line 1012
    :cond_4b
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_54} :catch_49

    goto :goto_3e
.end method

.method public runAsSlideShow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .registers 6
    .parameter "rendererId"

    .prologue
    .line 797
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, result:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method saveRenderer()Z
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveRenderer(Ljava/lang/String;)Z
    .registers 6
    .parameter "renderer"

    .prologue
    .line 776
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    .line 777
    :cond_8
    const/4 v1, 0x0

    .line 780
    :goto_9
    return v1

    .line 779
    :cond_a
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, result:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method public seekTo(J)V
    .registers 6
    .parameter "timeSecs"

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1169
    :cond_8
    :goto_8
    return-void

    .line 1135
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    .line 1136
    const-wide/16 p1, 0x0

    .line 1138
    :cond_11
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_60

    .line 1143
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] error status for seekTo(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/16 v0, -0x40c9

    const-string v1, "Command seekTo in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_8

    .line 1148
    :cond_60
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] Request seekTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :try_start_78
    iput-wide p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1154
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_83} :catch_84

    goto :goto_8

    .line 1165
    :catch_84
    move-exception v0

    goto :goto_8
.end method

.method public setControllerStatusListener(Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;)V
    .registers 3
    .parameter "controllerListener"

    .prologue
    .line 305
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 306
    return-void
.end method

.method public setDTCPIPDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 656
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 671
    :cond_a
    :goto_a
    return-void

    .line 659
    :cond_b
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 664
    :try_start_26
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 666
    :catch_30
    move-exception v0

    .line 669
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 705
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 720
    :cond_a
    :goto_a
    return-void

    .line 708
    :cond_b
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 713
    :try_start_26
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 715
    :catch_30
    move-exception v0

    .line 718
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 584
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 600
    :cond_a
    :goto_a
    return-void

    .line 587
    :cond_b
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 592
    :try_start_26
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 593
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_a

    .line 595
    :catch_34
    move-exception v0

    .line 598
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 6
    .parameter "filePath"

    .prologue
    .line 679
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_3d

    .line 680
    :cond_a
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_15

    .line 681
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: mService is null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_15
    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_33

    .line 683
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] Error: mRendererCreated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_33
    if-nez p1, :cond_3c

    .line 685
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: filePath is null"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_3c
    :goto_3c
    return-void

    .line 689
    :cond_3d
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 694
    :try_start_58
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_62

    goto :goto_3c

    .line 696
    :catch_62
    move-exception v0

    .line 699
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    .line 559
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-nez p3, :cond_f

    .line 576
    :cond_e
    :goto_e
    return-void

    .line 565
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 568
    :try_start_12
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_e

    .line 571
    :catch_21
    move-exception v6

    .line 574
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public setDataSource([II)V
    .registers 12
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 729
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 744
    :cond_a
    :goto_a
    return-void

    .line 732
    :cond_b
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 737
    :try_start_30
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_49

    const-wide/16 v6, 0x1f40

    :goto_3e
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_43} :catch_44

    goto :goto_a

    .line 739
    :catch_44
    move-exception v8

    .line 742
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 737
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_49
    const-wide/16 v6, 0x0

    goto :goto_3e
.end method

.method public setIPListSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 633
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 648
    :cond_a
    :goto_a
    return-void

    .line 636
    :cond_b
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 641
    :try_start_26
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 643
    :catch_30
    move-exception v0

    .line 646
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public setIPSingleSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 609
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 624
    :cond_a
    :goto_a
    return-void

    .line 612
    :cond_b
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 617
    :try_start_26
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 619
    :catch_30
    move-exception v0

    .line 622
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .registers 5
    .parameter "index"
    .parameter "path"

    .prologue
    .line 1858
    :try_start_0
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_9

    .line 1859
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1864
    :cond_9
    :goto_9
    return-void

    .line 1860
    :catch_a
    move-exception v0

    .line 1862
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .registers 11
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, result:I
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_9

    if-nez p1, :cond_d

    .line 405
    :cond_9
    iput-boolean v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    move v3, v4

    .line 443
    :goto_c
    return v3

    .line 407
    :cond_d
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] renderId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", statusBarData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :try_start_2f
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 412
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 413
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] createMediaController result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-eqz v1, :cond_d4

    move v5, v3

    :goto_56
    iput-boolean v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 416
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    .line 417
    .local v2, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v2, :cond_8e

    .line 418
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 419
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 420
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 421
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iput-object v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererID:Ljava/lang/String;

    .line 423
    const/4 v5, 0x2

    if-ne v1, v5, :cond_8e

    .line 425
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 426
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 427
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 431
    :cond_8e
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 432
    iget v5, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 433
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer()Z

    .line 434
    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 435
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] init DMR state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cur state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_ce} :catch_d6

    .line 443
    .end local v2           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_ce
    if-eqz v1, :cond_f0

    :goto_d0
    iput-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    goto/16 :goto_c

    :cond_d4
    move v5, v4

    .line 414
    goto :goto_56

    .line 437
    :catch_d6
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .end local v0           #e:Ljava/lang/Exception;
    :cond_f0
    move v3, v4

    .line 443
    goto :goto_d0
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .registers 7
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_6

    .line 554
    :goto_5
    return v1

    .line 521
    :cond_6
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_34

    .line 524
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 528
    :cond_34
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 532
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 533
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$4;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 554
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .registers 7
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_d

    .line 466
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_c
    :goto_c
    return v1

    .line 470
    :cond_d
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 473
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_c

    .line 476
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_81

    .line 477
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 478
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_6a
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 490
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 491
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;

    invoke-direct {v2, p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$3;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 513
    const/4 v1, 0x1

    goto :goto_c

    .line 480
    :cond_81
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d7

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d7

    .line 481
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 482
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 485
    :cond_d7
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public setRendererStatusListener(Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;)V
    .registers 3
    .parameter "rendererListener"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 292
    return-void
.end method

.method public setRepeat(I)V
    .registers 5
    .parameter "nRepeatState"

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1186
    :cond_8
    :goto_8
    return-void

    .line 1176
    :cond_9
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] Request setRepeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :try_start_21
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_8

    .line 1182
    :catch_2b
    move-exception v0

    goto :goto_8
.end method

.method public setServerStatusListener(Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;)V
    .registers 3
    .parameter "serverListener"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 301
    return-void
.end method

.method public setShuffle()V
    .registers 5

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1231
    :cond_8
    :goto_8
    return-void

    .line 1221
    :cond_9
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setShuffleEnabled]"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :try_start_10
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_1d
    invoke-interface {v1, v2, v3, v0}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_8

    .line 1227
    :catch_21
    move-exception v0

    goto :goto_8

    .line 1225
    :cond_23
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method declared-synchronized setState(IZ)V
    .registers 10
    .parameter "newState"
    .parameter "fromMiddleLayer"

    .prologue
    const/4 v6, 0x1

    .line 1240
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 1241
    .local v2, statePrev:I
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] >>> newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    if-eqz p2, :cond_39

    if-ne p1, v6, :cond_39

    .line 1244
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->unlockCommand()V

    .line 1246
    :cond_39
    sparse-switch v2, :sswitch_data_348

    .line 1582
    :goto_3c
    :sswitch_3c
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] <<< newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_a5

    .line 1586
    :try_start_6b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1587
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v3, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1588
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_345

    .line 1590
    if-eq v2, p1, :cond_81

    .line 1592
    :try_start_78
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1593
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_81

    .line 1594
    invoke-virtual {v0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_a5

    .line 1604
    .end local v0           #listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    :cond_81
    :goto_81
    monitor-exit p0

    return-void

    .line 1250
    :sswitch_83
    sparse-switch p1, :sswitch_data_36a

    .line 1283
    :try_start_86
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a5

    goto :goto_81

    .line 1240
    .end local v2           #statePrev:I
    :catchall_a5
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1254
    .restart local v2       #statePrev:I
    :sswitch_a8
    if-eqz p2, :cond_c9

    .line 1255
    :try_start_aa
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 1258
    :cond_c9
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    const/16 p1, 0x64

    .line 1260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1261
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1262
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1263
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1273
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_e6
    const/16 p1, 0x64

    .line 1274
    goto/16 :goto_3c

    .line 1278
    :sswitch_ea
    const/16 p1, 0x3e8

    .line 1279
    goto/16 :goto_3c

    .line 1293
    :sswitch_ee
    sparse-switch p1, :sswitch_data_380

    .line 1359
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_BUFFERING/STATE_TRANSITIONING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1297
    :sswitch_111
    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_11f

    .line 1299
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    const/4 p1, 0x2

    goto/16 :goto_3c

    .line 1304
    :cond_11f
    const/16 p1, 0x69

    .line 1306
    goto/16 :goto_3c

    .line 1310
    :sswitch_123
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_137

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_137

    .line 1313
    const/4 p1, 0x2

    .line 1314
    goto/16 :goto_3c

    .line 1316
    :cond_137
    const/4 p1, 0x0

    .line 1317
    goto/16 :goto_3c

    .line 1321
    :sswitch_13a
    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_147

    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_147

    .line 1323
    const/4 p1, 0x2

    .line 1324
    goto/16 :goto_3c

    .line 1326
    :cond_147
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    const/16 p1, 0x64

    .line 1328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1329
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1330
    const/16 v3, 0x6a

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1331
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1336
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_165
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1337
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1338
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1339
    const/16 v3, 0x68

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1341
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-ne v3, v4, :cond_188

    .line 1342
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1344
    :cond_188
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1349
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_192
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3c

    .line 1354
    :sswitch_19b
    const/16 p1, 0x3e8

    .line 1355
    goto/16 :goto_3c

    .line 1367
    :sswitch_19f
    sparse-switch p1, :sswitch_data_39a

    .line 1391
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1371
    :sswitch_1c2
    const/4 p1, 0x2

    .line 1372
    goto/16 :goto_3c

    .line 1376
    :sswitch_1c5
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1377
    const/4 p1, 0x2

    .line 1378
    goto/16 :goto_3c

    .line 1381
    :sswitch_1cf
    const/4 p1, 0x1

    .line 1382
    goto/16 :goto_3c

    .line 1386
    :sswitch_1d2
    const/16 p1, 0x3e8

    .line 1387
    goto/16 :goto_3c

    .line 1399
    :sswitch_1d6
    sparse-switch p1, :sswitch_data_3ac

    .line 1439
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1403
    :sswitch_1f9
    if-eqz p2, :cond_205

    .line 1405
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[setState][STATE_PAUSED] deny play from middler layer and keep pause state"

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const/4 p1, 0x2

    .line 1407
    goto/16 :goto_3c

    .line 1409
    :cond_205
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1410
    const/16 p1, 0x64

    .line 1411
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1412
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1413
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1414
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1419
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_222
    const/4 p1, 0x0

    .line 1420
    goto/16 :goto_3c

    .line 1424
    :sswitch_225
    const/16 p1, 0x69

    .line 1425
    goto/16 :goto_3c

    .line 1429
    :sswitch_229
    const/16 p1, 0x64

    .line 1430
    goto/16 :goto_3c

    .line 1434
    :sswitch_22d
    const/16 p1, 0x3e8

    .line 1435
    goto/16 :goto_3c

    .line 1447
    :sswitch_231
    sparse-switch p1, :sswitch_data_3c2

    .line 1497
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PLAYING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1451
    :sswitch_254
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    const/16 p1, 0x64

    .line 1453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1454
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1455
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1456
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1461
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_271
    iget-boolean v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_27f

    .line 1463
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1464
    const/4 p1, 0x2

    goto/16 :goto_3c

    .line 1468
    :cond_27f
    const/16 p1, 0x69

    .line 1470
    goto/16 :goto_3c

    .line 1474
    :sswitch_283
    if-eqz p2, :cond_81

    .line 1475
    const/16 p1, 0x64

    .line 1476
    goto/16 :goto_3c

    .line 1482
    :sswitch_289
    const/4 p1, 0x2

    .line 1483
    goto/16 :goto_3c

    .line 1487
    :sswitch_28c
    const/4 p1, 0x1

    .line 1488
    goto/16 :goto_3c

    .line 1492
    :sswitch_28f
    const/16 p1, 0x3e8

    .line 1493
    goto/16 :goto_3c

    .line 1505
    :sswitch_293
    sparse-switch p1, :sswitch_data_3dc

    .line 1536
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1509
    :sswitch_2b6
    if-eqz p2, :cond_2d8

    .line 1510
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1513
    :cond_2d8
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1514
    const/16 p1, 0x64

    .line 1515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1516
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1517
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1518
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3c

    .line 1523
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_2f5
    const/16 p1, 0x3e8

    .line 1524
    goto/16 :goto_3c

    .line 1528
    :sswitch_2f9
    if-eqz p2, :cond_81

    .line 1529
    const/16 p1, 0x64

    .line 1530
    goto/16 :goto_3c

    .line 1544
    :sswitch_2ff
    sparse-switch p1, :sswitch_data_3ea

    .line 1564
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_AUTOPLAYWANTSHOWSTOP]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1547
    :sswitch_322
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1548
    const/16 p1, 0x64

    .line 1549
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1550
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1551
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1552
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_33d
    .catchall {:try_start_aa .. :try_end_33d} :catchall_a5

    goto/16 :goto_3c

    .line 1556
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_33f
    if-eqz p2, :cond_81

    .line 1557
    const/16 p1, 0x64

    .line 1558
    goto/16 :goto_3c

    .line 1588
    :catchall_345
    move-exception v3

    :try_start_346
    monitor-exit v4
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_345

    :try_start_347
    throw v3
    :try_end_348
    .catchall {:try_start_347 .. :try_end_348} :catchall_a5

    .line 1246
    :sswitch_data_348
    .sparse-switch
        0x0 -> :sswitch_231
        0x1 -> :sswitch_293
        0x2 -> :sswitch_1d6
        0x7 -> :sswitch_83
        0x64 -> :sswitch_ee
        0x69 -> :sswitch_19f
        0x6a -> :sswitch_ee
        0x3e8 -> :sswitch_2ff
    .end sparse-switch

    .line 1250
    :sswitch_data_36a
    .sparse-switch
        0x0 -> :sswitch_3c
        0x2 -> :sswitch_3c
        0x5 -> :sswitch_e6
        0x66 -> :sswitch_a8
        0x3e8 -> :sswitch_ea
    .end sparse-switch

    .line 1293
    :sswitch_data_380
    .sparse-switch
        0x0 -> :sswitch_123
        0x66 -> :sswitch_13a
        0x67 -> :sswitch_111
        0x68 -> :sswitch_192
        0x6a -> :sswitch_165
        0x3e8 -> :sswitch_19b
    .end sparse-switch

    .line 1367
    :sswitch_data_39a
    .sparse-switch
        0x1 -> :sswitch_1cf
        0x2 -> :sswitch_1c5
        0x66 -> :sswitch_1c2
        0x3e8 -> :sswitch_1d2
    .end sparse-switch

    .line 1399
    :sswitch_data_3ac
    .sparse-switch
        0x0 -> :sswitch_222
        0x5 -> :sswitch_229
        0x66 -> :sswitch_1f9
        0x67 -> :sswitch_225
        0x3e8 -> :sswitch_22d
    .end sparse-switch

    .line 1447
    :sswitch_data_3c2
    .sparse-switch
        0x1 -> :sswitch_28c
        0x2 -> :sswitch_289
        0x5 -> :sswitch_283
        0x66 -> :sswitch_254
        0x67 -> :sswitch_271
        0x3e8 -> :sswitch_28f
    .end sparse-switch

    .line 1505
    :sswitch_data_3dc
    .sparse-switch
        0x5 -> :sswitch_2f9
        0x66 -> :sswitch_2b6
        0x3e8 -> :sswitch_2f5
    .end sparse-switch

    .line 1544
    :sswitch_data_3ea
    .sparse-switch
        0x5 -> :sswitch_33f
        0x66 -> :sswitch_322
    .end sparse-switch
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    .line 748
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 763
    :cond_8
    :goto_8
    return-void

    .line 751
    :cond_9
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 756
    :try_start_13
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 758
    :catch_20
    move-exception v6

    .line 761
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public setVolume(I)V
    .registers 5
    .parameter "volume"

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 1209
    :cond_8
    :goto_8
    return-void

    .line 1198
    :cond_9
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume] Request volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :try_start_21
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1203
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 1205
    :catch_2f
    move-exception v0

    goto :goto_8
.end method

.method public startPlay()V
    .registers 5

    .prologue
    .line 875
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_9

    .line 907
    :cond_8
    :goto_8
    return-void

    .line 878
    :cond_9
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6c

    .line 885
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/16 v0, -0x40c4

    const-string v1, "Command startPlay in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_8

    .line 890
    :cond_6c
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[startPlay] Request play"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :try_start_73
    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_90

    .line 895
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 900
    :goto_81
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 901
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto/16 :goto_8

    .line 903
    :catch_8d
    move-exception v0

    goto/16 :goto_8

    .line 897
    :cond_90
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_99} :catch_8d

    goto :goto_81
.end method

.method public startPlay(J)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v3, 0x2

    .line 910
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_a

    .line 933
    :cond_9
    :goto_9
    return-void

    .line 913
    :cond_a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6c

    .line 920
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/16 v0, -0x40ca

    const-string v1, "Command startPlay(long) in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_9

    .line 925
    :cond_6c
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :try_start_84
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 929
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 930
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9b} :catch_9d

    goto/16 :goto_9

    .line 931
    :catch_9d
    move-exception v0

    goto/16 :goto_9
.end method

.method public startPlay(Ljava/lang/String;)V
    .registers 6
    .parameter "contentID"

    .prologue
    const/4 v3, 0x2

    .line 936
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_a

    .line 959
    :cond_9
    :goto_9
    return-void

    .line 939
    :cond_a
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_6c

    .line 946
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/16 v0, -0x40cb

    const-string v1, "Command startPlay(String) in wrong status"

    invoke-direct {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_9

    .line 951
    :cond_6c
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :try_start_84
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 956
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9b} :catch_9d

    goto/16 :goto_9

    .line 957
    :catch_9d
    move-exception v0

    goto/16 :goto_9
.end method

.method updatePlayingPosition()V
    .registers 5

    .prologue
    .line 1608
    invoke-virtual {p0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    .line 1609
    .local v1, position:J
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-wide v1, v3, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 1611
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1612
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_11

    .line 1613
    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .line 1614
    :cond_11
    return-void
.end method
