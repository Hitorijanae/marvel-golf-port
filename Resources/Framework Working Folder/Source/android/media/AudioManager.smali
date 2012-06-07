.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/HtcIfAudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x80000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_GENERATION:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_GENERATION"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_NAME:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_NAME"

.field public static final EXTRA_REMOTE_CONTROL_EVENT_RECEIVER:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_EVENT_RECEIVER"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_FORCE_STREAM:I = 0x20

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x9

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REMOTE_CONTROL_CLIENT_CHANGED:Ljava/lang/String; = "android.media.REMOTE_CONTROL_CLIENT_CHANGED"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x3

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_OUTDOOR:I = 0x3

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM:I = 0xa

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static localLOGV:Z

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mICallBack:Landroid/os/IBinder;

.field private mVolumeControlStream:I

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioManager;->localLOGV:Z

    .line 180
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 1688
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 1694
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 1703
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 1742
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2099
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 367
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mHandler:Landroid/os/Handler;

    .line 369
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .parameter "id"

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 5
    .parameter "l"

    .prologue
    .line 1752
    if-nez p1, :cond_c

    .line 1753
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1755
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .prologue
    .line 373
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    .line 374
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 378
    .local v0, b:Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 376
    .end local v0           #b:Landroid/os/IBinder;
    :cond_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 377
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 378
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_6
.end method

.method private isDongleConnected()Z
    .registers 7

    .prologue
    .line 1410
    const/4 v0, 0x0

    .line 1411
    .local v0, active:Z
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1413
    .local v2, service:Landroid/media/IAudioService;
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isDongleConnected()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    .line 1417
    :goto_9
    return v0

    .line 1414
    :catch_a
    move-exception v1

    .line 1415
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in playSoundEffect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private isFMActive()Z
    .registers 7

    .prologue
    .line 1399
    const/4 v0, 0x0

    .line 1400
    .local v0, active:Z
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1402
    .local v2, service:Landroid/media/IAudioService;
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isFMActive()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    .line 1406
    :goto_9
    return v0

    .line 1403
    :catch_a
    move-exception v1

    .line 1404
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in playSoundEffect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static isSpecialCase()Z
    .registers 3

    .prologue
    .line 2349
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_c

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-ne v1, v2, :cond_e

    :cond_c
    const/4 v0, 0x1

    .line 2351
    .local v0, isSpecial:Z
    :goto_d
    return v0

    .line 2349
    .end local v0           #isSpecial:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValidRingerMode(I)Z
    .registers 2
    .parameter "ringerMode"

    .prologue
    .line 565
    if-ltz p0, :cond_5

    const/4 v0, 0x3

    if-le p0, v0, :cond_7

    .line 566
    :cond_5
    const/4 v0, 0x0

    .line 568
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private querySoundEffectsEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1590
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 8
    .parameter "l"

    .prologue
    .line 1840
    const/4 v2, 0x0

    .line 1841
    .local v2, status:I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 1842
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1844
    .local v1, service:Landroid/media/IAudioService;
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v2

    .line 1849
    :goto_12
    return v2

    .line 1846
    :catch_13
    move-exception v0

    .line 1847
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() from AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public adjustStreamVolume(III)V
    .registers 9
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 477
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStreamVolume(streamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 480
    .local v1, service:Landroid/media/IAudioService;
    :try_start_36
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 484
    :goto_39
    return-void

    .line 481
    :catch_3a
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 9
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 530
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustSuggestedStreamVolume(direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", suggestedStreamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 533
    .local v1, service:Landroid/media/IAudioService;
    :try_start_36
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 537
    :goto_39
    return-void

    .line 534
    :catch_3a
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public adjustVolume(II)V
    .registers 7
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 504
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 506
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 510
    :goto_7
    return-void

    .line 507
    :catch_8
    move-exception v0

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public forceVolumeControlStream(I)V
    .registers 2
    .parameter "streamType"

    .prologue
    .line 794
    iput p1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 795
    return-void
.end method

.method public getBeatsHeadset()I
    .registers 6

    .prologue
    .line 2324
    const/16 v1, -0x3e9

    .line 2325
    .local v1, headset:I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2327
    .local v2, service:Landroid/media/IAudioService;
    :try_start_6
    invoke-interface {v2}, Landroid/media/IAudioService;->getBeatsHeadset()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 2331
    :goto_a
    return v1

    .line 2328
    :catch_b
    move-exception v0

    .line 2329
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getBeatsHeadset"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public getBeatsState()Z
    .registers 6

    .prologue
    .line 2245
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2246
    .local v1, service:Landroid/media/IAudioService;
    const/4 v2, 0x0

    .line 2248
    .local v2, state:Z
    :try_start_5
    invoke-interface {v1}, Landroid/media/IAudioService;->getBeatsState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    .line 2252
    :goto_9
    return v2

    .line 2249
    :catch_a
    move-exception v0

    .line 2250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getBeatsState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getDevicesForStream(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 2205
    packed-switch p1, :pswitch_data_a

    .line 2215
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2213
    :pswitch_5
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_4

    .line 2205
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getGlobalEffect()I
    .registers 6

    .prologue
    .line 2295
    const/16 v1, -0x64

    .line 2296
    .local v1, effect:I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2298
    .local v2, service:Landroid/media/IAudioService;
    :try_start_6
    invoke-interface {v2}, Landroid/media/IAudioService;->getGlobalEffect()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 2302
    :goto_a
    return v1

    .line 2299
    :catch_b
    move-exception v0

    .line 2300
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getGlobalEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public getHeadsetProfile()[I
    .registers 5

    .prologue
    .line 695
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 697
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "getHeadsetProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-interface {v1}, Landroid/media/IAudioService;->getHeadsetProfile()[I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 701
    :goto_f
    return-object v2

    .line 699
    :catch_10
    move-exception v0

    .line 700
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dear object in getHeadsetProfile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 612
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 614
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 617
    :goto_8
    return v2

    .line 615
    :catch_9
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMode()I
    .registers 5

    .prologue
    .line 1274
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1276
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1279
    :goto_8
    return v2

    .line 1277
    :catch_9
    move-exception v0

    .line 1278
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    const/4 v2, -0x2

    goto :goto_8
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "keys"

    .prologue
    .line 1458
    const-string/jumbo v3, "isFMActive"

    if-ne p1, v3, :cond_31

    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, active:Z
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1462
    .local v2, service:Landroid/media/IAudioService;
    :try_start_a
    invoke-interface {v2}, Landroid/media/IAudioService;->isFMActive()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_14

    move-result v0

    .line 1466
    :goto_e
    if-eqz v0, :cond_2e

    const-string/jumbo v3, "true"

    .line 1469
    .end local v0           #active:Z
    .end local v2           #service:Landroid/media/IAudioService;
    :goto_13
    return-object v3

    .line 1463
    .restart local v0       #active:Z
    .restart local v2       #service:Landroid/media/IAudioService;
    :catch_14
    move-exception v1

    .line 1464
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in playSoundEffect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1466
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2e
    const-string v3, "false"

    goto :goto_13

    .line 1469
    .end local v0           #active:Z
    .end local v2           #service:Landroid/media/IAudioService;
    :cond_31
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_13
.end method

.method public getRingerMode()I
    .registers 5

    .prologue
    .line 547
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 549
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 552
    :goto_8
    return v2

    .line 550
    :catch_9
    move-exception v0

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getRouting(I)I
    .registers 3
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1383
    const/4 v0, -0x1

    return v0
.end method

.method public getSpeakerProfile()[I
    .registers 5

    .prologue
    .line 706
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 708
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "getSpeakerProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-interface {v1}, Landroid/media/IAudioService;->getSpeakerProfile()[I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 712
    :goto_f
    return-object v2

    .line 710
    :catch_10
    move-exception v0

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dear object in getSpeakerProfile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getStreamMaxVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 579
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 581
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 584
    :goto_8
    return v2

    .line 582
    :catch_9
    move-exception v0

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 597
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 599
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 602
    :goto_8
    return v2

    .line 600
    :catch_9
    move-exception v0

    .line 601
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getVibrateSetting(I)I
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 840
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 842
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 845
    :goto_8
    return v2

    .line 843
    :catch_9
    move-exception v0

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public handleKeyDown(II)V
    .registers 6
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    const/4 v1, -0x1

    .line 406
    packed-switch p1, :pswitch_data_18

    .line 429
    :goto_4
    return-void

    .line 413
    :pswitch_5
    const/16 v0, 0x11

    .line 414
    .local v0, flags:I
    iget v2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v2, v1, :cond_f

    .line 415
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 416
    or-int/lit8 v0, v0, 0x20

    .line 418
    :cond_f
    const/16 v2, 0x18

    if-ne p1, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    invoke-virtual {p0, v1, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_4

    .line 406
    :pswitch_data_18
    .packed-switch 0x18
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public handleKeyUp(II)V
    .registers 6
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 435
    packed-switch p1, :pswitch_data_1a

    .line 458
    :goto_3
    return-void

    .line 442
    :pswitch_4
    const/4 v0, 0x4

    .line 443
    .local v0, flags:I
    iget v1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 444
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 445
    or-int/lit8 v0, v0, 0x20

    .line 447
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_3

    .line 435
    nop

    :pswitch_data_1a
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public isBTConnected()Z
    .registers 7

    .prologue
    .line 969
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 971
    .local v2, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v2}, Landroid/media/IAudioService;->isBTConnected()Z

    move-result v0

    .line 972
    .local v0, check:Z
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBTConnected?   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 977
    .end local v0           #check:Z
    :goto_21
    return v0

    .line 974
    :catch_22
    move-exception v1

    .line 975
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isBTConnected()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isBeatsHeadset()Z
    .registers 6

    .prologue
    .line 2264
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2265
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 2267
    .local v1, isBeats:Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isBeatsHeadset()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    .line 2271
    :goto_9
    return v1

    .line 2268
    :catch_a
    move-exception v0

    .line 2269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isBeatsHeadset"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isBeatsHeadsetBT()Z
    .registers 6

    .prologue
    .line 2275
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2276
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 2278
    .local v1, isBeats:Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isBeatsHeadsetBT()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    .line 2282
    :goto_9
    return v1

    .line 2279
    :catch_a
    move-exception v0

    .line 2280
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isBeatsHeadsetBT"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 1182
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .registers 3

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 5

    .prologue
    .line 1158
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1160
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1163
    :goto_8
    return v2

    .line 1161
    :catch_9
    move-exception v0

    .line 1162
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isHeadsetPlugged()Z
    .registers 7

    .prologue
    .line 957
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 959
    .local v2, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v2}, Landroid/media/IAudioService;->isHeadsetPlugged()Z

    move-result v0

    .line 960
    .local v0, check:Z
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isHeadsetPlugged?   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 965
    .end local v0           #check:Z
    :goto_21
    return v0

    .line 962
    :catch_22
    move-exception v1

    .line 963
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isHeadsetPlugged()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isMicrophoneMute()Z
    .registers 2

    .prologue
    .line 1239
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1392
    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Landroid/media/AudioManager;->isDongleConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 1393
    .local v0, returnVal:Z
    :cond_15
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMusicActive()? --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return v0
.end method

.method public isSilentMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2111
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2112
    .local v0, ringerMode:I
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_a

    .line 2115
    .local v1, silentMode:Z
    :cond_9
    :goto_9
    return v1

    .line 2112
    .end local v1           #silentMode:Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isSpeakerphoneOn()Z
    .registers 5

    .prologue
    .line 898
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 900
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 903
    :goto_8
    return v2

    .line 901
    :catch_9
    move-exception v0

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 6
    .parameter "streamType"

    .prologue
    .line 777
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 779
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 782
    :goto_8
    return v2

    .line 780
    :catch_9
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isWiredHeadsetOn()Z
    .registers 3

    .prologue
    .line 1210
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1214
    const/4 v0, 0x0

    .line 1216
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public loadSoundEffects()V
    .registers 6

    .prologue
    .line 1599
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1601
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1605
    :goto_7
    return-void

    .line 1602
    :catch_8
    move-exception v0

    .line 1603
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public playSoundEffect(I)V
    .registers 7
    .parameter "effectType"

    .prologue
    .line 1539
    if-ltz p1, :cond_6

    const/16 v2, 0x9

    if-lt p1, v2, :cond_7

    .line 1553
    :cond_6
    :goto_6
    return-void

    .line 1543
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1547
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1549
    .local v1, service:Landroid/media/IAudioService;
    :try_start_11
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_6

    .line 1550
    :catch_15
    move-exception v0

    .line 1551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(IF)V
    .registers 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1574
    if-ltz p1, :cond_6

    const/16 v2, 0x9

    if-lt p1, v2, :cond_7

    .line 1584
    :cond_6
    :goto_6
    return-void

    .line 1578
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1580
    .local v1, service:Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 1581
    :catch_f
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preDispatchKeyEvent(II)V
    .registers 7
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 389
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1f

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1f

    iget-wide v0, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 397
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 400
    :cond_1f
    return-void
.end method

.method public queryGlobalEffectList()[I
    .registers 6

    .prologue
    .line 2306
    const/4 v1, 0x0

    .line 2307
    .local v1, list:[I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2309
    .local v2, service:Landroid/media/IAudioService;
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->queryGlobalEffectList()[I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v1

    .line 2313
    :goto_9
    return-object v1

    .line 2310
    :catch_a
    move-exception v0

    .line 2311
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in queryGlobalEffectList"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 1767
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1768
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1769
    monitor-exit v1

    .line 1773
    :goto_10
    return-void

    .line 1771
    :cond_11
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 7
    .parameter "eventReceiver"

    .prologue
    const/4 v4, 0x0

    .line 1863
    if-nez p1, :cond_4

    .line 1878
    :goto_3
    return-void

    .line 1866
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1867
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1872
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1874
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1875
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1877
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 8
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 1885
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 1886
    :cond_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :goto_b
    return-void

    .line 1889
    :cond_c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1892
    .local v1, service:Landroid/media/IAudioService;
    :try_start_10
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_b

    .line 1893
    :catch_14
    move-exception v0

    .line 1894
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 7
    .parameter "rcClient"

    .prologue
    .line 1936
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1948
    :cond_8
    :goto_8
    return-void

    .line 1939
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1941
    .local v1, service:Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IAudioService;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 1945
    :catch_1f
    move-exception v0

    .line 1946
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .parameter "rcd"

    .prologue
    .line 1975
    if-nez p1, :cond_3

    .line 1984
    :goto_2
    return-void

    .line 1978
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1980
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 1981
    :catch_b
    move-exception v0

    .line 1982
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public reloadAudioSettings()V
    .registers 6

    .prologue
    .line 2088
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2090
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2094
    :goto_7
    return-void

    .line 2091
    :catch_8
    move-exception v0

    .line 2092
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2013
    if-nez p1, :cond_3

    .line 2022
    :goto_2
    return-void

    .line 2016
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2018
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2019
    :catch_b
    move-exception v0

    .line 2020
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 14
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 1814
    const/4 v8, 0x0

    .line 1815
    .local v8, status:I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_7

    const/4 v1, 0x3

    if-le p3, v1, :cond_10

    .line 1817
    :cond_7
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid duration hint, audio focus request denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1830
    .end local v8           #status:I
    .local v9, status:I
    :goto_f
    return v9

    .line 1820
    .end local v9           #status:I
    .restart local v8       #status:I
    :cond_10
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 1822
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1824
    .local v0, service:Landroid/media/IAudioService;
    :try_start_17
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2d

    move-result v8

    :goto_2b
    move v9, v8

    .line 1830
    .end local v8           #status:I
    .restart local v9       #status:I
    goto :goto_f

    .line 1827
    .end local v9           #status:I
    .restart local v8       #status:I
    :catch_2d
    move-exception v7

    .line 1828
    .local v7, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocus() from AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public setBeatsHeadset(I)V
    .registers 2
    .parameter "headsetType"

    .prologue
    .line 2335
    return-void
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .registers 7
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 2236
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2238
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setBeatsState(ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2242
    :goto_7
    return-void

    .line 2239
    :catch_8
    move-exception v0

    .line 2240
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBeatsState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1173
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 1143
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1145
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1149
    :goto_7
    return-void

    .line 1146
    :catch_8
    move-exception v0

    .line 1147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setCSCallVolumeOn(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 920
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCSCallVolumeOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 923
    .local v1, service:Landroid/media/IAudioService;
    :try_start_23
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setCSCallVolumeOn(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    .line 927
    :goto_26
    return-void

    .line 924
    :catch_27
    move-exception v0

    .line 925
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setCSCallVolumeOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public setGlobalEffect(ILjava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "appName"

    .prologue
    .line 2286
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2288
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setGlobalEffect(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2292
    :goto_7
    return-void

    .line 2289
    :catch_8
    move-exception v0

    .line 2290
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setGlobalEffect"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setHeadsetProfile([I)V
    .registers 6
    .parameter "streamSettings"

    .prologue
    .line 675
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 677
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setHeadsetProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHeadsetProfile([I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 682
    :goto_f
    return-void

    .line 679
    :catch_10
    move-exception v0

    .line 680
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dear object in setHeadsetProfile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setIgnoreNotificationMuteSetting(Z)I
    .registers 7
    .parameter "ignore"

    .prologue
    .line 943
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIgnoreNotificationMuteSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 946
    .local v1, service:Landroid/media/IAudioService;
    :try_start_23
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setIgnoreNotificationMuteSetting(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_28

    .line 951
    :goto_26
    const/4 v2, 0x0

    return v2

    .line 947
    :catch_28
    move-exception v0

    .line 948
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setIgnoreNotificationMuteSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public setMicrophoneMute(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 1230
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1231
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 1258
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1260
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1264
    :goto_9
    return-void

    .line 1261
    :catch_a
    move-exception v0

    .line 1262
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 2
    .parameter "keyValuePairs"

    .prologue
    .line 1447
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1448
    return-void
.end method

.method public setRingerMode(I)V
    .registers 6
    .parameter "ringerMode"

    .prologue
    .line 633
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 642
    :goto_6
    return-void

    .line 636
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 638
    .local v1, service:Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 639
    :catch_f
    move-exception v0

    .line 640
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setRouting(III)V
    .registers 4
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1370
    return-void
.end method

.method public setSpeakerProfile([I)V
    .registers 6
    .parameter "streamSettings"

    .prologue
    .line 685
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 687
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSpeakerProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerProfile([I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 692
    :goto_f
    return-void

    .line 689
    :catch_10
    move-exception v0

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dear object in setSpeakerProfile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 884
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 886
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 890
    :goto_7
    return-void

    .line 887
    :catch_8
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamLastaudibleIndex(II)V
    .registers 8
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 665
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 667
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamLastaudiobleIndex(streamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setStreamLastaudibleIndex(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_30} :catch_31

    .line 672
    :goto_30
    return-void

    .line 669
    :catch_31
    move-exception v0

    .line 670
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamLastaudiobleIndex"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 763
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 765
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 769
    :goto_9
    return-void

    .line 766
    :catch_a
    move-exception v0

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamSolo(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 734
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 736
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 740
    :goto_9
    return-void

    .line 737
    :catch_a
    move-exception v0

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 9
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 655
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 657
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume(streamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3a} :catch_3b

    .line 662
    :goto_3a
    return-void

    .line 659
    :catch_3b
    move-exception v0

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method public setVibrateSetting(II)V
    .registers 7
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 866
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 868
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 872
    :goto_7
    return-void

    .line 869
    :catch_8
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setVolumePanelOrientation(I)V
    .registers 6
    .parameter "orientation"

    .prologue
    .line 2222
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2224
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumePanelOrientation(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2228
    :goto_7
    return-void

    .line 2225
    :catch_8
    move-exception v0

    .line 2226
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVolumePanelOrientation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 2
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 815
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 817
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 820
    :goto_8
    return v2

    .line 818
    :catch_9
    move-exception v0

    .line 819
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public startBluetoothSco()V
    .registers 5

    .prologue
    .line 1107
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1109
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1113
    :goto_9
    return-void

    .line 1110
    :catch_a
    move-exception v0

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public stopBluetoothSco()V
    .registers 5

    .prologue
    .line 1125
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1127
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1131
    :goto_9
    return-void

    .line 1128
    :catch_a
    move-exception v0

    .line 1129
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public triggerBeatsLogo(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 2256
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2258
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->triggerBeatsLogo(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2262
    :goto_7
    return-void

    .line 2259
    :catch_8
    move-exception v0

    .line 2260
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in triggerBeatsLogo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public unloadSoundEffects()V
    .registers 6

    .prologue
    .line 1613
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1615
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1619
    :goto_7
    return-void

    .line 1616
    :catch_8
    move-exception v0

    .line 1617
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 1783
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1784
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    monitor-exit v1

    .line 1786
    return-void

    .line 1785
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "eventReceiver"

    .prologue
    const/4 v3, 0x0

    .line 1904
    if-nez p1, :cond_4

    .line 1914
    :goto_3
    return-void

    .line 1908
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1911
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1913
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 8
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 1920
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1922
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1926
    :goto_7
    return-void

    .line 1923
    :catch_8
    move-exception v0

    .line 1924
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 7
    .parameter "rcClient"

    .prologue
    .line 1957
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1967
    :cond_8
    :goto_8
    return-void

    .line 1960
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1962
    .local v1, service:Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_8

    .line 1964
    :catch_19
    move-exception v0

    .line 1965
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .parameter "rcd"

    .prologue
    .line 1992
    if-nez p1, :cond_3

    .line 2001
    :goto_2
    return-void

    .line 1995
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1997
    .local v1, service:Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 1998
    :catch_b
    move-exception v0

    .line 1999
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
