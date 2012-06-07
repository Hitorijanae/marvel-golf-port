.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final HDMI_BIT:I = 0x800

.field private static final HDMI_CMD_480P:I = 0x2

.field private static final HDMI_CMD_720P:I = 0x1

.field private static final HDMI_CMD_AUTO:I = 0x0

.field private static final HDMI_CMD_OFF:I = 0x0

.field private static final HDMI_CMD_ON:I = 0x1

.field private static final HDMI_DISABLE_PERMISSION:Ljava/lang/String; = "com.sprint.android.permission.DISABLE_HDMI"

.field private static final HDMI_MODE_PRESENTATION:I = 0x211e

.field private static final HDMI_MODE_RESOLUTION:I = 0x211f

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final KEY_PARAMETER_MEDIA_TRACK_BASE:I = 0x4e2

.field private static final KEY_PARAMETER_MEDIA_TRACK_INFO:I = 0x514

.field private static final KEY_PARAMETER_TIMED_TEXT_ADD_OUT_OF_BAND_SOURCE:I = 0x3e9

.field private static final KEY_PARAMETER_TIMED_TEXT_TRACK_INDEX:I = 0x3e8

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String; = null

.field private static final MM_SETTINGS:[Ljava/lang/String; = null

.field private static final PATH_HDMI_SETTING:Ljava/lang/String; = "/data/hdmi_setting"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static mNetworkType:Ljava/lang/String;

.field private static mOutputSettingMode:I


# instance fields
.field private final DISABLE_DLNA:I

.field private final DLNAPrepareFailed:I

.field private final SenseVersion:F

.field private final TAG_UB:Ljava/lang/String;

.field private final UB_START:I

.field private final UB_STOP:I

.field private mContext:Landroid/content/Context;

.field private mDLNAAgent:Landroid/media/MediaPluginDLNA;

.field private final mDLNAFlag:Z

.field private mDLNAInitDone:Z

.field private mDLNAMode:Z

.field private mDoSeekFlag:Z

.field private final mDummyHeight:I

.field private final mDummyWidth:I

.field private mDuration:I

.field private mEventAudioOnly:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mForceDisableDLNA:Z

.field private mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

.field private mHDMIObserver:Landroid/media/HDMIStatusObserver;

.field private mICallBack:Landroid/os/IBinder;

.field private mIsHDMIPlug:Z

.field private mListenerContext:I

.field private mMode:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mNeedSetHDMI:Z

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPrepareDone:Z

.field private mReleaseMediaPlayer:Z

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUseFileDescriptor:Z

.field mUseProxy:Ljava/lang/Boolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 563
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 3103
    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 3378
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "httpproxyip"

    aput-object v1, v0, v3

    const-string/jumbo v1, "httpproxyport"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rtspproxyip"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtspproxyport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "minudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "maxudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "buffertime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 3392
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 582
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 585
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDLNAFlag:Z

    .line 586
    const/16 v1, 0x1e0

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyWidth:I

    .line 587
    const/16 v1, 0x140

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyHeight:I

    .line 588
    const/16 v1, -0x1f4

    iput v1, p0, Landroid/media/MediaPlayer;->DLNAPrepareFailed:I

    .line 589
    const/16 v1, 0x4000

    iput v1, p0, Landroid/media/MediaPlayer;->DISABLE_DLNA:I

    .line 590
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 591
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 592
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 593
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 594
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 595
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 596
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 597
    iput v2, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 598
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 599
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 602
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    .line 1349
    iput v4, p0, Landroid/media/MediaPlayer;->UB_START:I

    .line 1350
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaPlayer;->UB_STOP:I

    .line 1351
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Landroid/media/MediaPlayer;->TAG_UB:Ljava/lang/String;

    .line 2127
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    .line 2131
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 2968
    iput v2, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 2971
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 2972
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 2974
    iput-object v3, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 2975
    iput-object v3, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 3177
    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 3377
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 616
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 617
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 618
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v1, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 621
    :cond_71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_99

    .line 622
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 632
    :goto_7e
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 633
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x91

    if-ne v1, v2, :cond_98

    .line 635
    invoke-direct {p0}, Landroid/media/MediaPlayer;->hasHDMIPermission()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 636
    invoke-direct {p0}, Landroid/media/MediaPlayer;->registerHDMINotification()V

    .line 639
    :cond_95
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIResolution()I

    .line 641
    :cond_98
    return-void

    .line 623
    :cond_99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 624
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_7e

    .line 626
    :cond_a7
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_7e
.end method

.method private native _disconnectSurface(Landroid/view/Surface;)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _unsetVideoSurface()V
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/MediaPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/media/MediaPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    return v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;ZZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    return-void
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .registers 11
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3438
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_76

    aget-object v1, v0, v3

    .line 3439
    .local v1, header_name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "streamplayer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3440
    .local v2, header_value:Ljava/lang/String;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 3441
    :cond_2e
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "header Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_4d
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_63

    .line 3444
    const-string/jumbo v5, "rtspuseragent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 3445
    const-string v5, "User-Agent"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3447
    :cond_66
    const-string/jumbo v5, "wapprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 3448
    const-string/jumbo v5, "x-wap-profile"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 3452
    .end local v1           #header_name:Ljava/lang/String;
    .end local v2           #header_value:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v8, 0x94

    .line 3457
    const-string/jumbo v5, "unknownPhoneType"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3459
    const/4 v5, 0x0

    :try_start_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 3460
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3462
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_49

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 3464
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=USB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    const-string/jumbo v5, "x-network-type"

    const-string v6, "USB"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    const-string/jumbo v5, "usb"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3608
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_48
    return-void

    .line 3469
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_49
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_83

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3471
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    const-string/jumbo v5, "x-network-type"

    const-string v6, "WIFI"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    const-string/jumbo v5, "wifi"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_77} :catch_78

    goto :goto_48

    .line 3603
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :catch_78
    move-exception v1

    .line 3604
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 3476
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_83
    const/4 v5, 0x6

    :try_start_84
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_c6

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 3478
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wimax"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    const-string/jumbo v5, "x-network-type"

    const-string v6, "Wimax"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    const-string/jumbo v5, "wimax"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3482
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_bd

    .line 3483
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_48

    .line 3486
    :cond_bd
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "wimax not sprint network"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 3489
    :cond_c6
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_25f

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_25f

    .line 3491
    const/4 v2, -0x1

    .line 3492
    .local v2, phoneNetworkType:I
    const-string/jumbo v5, "mobile"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_de} :catch_78

    .line 3495
    :try_start_de
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3497
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 3500
    .local v3, telNetworkType:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_10d} :catch_138

    move-result v2

    .line 3502
    packed-switch v3, :pswitch_data_26a

    .line 3524
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_111
    :goto_111
    packed-switch v2, :pswitch_data_276

    goto/16 :goto_48

    .line 3527
    :pswitch_116
    :try_start_116
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=GPRS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12d} :catch_78

    goto/16 :goto_48

    .line 3504
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_12f
    :try_start_12f
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknow telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_137} :catch_138

    goto :goto_111

    .line 3520
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_138
    move-exception v1

    .line 3521
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_139
    const-string v5, "MediaPlayer"

    const-string v6, "get telphoneManager exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_140} :catch_78

    goto :goto_111

    .line 3507
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_141
    :try_start_141
    const-string v5, "MediaPlayer"

    const-string v6, "GSM telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 3510
    :pswitch_149
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_111

    .line 3511
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_111

    .line 3516
    :pswitch_15c
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_SIP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_163} :catch_138

    goto :goto_111

    .line 3533
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_164
    :try_start_164
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EDGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3535
    const-string v5, "Bandwidth"

    const-string v6, "384000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3545
    :pswitch_17d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=UMTS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    const-string/jumbo v5, "x-network-type"

    const-string v6, "UMTS"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3551
    :pswitch_196
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    const-string/jumbo v5, "x-network-type"

    const-string/jumbo v6, "iS95"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3557
    :pswitch_1b0
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO 0"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    const-string v5, "Bandwidth"

    const-string v6, "2400000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3563
    :pswitch_1c9
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 A"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO A"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    const-string v5, "Bandwidth"

    const-string v6, "3100000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3569
    :pswitch_1e2
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 B"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO B"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    const-string v5, "Bandwidth"

    const-string v6, "4900000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3575
    :pswitch_1fb
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=1xRTT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    const-string/jumbo v5, "x-network-type"

    const-string v6, "1xRTT"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3577
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3581
    :pswitch_214
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=LTE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const-string/jumbo v5, "x-network-type"

    const-string v6, "LTE"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3587
    :pswitch_22d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=IDEN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    const-string/jumbo v5, "x-network-type"

    const-string v6, "IDEN"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3593
    :pswitch_246
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EHRPD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EHRPD"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 3600
    .end local v2           #phoneNetworkType:I
    :cond_25f
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknown network type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_267} :catch_78

    goto/16 :goto_48

    .line 3502
    nop

    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_141
        :pswitch_149
        :pswitch_15c
    .end packed-switch

    .line 3524
    :pswitch_data_276
    .packed-switch 0x1
        :pswitch_116
        :pswitch_164
        :pswitch_17d
        :pswitch_196
        :pswitch_1b0
        :pswitch_1c9
        :pswitch_1fb
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_22d
        :pswitch_1e2
        :pswitch_214
        :pswitch_246
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 13
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3401
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3403
    .local v1, host:Ljava/lang/String;
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_11f

    aget-object v4, v0, v2

    .line 3404
    .local v4, setting_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3405
    .local v5, setting_value:Ljava/lang/String;
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 3406
    :cond_32
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3410
    :cond_54
    const-string/jumbo v6, "httpproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_78

    const-string/jumbo v6, "httpproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_78

    const-string/jumbo v6, "rtspproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_78

    const-string/jumbo v6, "rtspproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_de

    .line 3413
    :cond_78
    iget-object v6, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b0

    .line 3414
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when NetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3418
    :cond_b0
    if-eqz v1, :cond_cc

    const-string/jumbo v6, "localhost"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c3

    const-string v6, "127.0.0.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_cc

    .line 3419
    :cond_c3
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "localhost"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3423
    :cond_cc
    const-string v6, "0.0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_de

    .line 3424
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "skip proxy setting 0.0.0.0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 3430
    :cond_de
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_51

    .line 3433
    .end local v4           #setting_name:Ljava/lang/String;
    .end local v5           #setting_value:Ljava/lang/String;
    :cond_11f
    return-void
.end method

.method private static native checkMediaStreamActive(I)Z
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 825
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 826
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_d

    move-object v0, v8

    .line 843
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_c
    return-object v0

    .line 828
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 829
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 830
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 831
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_27} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_27} :catch_3b

    goto :goto_c

    .line 833
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_28
    move-exception v7

    .line 834
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_30
    move-object v0, v8

    .line 843
    goto :goto_c

    .line 836
    :catch_32
    move-exception v7

    .line 837
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 839
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3b
    move-exception v7

    .line 840
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 770
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 7
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 788
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 789
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 790
    if-eqz p2, :cond_d

    .line 791
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 793
    :cond_d
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_24

    .line 806
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_10
    return-object v1

    .line 795
    :catch_11
    move-exception v0

    .line 796
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v0           #ex:Ljava/io/IOException;
    :goto_19
    const/4 v1, 0x0

    goto :goto_10

    .line 798
    :catch_1b
    move-exception v0

    .line 799
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 801
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_24
    move-exception v0

    .line 802
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private getContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 3267
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 3268
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3276
    :goto_6
    return-object v0

    .line 3270
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3271
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 3272
    const-string v0, "MediaPlayer"

    const-string v1, "can not get currentApplication context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    const/4 v0, 0x0

    goto :goto_6

    .line 3276
    :cond_1a
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    goto :goto_6
.end method

.method private getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 868
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 869
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 875
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 876
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 879
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_2c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 880
    if-eqz v11, :cond_94

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_94

    .line 881
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 882
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 883
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 885
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 887
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_2c .. :try_end_93} :catchall_9b

    move-result-object v10

    .line 894
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_94
    if-eqz v11, :cond_9a

    .line 895
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 896
    const/4 v11, 0x0

    .line 900
    :cond_9a
    return-object v10

    .line 894
    :catchall_9b
    move-exception v1

    if-eqz v11, :cond_a2

    .line 895
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 896
    const/4 v11, 0x0

    .line 894
    :cond_a2
    throw v1
.end method

.method private getHDMIPermission()I
    .registers 6

    .prologue
    .line 2979
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2980
    .local v0, Pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2981
    .local v1, Uid:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.sprint.android.permission.DISABLE_HDMI"

    invoke-interface {v3, v4, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v3

    .line 2983
    .end local v0           #Pid:I
    .end local v1           #Uid:I
    :goto_12
    return v3

    .line 2982
    :catch_13
    move-exception v2

    .line 2983
    .local v2, e:Landroid/os/RemoteException;
    const/4 v3, -0x1

    goto :goto_12
.end method

.method private getHDMIResolution()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2988
    invoke-direct {p0}, Landroid/media/MediaPlayer;->readHDMISetting()V

    .line 2990
    sget v0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    packed-switch v0, :pswitch_data_3a

    .line 3002
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 3006
    :goto_b
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDMIResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    iget v0, p0, Landroid/media/MediaPlayer;->mMode:I

    return v0

    .line 2993
    :pswitch_2e
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_b

    .line 2996
    :pswitch_31
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_b

    .line 2999
    :pswitch_35
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_b

    .line 2990
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method private getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I
    .registers 11
    .parameter "wdMgr"

    .prologue
    const/4 v8, 0x3

    .line 1171
    const/4 v2, -0x1

    .line 1172
    .local v2, ret:I
    invoke-virtual {p1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 1173
    .local v3, state:I
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    if-ne v3, v8, :cond_28

    move v4, v3

    .line 1194
    .end local v3           #state:I
    .local v4, state:I
    :goto_27
    return v4

    .line 1178
    .end local v4           #state:I
    .restart local v3       #state:I
    :cond_28
    const/4 v0, 0x0

    .line 1179
    .local v0, count:I
    :goto_29
    const/16 v5, 0xf

    if-ge v0, v5, :cond_56

    .line 1181
    const-wide/16 v5, 0xc8

    :try_start_2f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_76

    .line 1186
    invoke-virtual {p1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 1187
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    if-ne v3, v8, :cond_80

    .line 1193
    :cond_56
    :goto_56
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][Return state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1194
    .end local v3           #state:I
    .restart local v4       #state:I
    goto :goto_27

    .line 1182
    .end local v4           #state:I
    .restart local v3       #state:I
    :catch_76
    move-exception v1

    .line 1183
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1190
    .end local v1           #e:Ljava/lang/Exception;
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 1142
    :try_start_1
    const-string/jumbo v7, "wireless_display"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/WirelessDisplayManager;

    .line 1143
    .local v5, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v5, :cond_e

    move-object v1, v6

    .line 1166
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_d
    :goto_d
    return-object v1

    .line 1146
    .restart local v5       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_e
    const/4 v1, 0x0

    .line 1147
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 1148
    .local v2, dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_24

    .line 1149
    :cond_1b
    const-string v7, "MediaPlayer"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1150
    goto :goto_d

    .line 1153
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 1154
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iget-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v7, :cond_28

    .line 1155
    move-object v1, v0

    .line 1156
    const-string v7, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Found dongle via getDiscoveryDongleList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_51
    if-nez v1, :cond_d

    .line 1161
    const-string v7, "MediaPlayer"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_5b

    goto :goto_d

    .line 1164
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v2           #dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_5b
    move-exception v3

    .line 1165
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1166
    goto :goto_d
.end method

.method private getWirelessDisplayStatus()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_13

    .line 1076
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_12
    :goto_12
    return v1

    .line 1079
    :cond_13
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1080
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_28

    .line 1081
    const-string v2, "MediaPlayer"

    const-string v3, "getSystemService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1084
    :cond_28
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1085
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "in Mirror mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1086
    goto :goto_12

    .line 1088
    :cond_38
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "not in Mirror mode, check nearby ready dongle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->startMirror(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1090
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "there is a ready to use dongle and user select to play on TV"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1091
    goto :goto_12
.end method

.method private hasHDMIPermission()Z
    .registers 5

    .prologue
    .line 3038
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIPermission()I

    move-result v0

    .line 3039
    .local v0, permission:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasHDMIPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    if-nez v0, :cond_20

    .line 3041
    const/4 v1, 0x0

    .line 3044
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method private initDLNA()I
    .registers 2

    .prologue
    .line 3298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3299
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDuration(I)V

    .line 3300
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNAController()V

    .line 3302
    const/4 v0, 0x0

    return v0
.end method

.method private initDLNAController()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1217
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "initDLNAController() in"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_22

    .line 1221
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    monitor-enter v3

    .line 1222
    :try_start_11
    const-string v1, "MediaPlayer"

    const-string v4, "[initDLNAController][reuse original DLNA agent]"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 1224
    monitor-exit v3

    .line 1275
    :cond_1e
    :goto_1e
    return-void

    .line 1224
    :catchall_1f
    move-exception v1

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v1

    .line 1228
    :cond_22
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_39

    .line 1229
    const-string v1, "MediaPlayer"

    const-string v3, "context is null,create DLNA Controller failed.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1231
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 1232
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_1e

    .line 1238
    :cond_39
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 1239
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :try_start_5d
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1243
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 1244
    .local v2, proj:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1245
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_cc

    .line 1246
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1247
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1248
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1249
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get absolute path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_a8} :catch_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_a8} :catch_f7

    .line 1267
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_a8
    :goto_a8
    const-string v1, "MediaPlayer"

    const-string v3, "Create MediaPlugin type DLNA in initDLNAController()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v1, Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/media/MediaPluginDLNA;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1269
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_1e

    .line 1270
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v1, p0}, Landroid/media/MediaPlugin$OnEventListener;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1271
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPluginDLNA;->setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V

    goto/16 :goto_1e

    .line 1252
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_cc
    :try_start_cc
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "null cursor, error when retrive absolute path, use original path..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/SecurityException; {:try_start_cc .. :try_end_d4} :catch_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cc .. :try_end_d4} :catch_f7

    goto :goto_a8

    .line 1254
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_d5
    move-exception v8

    .line 1255
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_a8

    .line 1257
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_f7
    move-exception v8

    .line 1258
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not retrieve absolute path from content uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_a8

    .line 1261
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :cond_119
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12f

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 1262
    :cond_12f
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streaming uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    .line 1265
    :cond_14c
    const-string v1, "MediaPlayer"

    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8
.end method

.method private isDrmUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 862
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 863
    const/4 v0, 0x1

    .line 864
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isStreamActive(I)Z
    .registers 2
    .parameter "streamType"

    .prologue
    .line 3362
    invoke-static {p0}, Landroid/media/MediaPlayer;->checkMediaStreamActive(I)Z

    move-result v0

    return v0
.end method

.method private native nativeSetAudioStreamType(I)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2625
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2626
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_b

    .line 2634
    :cond_a
    :goto_a
    return-void

    .line 2630
    :cond_b
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_a

    .line 2631
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2632
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private readHDMISetting()V
    .registers 6

    .prologue
    .line 3107
    const/4 v1, 0x0

    .line 3109
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_31

    .line 3110
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_13} :catch_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_53

    .line 3121
    if-eqz v2, :cond_4e

    .line 3122
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_4a

    .line 3123
    .end local v2           #reader:Ljava/io/BufferedReader;
    :goto_18
    const/4 v1, 0x0

    .line 3130
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :cond_19
    :goto_19
    return-void

    .line 3112
    :catch_1a
    move-exception v0

    .line 3113
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1b
    :try_start_1b
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_3d

    .line 3121
    if-eqz v1, :cond_19

    .line 3122
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_18

    .line 3126
    :catch_2c
    move-exception v0

    .line 3127
    .local v0, e:Ljava/io/IOException;
    :goto_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 3116
    .end local v0           #e:Ljava/io/IOException;
    :catch_31
    move-exception v0

    .line 3117
    .restart local v0       #e:Ljava/io/IOException;
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3121
    if-eqz v1, :cond_19

    .line 3122
    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_18

    .line 3126
    :catch_3b
    move-exception v0

    goto :goto_2d

    .line 3120
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3d
    move-exception v3

    .line 3121
    :goto_3e
    if-eqz v1, :cond_44

    .line 3122
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_45

    .line 3123
    const/4 v1, 0x0

    .line 3120
    :cond_44
    :goto_44
    throw v3

    .line 3126
    :catch_45
    move-exception v0

    .line 3127
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 3126
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_4a
    move-exception v0

    .line 3127
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_4e
    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_19

    .line 3120
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_50
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3e

    .line 3116
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_53
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_32

    .line 3112
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_56
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1b
.end method

.method private registerHDMINotification()V
    .registers 6

    .prologue
    .line 3049
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "registerHDMINotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3052
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3083
    :goto_15
    return-void

    .line 3056
    :cond_16
    new-instance v2, Landroid/media/HDMIStatusObserver;

    invoke-direct {v2}, Landroid/media/HDMIStatusObserver;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 3057
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-nez v2, :cond_29

    .line 3058
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusObserver create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3062
    :cond_29
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-static {}, Landroid/media/HDMIStatusObserver;->isHDMIPlug()Z

    move-result v1

    .line 3063
    .local v1, isPlug:Z
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHDMIPlug(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->onHDMIStateChanged(Z)V

    .line 3066
    new-instance v2, Landroid/media/MediaPlayer$2;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/media/HDMIStatusObserver;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 3076
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    if-nez v2, :cond_63

    .line 3077
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusListener create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3081
    :cond_63
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    invoke-virtual {v2, v3}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 3082
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v2}, Landroid/media/HDMIStatusObserver;->startWatching()V

    goto :goto_15
.end method

.method private resetDLNAParameters()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3282
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3283
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 3284
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 3285
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 3286
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 3287
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3288
    iput v1, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 3289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 3290
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 3291
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 3294
    return-void
.end method

.method private restoreEffect(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 3337
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore effect  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :try_start_19
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3340
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_28

    .line 3341
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->restoreEffect(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 3346
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_28
    :goto_28
    return-void

    .line 3343
    :catch_29
    move-exception v0

    .line 3344
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "act"

    .prologue
    .line 1387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1391
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1392
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1393
    return-void
.end method

.method private setHDMI(Z)V
    .registers 9
    .parameter "enableHDMI"

    .prologue
    const/4 v4, 0x1

    .line 3022
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 3023
    .local v2, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3025
    .local v1, rep:Landroid/os/Parcel;
    const/16 v5, 0x211e

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    if-eqz p1, :cond_40

    move v0, v4

    .line 3028
    .local v0, param:I
    :goto_11
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3030
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    .line 3031
    .local v3, retcode:I
    if-eqz v3, :cond_1c

    .line 3032
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 3034
    :cond_1c
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHDMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    return-void

    .line 3027
    .end local v0           #param:I
    .end local v3           #retcode:I
    :cond_40
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static setHDMIOutput(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 3170
    sput p0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 3171
    invoke-static {}, Landroid/media/MediaPlayer;->writeHDMIsetting()V

    .line 3172
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHDMIOutput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    return-void
.end method

.method private setHDMIResolution(I)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 3011
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 3012
    .local v1, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3014
    .local v0, rep:Landroid/os/Parcel;
    const/16 v3, 0x211f

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v2

    .line 3018
    .local v2, retcode:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHDMIResolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    return-void
.end method

.method private setHtcSpecificAPdefault()V
    .registers 5

    .prologue
    .line 3349
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "set HtcSpecificAP flag to default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :try_start_8
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3352
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_17

    .line 3353
    invoke-interface {v1}, Landroid/media/IAudioService;->setHtcSpecificAPdefault()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    .line 3358
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_17
    :goto_17
    return-void

    .line 3355
    :catch_18
    move-exception v0

    .line 3356
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private setLPAflag()V
    .registers 6

    .prologue
    .line 1293
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() in"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1d

    .line 1296
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :goto_14
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() out"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1299
    :cond_1d
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1300
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_32

    .line 1301
    const-string v3, "MediaPlayer"

    const-string v4, "getSystemService failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1304
    :cond_32
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1305
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1306
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1307
    .local v1, reply:Landroid/os/Parcel;
    const/16 v3, 0x22e0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1310
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1313
    .end local v1           #reply:Landroid/os/Parcel;
    .end local v2           #request:Landroid/os/Parcel;
    :cond_59
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1314
    .restart local v2       #request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1315
    .restart local v1       #reply:Landroid/os/Parcel;
    const/16 v3, 0x22e1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1318
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private static setPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 3162
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 3167
    :goto_1a
    return-void

    .line 3164
    :catch_1b
    move-exception v0

    .line 3165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private setWirelessDisplayStatus(Z)V
    .registers 6
    .parameter "status"

    .prologue
    .line 1202
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 1203
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "mContext is null, can\'t setMirrorDisplayOnOff!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_10
    return-void

    .line 1206
    :cond_11
    const-string v2, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessDisplayStatus to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_43

    const-string v1, "TRUE"

    :goto_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wireless_display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1208
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_46

    .line 1209
    const-string v1, "MediaPlayer"

    const-string v2, "getSystemService failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1206
    .end local v0           #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_43
    const-string v1, "FALSE"

    goto :goto_23

    .line 1212
    .restart local v0       #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_46
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    goto :goto_10
.end method

.method private startMirror(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1099
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "startMirror in"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :try_start_9
    const-string v5, "MediaPlayer"

    const-string v6, "[startMirror]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string/jumbo v5, "wireless_display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/WirelessDisplayManager;

    .line 1103
    .local v3, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v3, :cond_1c

    .line 1136
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_1b
    return v4

    .line 1106
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1c
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 1107
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    if-nez v1, :cond_4d

    .line 1108
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "startMirror out no ready to use dongle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2b

    goto :goto_1b

    .line 1131
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_2b
    move-exception v2

    .line 1132
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startMirror] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_44
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "startMirror out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1113
    .restart local v1       #dongleInfo:Lcom/htc/service/DongleInfo;
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1114
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "user don\'t want to play on TV"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1119
    :cond_5c
    iget-object v0, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 1120
    .local v0, bssid:Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 1121
    invoke-virtual {v3, v0}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_73

    .line 1123
    const-string v5, "MediaPlayer"

    const-string v6, "[startMirror] selectDongle() in ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v4, 0x1

    goto :goto_1b

    .line 1127
    :cond_73
    const-string v5, "MediaPlayer"

    const-string v6, "[startMirror] selectDongle() not get into ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7a} :catch_2b

    goto :goto_1b
.end method

.method private start_stop_notify(I)V
    .registers 8
    .parameter "act"

    .prologue
    .line 1354
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_a

    .line 1355
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 1385
    :goto_9
    return-void

    .line 1358
    :cond_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1359
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_36

    .line 1360
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaPlayer.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_9

    .line 1381
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_18
    move-exception v0

    .line 1383
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1363
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_36
    :try_start_36
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V

    .line 1379
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_18

    goto :goto_9
.end method

.method private stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 1753
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1754
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :goto_9
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->start_stop_notify(I)V

    .line 1758
    :cond_c
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1f

    .line 1759
    if-eqz p1, :cond_27

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1760
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1765
    :cond_1f
    :goto_1f
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1766
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1767
    return-void

    .line 1754
    :cond_25
    const/4 v0, 0x2

    goto :goto_9

    .line 1761
    :cond_27
    if-nez p1, :cond_1f

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1762
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1f
.end method

.method private triggerBeatsLogo(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 3312
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beats setting  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :try_start_18
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3315
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_40

    .line 3316
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerBeatsLogo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->triggerBeatsLogo(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_41

    .line 3322
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_40
    :goto_40
    return-void

    .line 3319
    :catch_41
    move-exception v0

    .line 3320
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method private triggerBeatsLogo_audio(ZZZ)V
    .registers 9
    .parameter "on"
    .parameter "audio_on"
    .parameter "audio_flag"

    .prologue
    .line 3324
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beats_audio setting  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :try_start_18
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3327
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_40

    .line 3328
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerBeatsLogo_audio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->triggerBeatsLogo_audio(ZZZ)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_41

    .line 3334
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_40
    :goto_40
    return-void

    .line 3331
    :catch_41
    move-exception v0

    .line 3332
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method private unregisterHDMINotification()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3086
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "unregisterHDMINotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-eqz v0, :cond_19

    .line 3089
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0}, Landroid/media/HDMIStatusObserver;->stopWatching()V

    .line 3090
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0, v2}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 3091
    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 3093
    :cond_19
    return-void
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 1771
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1773
    :cond_12
    return-void

    .line 1771
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static writeHDMIsetting()V
    .registers 5

    .prologue
    .line 3133
    const/4 v1, 0x0

    .line 3135
    .local v1, writer:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_41

    .line 3136
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_d
    sget v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_81
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_7e

    .line 3147
    if-eqz v2, :cond_84

    .line 3148
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_6b

    .line 3149
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_6e

    .line 3150
    const/4 v1, 0x0

    .line 3151
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :try_start_1b
    const-string v3, "/data/hdmi_setting"
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1d} :catch_71

    :try_start_1d
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_73

    .line 3158
    :cond_20
    :goto_20
    return-void

    .line 3138
    :catch_21
    move-exception v0

    .line 3139
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_22
    :try_start_22
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_5b

    .line 3147
    if-eqz v1, :cond_20

    .line 3148
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3149
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3150
    const/4 v1, 0x0

    .line 3151
    const-string v3, "/data/hdmi_setting"

    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_3c

    goto :goto_20

    .line 3154
    :catch_3c
    move-exception v0

    .line 3155
    .local v0, e:Ljava/io/IOException;
    :goto_3d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 3142
    .end local v0           #e:Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 3143
    .restart local v0       #e:Ljava/io/IOException;
    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5b

    .line 3147
    if-eqz v1, :cond_20

    .line 3148
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_75

    .line 3149
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_77

    .line 3150
    const/4 v1, 0x0

    .line 3151
    :try_start_4e
    const-string v3, "/data/hdmi_setting"
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_50} :catch_79

    :try_start_50
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_20

    .line 3154
    :catch_54
    move-exception v0

    goto :goto_3d

    .end local v0           #e:Ljava/io/IOException;
    :catch_56
    move-exception v0

    .line 3155
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3146
    .end local v0           #e:Ljava/io/IOException;
    :cond_5a
    :goto_5a
    throw v3

    :catchall_5b
    move-exception v3

    .line 3147
    :goto_5c
    if-eqz v1, :cond_5a

    .line 3148
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3149
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3150
    const/4 v1, 0x0

    .line 3151
    const-string v4, "/data/hdmi_setting"

    invoke-static {v4}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6a} :catch_56

    goto :goto_5a

    .line 3154
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_6b
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_3d

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_6e
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_3d

    :catch_71
    move-exception v0

    goto :goto_3d

    :catch_73
    move-exception v0

    goto :goto_3d

    .restart local v0       #e:Ljava/io/IOException;
    :catch_75
    move-exception v0

    goto :goto_3d

    :catch_77
    move-exception v0

    goto :goto_3d

    :catch_79
    move-exception v0

    goto :goto_3d

    .line 3146
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catchall_7b
    move-exception v3

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_5c

    .line 3142
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_7e
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_42

    .line 3138
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_81
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_22

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_84
    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_20
.end method


# virtual methods
.method public native _attachAuxEffect(I)V
.end method

.method public native _getAudioSessionId()I
.end method

.method public native _getCurrentPosition()I
.end method

.method public native _getDuration()I
.end method

.method public native _getVideoHeight()I
.end method

.method public native _getVideoWidth()I
.end method

.method public native _isLooping()Z
.end method

.method public native _isPlaying()Z
.end method

.method public native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAuxEffectSendLevel(F)V
.end method

.method public native _setLooping(Z)V
.end method

.method public native _setVolume(FF)V
.end method

.method public attachAuxEffect(I)V
    .registers 3
    .parameter "effectId"

    .prologue
    .line 2262
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_5

    .line 2265
    :goto_4
    return-void

    .line 2264
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_attachAuxEffect(I)V

    goto :goto_4
.end method

.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public disableTimedText()Z
    .registers 3

    .prologue
    .line 2479
    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0
.end method

.method public doStart()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1502
    const-string v3, "MediaPlayer"

    const-string v4, "doStart() in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_156

    .line 1506
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v3, :cond_107

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    if-eqz v3, :cond_107

    .line 1508
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    if-nez v3, :cond_ef

    .line 1509
    const-string v3, "MediaPlayer"

    const-string v4, "enable DLNA, release MediaPlayer!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1511
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 1514
    :try_start_34
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "process DLNA icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_11f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    if-nez v3, :cond_11f

    .line 1516
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v21

    .line 1517
    .local v21, surface:Landroid/view/Surface;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 1519
    .local v9, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4020005

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1524
    .local v2, img:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 1525
    .local v13, destWidthScaleRate:F
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v3, v4

    .line 1528
    .local v12, destHeigthScaleRate:F
    const/high16 v19, 0x3f80

    .line 1529
    .local v19, scaleWidth:F
    const/high16 v17, 0x3f80

    .line 1530
    .local v17, scaleHeight:F
    cmpl-float v3, v13, v12

    if-ltz v3, :cond_10f

    .line 1531
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v12

    .line 1532
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v12

    .line 1539
    :goto_94
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v19, v3

    .line 1540
    .local v20, scaleWidthRate:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v17, v3

    .line 1543
    .local v18, scaleHeightRate:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1544
    .local v7, mtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1545
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1549
    .local v16, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v10, v3, 0x2

    .line 1550
    .local v10, centreX:I
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v11, v3, 0x2

    .line 1551
    .local v11, centreY:I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1552
    .local v15, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1553
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1554
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1555
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/MediaPlayer;->_disconnectSurface(Landroid/view/Surface;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_ef} :catch_128

    .line 1564
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v7           #mtx:Landroid/graphics/Matrix;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v10           #centreX:I
    .end local v11           #centreY:I
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v17           #scaleHeight:F
    .end local v18           #scaleHeightRate:F
    .end local v19           #scaleWidth:F
    .end local v20           #scaleWidthRate:F
    .end local v21           #surface:Landroid/view/Surface;
    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v3}, Landroid/media/MediaPluginDLNA;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_14e

    .line 1565
    const-string v3, "MediaPlayer"

    const-string v4, "handleStart()...(other state -> start)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v3}, Landroid/media/MediaPluginDLNA;->handleStart()V

    .line 1571
    :cond_107
    :goto_107
    const-string v3, "MediaPlayer"

    const-string v4, "doStart() out (DLNA mode)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :goto_10e
    return-void

    .line 1534
    .restart local v2       #img:Landroid/graphics/Bitmap;
    .restart local v9       #c:Landroid/graphics/Canvas;
    .restart local v12       #destHeigthScaleRate:F
    .restart local v13       #destWidthScaleRate:F
    .restart local v17       #scaleHeight:F
    .restart local v19       #scaleWidth:F
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_10f
    :try_start_10f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v13

    .line 1535
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v13

    goto/16 :goto_94

    .line 1557
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v17           #scaleHeight:F
    .end local v19           #scaleWidth:F
    .end local v21           #surface:Landroid/view/Surface;
    :cond_11f
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "mSurfaceHolder is null or seek already"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_127} :catch_128

    goto :goto_ef

    .line 1559
    :catch_128
    move-exception v14

    .line 1560
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "process DLNA icon failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 1568
    .end local v14           #e:Ljava/lang/Exception;
    :cond_14e
    const-string v3, "MediaPlayer"

    const-string v4, "already start, skip..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 1576
    :cond_156
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-ne v3, v4, :cond_179

    .line 1577
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    if-eqz v3, :cond_170

    .line 1578
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 1579
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1582
    :cond_170
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaPlayer;->mMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->setHDMIResolution(I)V

    .line 1584
    :cond_179
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1586
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1587
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1a7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a7

    .line 1588
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v3

    if-nez v3, :cond_1b0

    .line 1589
    const-string v3, "MediaPlayer"

    const-string v4, "beats setting trigger in start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1606
    :cond_1a7
    :goto_1a7
    const-string v3, "MediaPlayer"

    const-string v4, "doStart() out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 1593
    :cond_1b0
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEventAudioOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v3, :cond_1ec

    .line 1595
    const-string v3, "MediaPlayer"

    const-string v4, "beats setting trigger in start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1597
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_1a7

    .line 1600
    :cond_1ec
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1601
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1602
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_1a7
.end method

.method public enableTimedText()Z
    .registers 2

    .prologue
    .line 2470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->enableTimedTextTrackIndex(I)Z

    move-result v0

    return v0
.end method

.method public enableTimedTextTrackIndex(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 2458
    if-gez p1, :cond_4

    .line 2459
    const/4 v0, 0x0

    .line 2461
    :goto_3
    return v0

    :cond_4
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    goto :goto_3
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 2491
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2237
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 2239
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getAudioSessionId()I

    move-result v0

    goto :goto_5
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 1867
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_11

    .line 1868
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_f

    .line 1869
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleGetCurrentPosition()I

    move-result v0

    .line 1875
    :goto_e
    return v0

    .line 1871
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 1875
    :cond_11
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_e
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 1889
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 1891
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v0

    goto :goto_6
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .registers 4
    .parameter "key"

    .prologue
    .line 2384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2385
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2387
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2388
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .registers 7
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1920
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_7

    move-object v0, v2

    .line 1936
    :cond_6
    :goto_6
    return-object v0

    .line 1922
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1923
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1925
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1927
    goto :goto_6

    .line 1932
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1934
    goto :goto_6
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .registers 3
    .parameter "key"

    .prologue
    .line 2358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2359
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2360
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 2370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2371
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2373
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    return-object v1
.end method

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 1808
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x140

    .line 1810
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoHeight()I

    move-result v0

    goto :goto_6
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 1788
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x1e0

    .line 1790
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoWidth()I

    move-result v0

    goto :goto_6
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 9
    .parameter "request"
    .parameter "reply"

    .prologue
    const/4 v2, 0x0

    .line 685
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_7

    move v1, v2

    .line 700
    :goto_6
    return v1

    .line 687
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-eqz v3, :cond_3b

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 689
    .local v0, nID:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invoke nID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v3, 0x4000

    if-ne v0, v3, :cond_38

    .line 691
    const-string v3, "MediaPlayer"

    const-string v4, "force disable DLNA mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 694
    :cond_38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 698
    .end local v0           #nID:I
    :cond_3b
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v1

    .line 699
    .local v1, retcode:I
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_6
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 2161
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 2163
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isLooping()Z

    move-result v0

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1824
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_11

    .line 1825
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isPlaying()Z

    move-result v0

    .line 1830
    :goto_e
    return v0

    .line 1826
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 1830
    :cond_11
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isPlaying()Z

    move-result v0

    goto :goto_e
.end method

.method public newRequest()Landroid/os/Parcel;
    .registers 3

    .prologue
    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 662
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    return-object v0
.end method

.method public onHDMIStateChanged(Z)V
    .registers 4
    .parameter "isPlugin"

    .prologue
    .line 3096
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "onHDMIStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eq v0, p1, :cond_11

    .line 3098
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 3099
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 3101
    :cond_11
    return-void
.end method

.method public pause()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1663
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1f

    .line 1667
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_16

    .line 1668
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handlePause()V

    .line 1670
    :cond_16
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() out (DLNA mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :goto_1e
    return-void

    .line 1675
    :cond_1f
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1676
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1677
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_43

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 1678
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1679
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1690
    :cond_43
    :goto_43
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1683
    :cond_4c
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_43

    .line 1685
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_43
.end method

.method public prepare()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1328
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepare()V

    .line 1329
    return-void
.end method

.method public prepareAsync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1344
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepareAsync()V

    .line 1345
    return-void
.end method

.method public release()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2000
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v2, :cond_28

    .line 2004
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    monitor-enter v3

    .line 2005
    :try_start_13
    const-string v2, "MediaPlayer"

    const-string/jumbo v4, "remove mDLNAAgent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v2}, Landroid/media/MediaPluginDLNA;->handleRelease()V

    .line 2007
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 2008
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    .line 2009
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_88

    .line 2013
    :cond_28
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2014
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 2015
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2016
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2017
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2018
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2019
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2020
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2021
    iput-object v5, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2022
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v2, v3, :cond_45

    .line 2023
    invoke-direct {p0}, Landroid/media/MediaPlayer;->unregisterHDMINotification()V

    .line 2025
    :cond_45
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 2026
    iget v2, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7c

    iget v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    if-ne v2, v8, :cond_7c

    .line 2027
    invoke-static {v8, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 2028
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 2029
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 2043
    :cond_6b
    :goto_6b
    :try_start_6b
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 2044
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_7c

    .line 2045
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_be

    .line 2052
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_7c
    :goto_7c
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 2054
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return-void

    .line 2009
    :catchall_88
    move-exception v2

    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v2

    .line 2033
    :cond_8b
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v2, :cond_6b

    .line 2035
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v2, v7}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 2037
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 2038
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v2, v7}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_6b

    .line 2047
    :catch_be
    move-exception v0

    .line 2048
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c
.end method

.method public reset()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2065
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2069
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_20

    .line 2070
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_1c

    .line 2071
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleReset()V

    .line 2072
    iput-object v5, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 2074
    :cond_1c
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 2096
    :goto_1f
    return-void

    .line 2079
    :cond_20
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 2080
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_41

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 2081
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2082
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 2094
    :cond_41
    :goto_41
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2095
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2086
    :cond_4f
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_41

    .line 2088
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_41
.end method

.method public seekTo(I)V
    .registers 3
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1845
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_e

    .line 1846
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_d

    .line 1847
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1}, Landroid/media/MediaPluginDLNA;->handleSeekTo(I)V

    .line 1854
    :cond_d
    :goto_d
    return-void

    .line 1852
    :cond_e
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_seekTo(I)V

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    goto :goto_d
.end method

.method public setAudioSessionId(I)V
    .registers 3
    .parameter "sessionId"

    .prologue
    .line 2221
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_5

    .line 2224
    :goto_4
    return-void

    .line 2223
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioSessionId(I)V

    goto :goto_4
.end method

.method public setAudioStreamType(I)V
    .registers 6
    .parameter "streamtype"

    .prologue
    .line 2110
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 2113
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_7

    .line 2125
    :cond_6
    :goto_6
    return-void

    .line 2115
    :cond_7
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->nativeSetAudioStreamType(I)V

    .line 2116
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 2118
    :try_start_d
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 2119
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_6

    .line 2120
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_6

    .line 2121
    .end local v1           #service:Landroid/media/IAudioService;
    :catch_1f
    move-exception v0

    .line 2122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setAuxEffectSendLevel(F)V
    .registers 3
    .parameter "level"

    .prologue
    .line 2407
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_5

    .line 2410
    :goto_4
    return-void

    .line 2409
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_4
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 856
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 858
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 859
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 913
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 916
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 921
    :cond_31
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 922
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 925
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_47

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 927
    :cond_47
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 975
    :cond_4e
    :goto_4e
    return-void

    .line 932
    :cond_4f
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 934
    const/4 v7, 0x0

    .line 936
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 937
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_ed
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_5c} :catch_8a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5c} :catch_e0

    move-result-object v7

    .line 938
    if-nez v7, :cond_65

    .line 955
    if-eqz v7, :cond_4e

    .line 956
    :goto_61
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_4e

    .line 944
    :cond_65
    :try_start_65
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_79

    .line 945
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 955
    :goto_76
    if-eqz v7, :cond_4e

    goto :goto_61

    .line 947
    :cond_79
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_89
    .catchall {:try_start_65 .. :try_end_89} :catchall_ed
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_89} :catch_8a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_89} :catch_e0

    goto :goto_76

    .line 950
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_8a
    move-exception v6

    .line 951
    .local v6, ex:Ljava/lang/SecurityException;
    :try_start_8b
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_ed

    .line 955
    if-eqz v7, :cond_99

    .line 956
    .end local v6           #ex:Ljava/lang/SecurityException;
    :goto_96
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 960
    :cond_99
    if-nez p3, :cond_a0

    .line 961
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 964
    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 966
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v8, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 967
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 968
    invoke-direct {p0, v8, p2, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 970
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 973
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 952
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_e0
    move-exception v6

    .line 953
    .local v6, ex:Ljava/io/IOException;
    :try_start_e1
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_ed

    .line 955
    if-eqz v7, :cond_99

    goto :goto_96

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_ed
    move-exception v0

    if-eqz v7, :cond_f3

    .line 956
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 955
    :cond_f3
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1044
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1046
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2c

    .line 1050
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 1057
    :goto_2b
    return-void

    .line 1053
    :cond_2c
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) not use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 987
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 989
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1004
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1005
    .local v3, keys:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1007
    .local v5, values:[Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1008
    .local v4, tmpUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1009
    const-string v6, "MediaPlayer"

    const-string v7, "It is not a valid drm content path, setDataSource() fail!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_13
    return-void

    .line 1013
    :cond_14
    if-eqz p2, :cond_4a

    .line 1014
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1015
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1019
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v1

    .line 1020
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1025
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4a
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1027
    invoke-direct {p0, p1, v3, v5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "sh"

    .prologue
    .line 718
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_5

    .line 729
    :goto_4
    return-void

    .line 720
    :cond_5
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 722
    if-eqz p1, :cond_14

    .line 723
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 727
    .local v0, surface:Landroid/view/Surface;
    :goto_d
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 728
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_4

    .line 725
    .end local v0           #surface:Landroid/view/Surface;
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_d
.end method

.method public setDuration(I)V
    .registers 2
    .parameter "msec"

    .prologue
    .line 1897
    iput p1, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 1898
    return-void
.end method

.method public setLooping(Z)V
    .registers 3
    .parameter "looping"

    .prologue
    .line 2142
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_e

    .line 2143
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1}, Landroid/media/MediaPluginDLNA;->handleSetLooping(Z)V

    .line 2149
    :cond_d
    :goto_d
    return-void

    .line 2148
    :cond_e
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setLooping(Z)V

    goto :goto_d
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1964
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1970
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1972
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_22

    .line 1973
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1976
    :cond_22
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1978
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1980
    .end local v3           #t:Ljava/lang/Integer;
    :cond_41
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1982
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 1984
    .end local v3           #t:Ljava/lang/Integer;
    :cond_60
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2719
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2720
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2685
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2686
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2867
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2868
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2951
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2952
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2658
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2659
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2746
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2747
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2807
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2808
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2775
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2776
    return-void
.end method

.method public setParameter(II)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2337
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2339
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2340
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2324
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    return v1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 4
    .parameter "screenOn"

    .prologue
    .line 1741
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_17

    .line 1742
    if-eqz p1, :cond_12

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_12

    .line 1743
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_12
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1746
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1748
    :cond_17
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4
    .parameter "surface"

    .prologue
    .line 750
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 751
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 754
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 755
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 756
    return-void
.end method

.method public setVolume(FF)V
    .registers 4
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 2184
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_e

    .line 2185
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPluginDLNA;->handleSetVolume(FF)V

    .line 2191
    :cond_d
    :goto_d
    return-void

    .line 2190
    :cond_e
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_d
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1713
    const/4 v1, 0x0

    .line 1714
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_16

    .line 1715
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1716
    const/4 v1, 0x1

    .line 1717
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1719
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1722
    :cond_16
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1723
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1724
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1725
    if-eqz v1, :cond_3b

    .line 1726
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1728
    :cond_3b
    return-void
.end method

.method public start()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1411
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v1, :cond_ce

    .line 1416
    monitor-enter p0

    .line 1417
    const/4 v1, 0x1

    :try_start_10
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1419
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-eqz v1, :cond_24

    .line 1420
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1421
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() out check content type already"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    monitor-exit p0

    .line 1499
    :goto_23
    return-void

    .line 1426
    :cond_24
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1428
    const-string v1, "MediaPlayer"

    const-string v2, "Streaming path, should force enable DLNA if in mirror mode or have usage dongle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getWirelessDisplayStatus()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1430
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() DLNA streaming enable DLNA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1436
    :goto_47
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1437
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() DLNA streaming out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    monitor-exit p0

    goto :goto_23

    .line 1459
    :catchall_54
    move-exception v1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_54

    throw v1

    .line 1433
    :cond_57
    :try_start_57
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() DLNA streaming do local playback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_47

    .line 1442
    :cond_63
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1443
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "rtsp streaming, play directly!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1459
    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_57 .. :try_end_7a} :catchall_54

    .line 1460
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1461
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() DLNA out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1446
    :cond_85
    const/16 v1, 0x514

    :try_start_87
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1447
    .local v0, contentType:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/16 v1, 0x386

    if-eq v0, v1, :cond_ca

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v1, :cond_ca

    .line 1449
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getWirelessDisplayStatus()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1450
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "playback local content via DLNA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1452
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1453
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() DLNA out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    monitor-exit p0

    goto/16 :goto_23

    .line 1457
    :cond_ca
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V
    :try_end_cd
    .catchall {:try_start_87 .. :try_end_cd} :catchall_54

    goto :goto_79

    .line 1464
    .end local v0           #contentType:I
    :cond_ce
    const-string v1, "MediaPlayer"

    const-string v2, "force disable DLNA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1468
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x91

    if-ne v1, v2, :cond_ed

    .line 1469
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    if-eqz v1, :cond_e8

    .line 1470
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 1471
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1474
    :cond_e8
    iget v1, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setHDMIResolution(I)V

    .line 1476
    :cond_ed
    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1478
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1479
    iget v1, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_111

    iget v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_111

    .line 1480
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-nez v1, :cond_11b

    .line 1481
    const-string v1, "MediaPlayer"

    const-string v2, "beats setting trigger in start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1498
    :cond_111
    :goto_111
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "start() out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 1485
    :cond_11b
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEventAudioOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v1, :cond_14a

    .line 1487
    const-string v1, "MediaPlayer"

    const-string v2, "beats setting trigger in start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v5, v1, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1489
    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_111

    .line 1492
    :cond_14a
    invoke-direct {p0, v6, v5, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1493
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v1, v5}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1494
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_111
.end method

.method public native stepFrame(Z)Z
.end method

.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1618
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_22

    .line 1622
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1623
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_19

    .line 1624
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleStop()V

    .line 1626
    :cond_19
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() out (DLNA mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :goto_21
    return-void

    .line 1631
    :cond_22
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_2f

    .line 1632
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eqz v0, :cond_2f

    .line 1633
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1636
    :cond_2f
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1637
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1638
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_53

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 1639
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1640
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1651
    :cond_53
    :goto_53
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1644
    :cond_5c
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_53

    .line 1646
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_53
.end method
