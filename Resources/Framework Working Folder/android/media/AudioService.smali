.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$BeatsDeathHandler;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BEATS_HEADSET_TYPE:Ljava/lang/String; = "audio.beatsheadset.type"

.field private static final BIT_FM_HEADSET:I = 0x8

.field private static final BIT_FM_SPEAKER:I = 0x10

.field private static final BIT_HDMI_OUT:I = 0x1000

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_TTY:I = 0x4

.field private static final BIT_TTY_HCO:I = 0x40

.field private static final BIT_TTY_VCO:I = 0x20

.field private static final BIT_TV_OUT:I = 0x100

.field private static final BIT_USB_HEADSET:I = 0x2000

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final DEBUG:Z = false

.field protected static final DEBUG_RC:Z = false

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BEATS_NOTIFY:I = 0x65

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xc

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x9

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xb

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PERSIST_VOLUME_FOR_HEADSET:I = 0x63

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xd

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xe

.field private static final MSG_SET_FORCE_USE:I = 0xa

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_SET_VOLUME_DIRECT:I = 0x67

.field private static final MSG_SHOW_BEATS_TOAST:I = 0x66

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_DEFAULT_VOLUME_DB:I = -0x14

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static is_vibrate_un_check:Z

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static mBeatsEnable:Z

.field private static mNotificationOn:Z

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private SOUND_EFFECT_VOLUME_DB:I

.field private STREAM_VOLUME_ALIAS:[I

.field private final SenseVersion:F

.field private enforceShutterSound:Z

.field private isBTConnected:Z

.field private isHSTouchMaxVolume:Z

.field private isTouchMaxVolume:Z

.field private mAnalogFM:Z

.field private mAppPlay:Z

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBackupRingerMode:I

.field private mBackupVibrateSettingForNotification:I

.field private mBackupVibrateSettingForRinger:I

.field private mBeatsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$BeatsDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mBeatsState:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private mBtName:Ljava/lang/String;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDockAddress:Ljava/lang/String;

.field private mDockMode:Z

.field private mDongleMediaOn:Z

.field private mEqList:[I

.field private mEventAudioOnly:Z

.field private mExitingDockMode:Z

.field private mFMActive:Z

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mGlobalSoundEffect:I

.field private mHasDockModeProjects:Z

.field private mHeadsetState:I

.field private mHtcSpecificAP:Z

.field private mIgnoreMute:Z

.field private mIsRinging:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListNum:I

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMicrophone:I

.field private mMirrorDisplayStatus:Z

.field private mMirrorMode:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreVolumeIndex:I

.field private mPrevVolDirection:I

.field private mPreviousRingerMode:I

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeRingVolume:Z

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMaxVolumeStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoAudioState:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field mSkin:Ljava/lang/String;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVoiceCapable:Z

.field private mVolumePanel:Lcom/htc/view/VolumePanel;

.field private preRingerMode:I

.field private screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 203
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 4625
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 4627
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 5712
    sput-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5713
    sput-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 455
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 177
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->SenseVersion:F

    .line 182
    iput-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    .line 183
    iput-boolean v3, p0, Landroid/media/AudioService;->mAnalogFM:Z

    .line 195
    iput-boolean v3, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 196
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 200
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 216
    iput-boolean v4, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    .line 217
    iput-boolean v3, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 234
    const/16 v5, 0x9

    new-array v5, v5, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_248

    aput-object v6, v5, v3

    new-array v6, v8, [I

    fill-array-data v6, :array_250

    aput-object v6, v5, v4

    new-array v6, v8, [I

    fill-array-data v6, :array_258

    aput-object v6, v5, v8

    const/4 v6, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_260

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v7, v8, [I

    fill-array-data v7, :array_268

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_270

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_278

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_280

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_288

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 247
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_290

    iput-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 264
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_2aa

    iput-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 278
    new-instance v5, Landroid/media/AudioService$1;

    invoke-direct {v5, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 316
    iput-boolean v3, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 317
    iput-boolean v3, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 318
    iput-boolean v4, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    .line 348
    new-instance v5, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v5, p0, v9}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v5, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v5, p0, v9}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v5, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    iput-boolean v3, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 425
    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 434
    iput v3, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 437
    iput-boolean v4, p0, Landroid/media/AudioService;->screenOn:Z

    .line 438
    iput-boolean v3, p0, Landroid/media/AudioService;->isBTConnected:Z

    .line 439
    iput-boolean v3, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    .line 441
    iput-boolean v3, p0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 442
    iput-boolean v3, p0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 445
    iput-boolean v3, p0, Landroid/media/AudioService;->mMirrorMode:Z

    .line 448
    iput-boolean v3, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    .line 2261
    iput-boolean v3, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    .line 2702
    new-instance v5, Landroid/media/AudioService$2;

    invoke-direct {v5, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3911
    iput-object v9, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 4071
    iput v3, p0, Landroid/media/AudioService;->mMicrophone:I

    .line 4589
    const-string v5, "default"

    iput-object v5, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    .line 4629
    iput-boolean v3, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    .line 4630
    iput v3, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    .line 4632
    new-instance v5, Landroid/media/AudioService$3;

    invoke-direct {v5, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4722
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4998
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 5004
    iput-object v9, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5018
    iput v3, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5099
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 5557
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5558
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5749
    iput-object v9, p0, Landroid/media/AudioService;->mEqList:[I

    .line 5750
    iput v3, p0, Landroid/media/AudioService;->mListNum:I

    .line 457
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x50

    if-eq v5, v6, :cond_120

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xaf

    if-eq v5, v6, :cond_120

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_122

    .line 460
    :cond_120
    iput-boolean v4, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    .line 462
    :cond_122
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 464
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 468
    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v6, "ro.config.vc_call_vol_steps"

    iget-object v7, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v7, v7, v3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 472
    const-string/jumbo v5, "ro.config.sound_fx_volume"

    const/16 v6, -0x14

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    .line 476
    new-instance v5, Lcom/htc/view/VolumePanel;

    invoke-direct {v5, p1, p0}, Lcom/htc/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    .line 477
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 478
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 479
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 480
    new-instance v5, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v5, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 481
    iput v3, p0, Landroid/media/AudioService;->mHeadsetState:I

    .line 482
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 484
    iput v3, p0, Landroid/media/AudioService;->mMode:I

    .line 485
    iput-boolean v4, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 489
    iput v3, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 491
    iput v3, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 493
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 495
    iget-object v5, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 497
    iput-boolean v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 500
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v5, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v5, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v5, "HDMI_CONNECTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 512
    const-string v5, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v5, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v5, "android.intent.action.FM"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v5, "android.intent.action.FMTX"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v5, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v5, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v5, "DONGLE_MEDIA_PLAYING"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v5, "DONGLE_MEDIA_STOP"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    iget-boolean v5, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v5, :cond_1f8

    .line 529
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    :cond_1f8
    iget-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 537
    .local v1, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v5, "package"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 539
    iget-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 554
    iget-object v5, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 560
    .local v2, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 562
    const-string/jumbo v5, "isFmDigital"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_246

    :goto_243
    iput-boolean v3, p0, Landroid/media/AudioService;->mAnalogFM:Z

    .line 565
    return-void

    :cond_246
    move v3, v4

    .line 562
    goto :goto_243

    .line 234
    :array_248
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_250
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_258
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_260
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_268
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_270
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_278
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_280
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_288
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 247
    :array_290
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 264
    :array_2aa
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return v0
.end method

.method static synthetic access$10102(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$10302(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$10400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/media/AudioService;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$10802(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 119
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/AudioService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;III)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$4402(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mAnalogFM:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastFMVolume(Z)V

    return-void
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5700()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$6300(Landroid/media/AudioService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method static synthetic access$6402(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return p1
.end method

.method static synthetic access$6500(Landroid/media/AudioService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/media/AudioService;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    return-void
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mAppPlay:Z

    return v0
.end method

.method static synthetic access$7102(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    return p1
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$7602(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$7800(Landroid/media/AudioService;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    return v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->isBTConnected:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMicrophone:I

    return v0
.end method

.method static synthetic access$8102(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mMicrophone:I

    return p1
.end method

.method static synthetic access$8200(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->restoreStreamVolumes()V

    return-void
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return v0
.end method

.method static synthetic access$8302(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return p1
.end method

.method static synthetic access$8402(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    return p1
.end method

.method static synthetic access$8502(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return p1
.end method

.method static synthetic access$8600(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetVolumePanel()V

    return-void
.end method

.method static synthetic access$8702(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$8802(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$8902(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$9000(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->getGlobalEffectDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$9102(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    return p1
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initEqList()V

    return-void
.end method

.method static synthetic access$9400(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9502(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mFMActive:Z

    return p1
.end method

.method static synthetic access$9602(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->screenOn:Z

    return p1
.end method

.method static synthetic access$9700(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initializeDockMode()V

    return-void
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->deInitializeDockMode()V

    return-void
.end method

.method private applyOutdoorMode()Z
    .registers 3

    .prologue
    .line 1149
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_8

    .line 1150
    const/4 v0, 0x1

    .line 1153
    :goto_7
    return v0

    .line 1152
    :cond_8
    const-string v0, "AudioService"

    const-string/jumbo v1, "this project does not support outdoor mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private applySoundEffectByHeadset()Z
    .registers 11

    .prologue
    const/16 v9, 0x384

    const/4 v8, 0x2

    const/16 v7, 0x320

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2135
    iget v3, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010

    cmpg-double v3, v3, v5

    if-gez v3, :cond_11

    .line 2225
    :cond_10
    :goto_10
    return v1

    .line 2138
    :cond_11
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applySoundEffectByHeadset() isHeadsetPlugged()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBluetoothHeadsetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBeatsState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 2144
    iget-boolean v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v3, :cond_96

    .line 2145
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_67

    .line 2146
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_10

    .line 2147
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2149
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2153
    goto :goto_10

    .line 2157
    :cond_67
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadsetBT()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2158
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_10

    .line 2159
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2161
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2162
    goto :goto_10

    .line 2165
    :cond_81
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_10

    .line 2166
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2168
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2172
    goto/16 :goto_10

    .line 2178
    :cond_96
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_10

    .line 2179
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2181
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2185
    goto/16 :goto_10

    .line 2190
    :cond_ab
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_c4

    .line 2191
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_10

    .line 2192
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2194
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2198
    goto/16 :goto_10

    .line 2203
    :cond_c4
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadset()Z

    move-result v0

    .line 2204
    .local v0, isBeats:Z
    if-eqz v0, :cond_df

    .line 2205
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_10

    .line 2206
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2208
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2212
    goto/16 :goto_10

    .line 2216
    :cond_df
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_10

    .line 2217
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2219
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2223
    goto/16 :goto_10
.end method

.method private backupVibrateSetting()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1254
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vibrate_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1256
    .local v0, old_vibrateSetting:I
    if-nez v0, :cond_19

    .line 1258
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1259
    invoke-virtual {p0, v4, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1260
    invoke-virtual {p0, v3, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1263
    :cond_19
    return-void
.end method

.method private broadcastFMVolume(Z)V
    .registers 6
    .parameter "isAnalogFM"

    .prologue
    const/16 v3, 0xa

    .line 6126
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v1, :cond_37

    if-eqz p1, :cond_37

    .line 6127
    const-string v1, "AudioService"

    const-string v2, "broadcastFMVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fmservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6130
    const-string v2, "freq"

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    :goto_2f
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6131
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_37
    return-void

    .line 6130
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_38
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_2f
.end method

.method private broadcastRingerMode()V
    .registers 6

    .prologue
    .line 2958
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2960
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2963
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2964
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2965
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 2692
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_1e

    .line 2693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2695
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2697
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2698
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2700
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private broadcastSoundEffectChanged(Ljava/lang/String;)V
    .registers 7
    .parameter "appName"

    .prologue
    .line 2246
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_a

    .line 2258
    :cond_9
    :goto_9
    return-void

    .line 2250
    :cond_a
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSoundEffectChanged beats state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_BEATSEFFECT_STATUS"

    iget-boolean v2, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2253
    const-string v1, "android.media.EXTRA_CALLER_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2254
    const-string v1, "android.media.EXTRA_EFFECT_ID"

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .parameter "vibrateType"

    .prologue
    .line 2969
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2971
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2972
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2973
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2975
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 3

    .prologue
    .line 4817
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4818
    const/4 v0, 0x0

    .line 4820
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 4016
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 4017
    return-void
.end method

.method private checkEqIdAndApplyEffect(I)Z
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x384

    const/16 v8, 0x320

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5788
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEqIdAndApplyEffect isHeadsetPlugged()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mHtcSpecificAP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    iget-boolean v5, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-eqz v5, :cond_55

    .line 5999
    :cond_54
    :goto_54
    return v3

    .line 5792
    :cond_55
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wireless_display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/WirelessDisplayManager;

    .line 5793
    .local v2, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v2, :cond_bb

    .line 5794
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    iget-boolean v5, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v5, :cond_bb

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 5796
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v8, :cond_b3

    .line 5797
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5798
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5799
    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v3, v5}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    move v3, v4

    .line 5801
    goto :goto_54

    .line 5804
    :cond_b3
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5805
    iget-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v3, v4}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    goto :goto_54

    .line 5810
    :cond_bb
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_d2

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-nez v5, :cond_d2

    .line 5811
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v8, :cond_54

    .line 5812
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5813
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    move v3, v4

    .line 5815
    goto :goto_54

    .line 5819
    :cond_d2
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_104

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v5, :cond_104

    .line 5820
    if-ne p1, v9, :cond_104

    .line 5821
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    const-string v3, "global_effect=Beats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5823
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5824
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5825
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5827
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others) for BT headset"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    const-string v3, "global_headset_profile=others"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5829
    goto/16 :goto_54

    .line 5833
    :cond_104
    invoke-virtual {p0}, Landroid/media/AudioService;->checkBeatsHeadset()I

    move-result v1

    .line 5835
    .local v1, mBeatsHeadset:I
    if-ne p1, v9, :cond_176

    .line 5836
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    const-string v3, "global_effect=Beats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5838
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5839
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5840
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5842
    packed-switch v1, :pswitch_data_1ea

    :pswitch_123
    move v3, v4

    .line 5871
    goto/16 :goto_54

    .line 5844
    :pswitch_126
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_urbeats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    const-string v3, "global_headset_profile=beats_urbeats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5846
    goto/16 :goto_54

    .line 5849
    :pswitch_136
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_solo)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    const-string v3, "global_headset_profile=beats_solo"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5851
    goto/16 :goto_54

    .line 5854
    :pswitch_146
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_studio)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    const-string v3, "global_headset_profile=beats_studio"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5856
    goto/16 :goto_54

    .line 5859
    :pswitch_156
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_pro)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    const-string v3, "global_headset_profile=beats_pro"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5861
    goto/16 :goto_54

    .line 5864
    :pswitch_166
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5865
    const-string v3, "global_headset_profile=others"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5866
    goto/16 :goto_54

    .line 5978
    :cond_176
    if-ne p1, v8, :cond_191

    .line 5979
    const-string v5, "AudioService"

    const-string/jumbo v6, "setParameters(global_effect=none)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5981
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5982
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5983
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    move v3, v4

    .line 5984
    goto/16 :goto_54

    .line 5987
    :cond_191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_192
    iget v5, p0, Landroid/media/AudioService;->mListNum:I

    if-ge v0, v5, :cond_1e0

    .line 5988
    iget-object v5, p0, Landroid/media/AudioService;->mEqList:[I

    aget v5, v5, v0

    if-ne v5, p1, :cond_1dd

    .line 5989
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setParameters(global_effect=EQ;preset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "global_effect=EQ;preset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5991
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5992
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5993
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    move v3, v4

    .line 5994
    goto/16 :goto_54

    .line 5987
    :cond_1dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    .line 5998
    :cond_1e0
    const-string v4, "AudioService"

    const-string/jumbo v5, "id is not in the list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 5842
    :pswitch_data_1ea
    .packed-switch 0x3e8
        :pswitch_126
        :pswitch_136
        :pswitch_146
        :pswitch_156
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_166
    .end packed-switch
.end method

.method private checkForRingerModeChange(III)Z
    .registers 15
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "streamType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x1

    .line 2796
    const/4 v0, 0x1

    .line 2797
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 2798
    .local v1, newRingerMode:I
    add-int/lit8 v7, p1, 0x5

    div-int/lit8 v2, v7, 0xa

    .line 2799
    .local v2, uiIndex:I
    iget-object v7, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "vibrate_in_silent"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_7b

    move v3, v4

    .line 2801
    .local v3, vibeInSilent:Z
    :goto_17
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForRingerModeChange: oldIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", direction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , streamType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , MAX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v7, v6, :cond_91

    .line 2811
    if-ne p2, v10, :cond_7f

    if-gt v2, v4, :cond_7f

    .line 2814
    if-nez v3, :cond_5f

    iget v7, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v7, v10, :cond_62

    .line 2816
    :cond_5f
    if-eqz v3, :cond_7d

    move v1, v5

    .line 2818
    :cond_62
    :goto_62
    if-eqz v2, :cond_70

    if-nez v3, :cond_71

    iget v4, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-ne v4, v10, :cond_71

    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_71

    if-ne p3, v6, :cond_71

    .line 2822
    :cond_70
    const/4 v0, 0x0

    .line 2857
    :cond_71
    :goto_71
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v4, :cond_78

    .line 2858
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2861
    :cond_78
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2863
    return v0

    .end local v3           #vibeInSilent:Z
    :cond_7b
    move v3, v5

    .line 2799
    goto :goto_17

    .restart local v3       #vibeInSilent:Z
    :cond_7d
    move v1, v4

    .line 2816
    goto :goto_62

    .line 2825
    :cond_7f
    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_71

    if-ne p2, v4, :cond_71

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2826
    const/4 v1, 0x3

    goto :goto_71

    .line 2829
    :cond_91
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v7, :cond_9e

    .line 2830
    if-ne p2, v10, :cond_9a

    .line 2833
    const/4 v1, 0x1

    .line 2838
    :cond_98
    :goto_98
    const/4 v0, 0x0

    goto :goto_71

    .line 2835
    :cond_9a
    if-ne p2, v4, :cond_98

    .line 2836
    const/4 v1, 0x2

    goto :goto_98

    .line 2840
    :cond_9e
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a9

    .line 2841
    if-ne p2, v10, :cond_a7

    .line 2842
    const/4 v1, 0x2

    goto :goto_71

    .line 2844
    :cond_a7
    const/4 v0, 0x0

    goto :goto_71

    .line 2848
    :cond_a9
    if-ne p2, v4, :cond_ae

    .line 2851
    if-eqz v3, :cond_b0

    move v1, v5

    .line 2853
    :cond_ae
    :goto_ae
    const/4 v0, 0x0

    goto :goto_71

    :cond_b0
    move v1, v6

    .line 2851
    goto :goto_ae
.end method

.method private checkScoAudioState()V
    .registers 3

    .prologue
    .line 2600
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 2604
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2606
    :cond_1b
    return-void
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .registers 4
    .parameter "infoChangedFlags"

    .prologue
    .line 5396
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5397
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5423
    :goto_13
    return-void

    .line 5401
    :cond_14
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    .line 5406
    const-string v0, "AudioService"

    const-string v1, "Situation 1. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 5413
    :cond_4e
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_6c

    .line 5415
    const-string v0, "AudioService"

    const-string v1, "Situation 2. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 5422
    :cond_6c
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_13
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .registers 4

    .prologue
    .line 5348
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5349
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5350
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_15

    .line 5352
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5353
    return-void

    .line 5350
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 650
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 651
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 652
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 653
    return-void
.end method

.method private createStreamStates()V
    .registers 8

    .prologue
    .line 670
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 671
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 673
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v2, :cond_1e

    .line 674
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 678
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v2, :cond_5f

    .line 679
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_5c

    .line 680
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 681
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 682
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 683
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 684
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 678
    .end local v1           #index:I
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 688
    :cond_5f
    const/4 v0, 0x0

    :goto_60
    if-ge v0, v2, :cond_a0

    .line 689
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_9d

    .line 690
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 691
    .restart local v1       #index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 693
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 694
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 695
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 688
    .end local v1           #index:I
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 700
    :cond_a0
    return-void
.end method

.method private deInitializeDockMode()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 623
    const-string v2, "AudioService"

    const-string v3, "deInitializeDockMode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput-boolean v5, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 625
    iput-boolean v4, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 628
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    invoke-virtual {p0, v5, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 629
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    invoke-virtual {p0, v4, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 631
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_on"

    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 634
    iget v2, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 637
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v6

    aget-object v0, v2, v3

    .line 639
    .local v0, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 640
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 643
    .local v1, tmpIndex:I
    :goto_39
    invoke-direct {p0, v6, v1, v1, v5}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 645
    iput-boolean v5, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 646
    return-void

    .line 642
    .end local v1           #tmpIndex:I
    :cond_3f
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .restart local v1       #tmpIndex:I
    goto :goto_39
.end method

.method private disconnectBluetoothSco(I)V
    .registers 11
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2661
    iget-object v8, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2662
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2663
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_42

    .line 2665
    :cond_10
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2f

    .line 2666
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_31

    .line 2667
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2669
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2680
    :cond_2f
    :goto_2f
    monitor-exit v8

    .line 2681
    return-void

    .line 2672
    :cond_31
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_2f

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2674
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_2f

    .line 2680
    :catchall_3f
    move-exception v0

    monitor-exit v8
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_3f

    throw v0

    .line 2678
    :cond_42
    const/4 v0, 0x1

    :try_start_43
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3f

    goto :goto_2f
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 4729
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4731
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4732
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 4733
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4734
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 4738
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_57
    move-exception v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_57

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 4739
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 5106
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5107
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5108
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5109
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 5110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5111
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 5116
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_57
    move-exception v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_57

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 5117
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 2880
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 2881
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2883
    :cond_1f
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 2886
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 2887
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2889
    :cond_20
    return-void
.end method

.method private getActiveStreamType(I)I
    .registers 12
    .parameter "suggestedStreamType"

    .prologue
    const/4 v4, 0x2

    const/high16 v9, -0x8000

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v3, 0x3

    .line 2893
    iget-boolean v7, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v7, :cond_4c

    .line 2894
    const/4 v1, 0x0

    .line 2896
    .local v1, isOffhook:Z
    :try_start_c
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2897
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1d

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_2d

    move-result v1

    .line 2902
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1d
    :goto_1d
    if-nez v1, :cond_25

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_38

    .line 2903
    :cond_25
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_36

    .line 2906
    const/4 p1, 0x6

    .line 2951
    .end local v1           #isOffhook:Z
    .end local p1
    :cond_2c
    :goto_2c
    return p1

    .line 2898
    .restart local v1       #isOffhook:Z
    .restart local p1
    :catch_2d
    move-exception v0

    .line 2899
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Couldn\'t connect to phone service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_36
    move p1, v6

    .line 2909
    goto :goto_2c

    .line 2911
    :cond_38
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_40

    move p1, v3

    .line 2913
    goto :goto_2c

    .line 2914
    :cond_40
    if-eq p1, v5, :cond_46

    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v3, :cond_48

    :cond_46
    move p1, v5

    .line 2915
    goto :goto_2c

    .line 2917
    :cond_48
    if-ne p1, v9, :cond_2c

    move p1, v4

    .line 2920
    goto :goto_2c

    .line 2926
    .end local v1           #isOffhook:Z
    :cond_4c
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_5c

    .line 2927
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_5a

    .line 2930
    const/4 p1, 0x6

    goto :goto_2c

    :cond_5a
    move p1, v6

    .line 2933
    goto :goto_2c

    .line 2935
    :cond_5c
    const/4 v7, 0x5

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v7

    if-nez v7, :cond_6d

    const/16 v7, 0x1388

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2940
    :cond_6d
    const/4 p1, 0x5

    goto :goto_2c

    .line 2941
    :cond_6f
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_77

    if-ne p1, v9, :cond_79

    :cond_77
    move p1, v3

    .line 2945
    goto :goto_2c

    .line 2946
    :cond_79
    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v3, :cond_7f

    if-ne p1, v5, :cond_2c

    :cond_7f
    move p1, v5

    .line 2947
    goto :goto_2c
.end method

.method private getBluetoothHeadset()Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 2645
    const/4 v9, 0x0

    .line 2646
    .local v9, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 2647
    .local v8, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_11

    .line 2648
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v9

    .line 2655
    :cond_11
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v6, 0x0

    if-eqz v9, :cond_21

    const/16 v7, 0xbb8

    :goto_1a
    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2657
    return v9

    :cond_21
    move v7, v2

    .line 2655
    goto :goto_1a
.end method

.method private getGlobalEffectDB()I
    .registers 7

    .prologue
    const/16 v2, -0x64

    .line 6189
    :try_start_2
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio.soundenhancer.effect"

    const/16 v5, -0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6190
    .local v1, effect:I
    if-eq v1, v2, :cond_29

    .line 6191
    iput v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 6196
    :goto_10
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "effect id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2c

    .line 6201
    .end local v1           #effect:I
    :goto_28
    return v1

    .line 6194
    .restart local v1       #effect:I
    :cond_29
    const/16 v1, -0x64

    goto :goto_10

    .line 6198
    .end local v1           #effect:I
    :catch_2c
    move-exception v0

    .line 6199
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "getGlobalEffectDB"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 6201
    goto :goto_28
.end method

.method private getIdFromString(Ljava/lang/String;)I
    .registers 4
    .parameter "sub"

    .prologue
    const/16 v0, -0x64

    .line 6078
    if-nez p1, :cond_5

    .line 6121
    :cond_4
    :goto_4
    return v0

    .line 6082
    :cond_5
    const-string v1, "Bass Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6083
    const/16 v0, 0x321

    goto :goto_4

    .line 6084
    :cond_10
    const-string v1, "Mid Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6085
    const/16 v0, 0x322

    goto :goto_4

    .line 6086
    :cond_1b
    const-string v1, "Treble Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6087
    const/16 v0, 0x323

    goto :goto_4

    .line 6088
    :cond_26
    const-string v1, "Loudness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6089
    const/16 v0, 0x324

    goto :goto_4

    .line 6090
    :cond_31
    const-string v1, "Live"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 6091
    const/16 v0, 0x325

    goto :goto_4

    .line 6092
    :cond_3c
    const-string v1, "Dance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 6093
    const/16 v0, 0x326

    goto :goto_4

    .line 6094
    :cond_47
    const-string v1, "Warmth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 6095
    const/16 v0, 0x327

    goto :goto_4

    .line 6096
    :cond_52
    const-string v1, "Sweetener"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 6097
    const/16 v0, 0x328

    goto :goto_4

    .line 6098
    :cond_5d
    const-string v1, "Vocal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 6099
    const/16 v0, 0x329

    goto :goto_4

    .line 6100
    :cond_68
    const-string v1, "Blues"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 6101
    const/16 v0, 0x32a

    goto :goto_4

    .line 6102
    :cond_73
    const-string v1, "Classical"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 6103
    const/16 v0, 0x32b

    goto :goto_4

    .line 6104
    :cond_7e
    const-string v1, "Country"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 6105
    const/16 v0, 0x32c

    goto/16 :goto_4

    .line 6106
    :cond_8a
    const-string v1, "Jazz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 6107
    const/16 v0, 0x32d

    goto/16 :goto_4

    .line 6108
    :cond_96
    const-string v1, "Latin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 6109
    const/16 v0, 0x32e

    goto/16 :goto_4

    .line 6110
    :cond_a2
    const-string v1, "New Age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 6111
    const/16 v0, 0x32f

    goto/16 :goto_4

    .line 6112
    :cond_ae
    const-string v1, "Piano"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 6113
    const/16 v0, 0x330

    goto/16 :goto_4

    .line 6114
    :cond_ba
    const-string v1, "Pop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 6115
    const/16 v0, 0x331

    goto/16 :goto_4

    .line 6116
    :cond_c6
    const-string v1, "R&B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 6117
    const/16 v0, 0x332

    goto/16 :goto_4

    .line 6118
    :cond_d2
    const-string v1, "Rock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6119
    const/16 v0, 0x333

    goto/16 :goto_4
.end method

.method private static getMsg(II)I
    .registers 4
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 2979
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .registers 2
    .parameter "msg"

    .prologue
    .line 2983
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .registers 9
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 2609
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2610
    const/4 v0, 0x0

    .line 2611
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result v3

    .line 2612
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_c
    if-ge v2, v3, :cond_23

    .line 2613
    :try_start_e
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_35

    .line 2614
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1f

    .line 2615
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_32

    move-object v1, v0

    .line 2621
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1e
    return-object v1

    .line 2612
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_c

    .line 2617
    :cond_23
    if-eqz p2, :cond_38

    .line 2618
    :try_start_25
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 2619
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2a
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    :goto_2f
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1e

    .line 2622
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_32
    move-exception v4

    :goto_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_35
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_33

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_38
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2f
.end method

.method private getSkinContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .parameter "context"

    .prologue
    .line 4600
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4601
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4609
    .end local p1
    :cond_16
    :goto_16
    return-object p1

    .line 4607
    .restart local p1
    :cond_17
    :try_start_17
    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1d} :catch_1f

    move-result-object p1

    goto :goto_16

    .line 4608
    :catch_1f
    move-exception v1

    .line 4609
    .local v1, pme:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1320
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1323
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1325
    return p0
.end method

.method private handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 4026
    if-nez p1, :cond_4

    .line 4066
    :goto_3
    return-void

    .line 4029
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4030
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 4031
    const-string v0, ""

    .line 4033
    :cond_10
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 4034
    :try_start_13
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v1, 0x1

    .line 4038
    .local v1, isConnected:Z
    :goto_36
    if-eqz v1, :cond_50

    if-eq p2, v5, :cond_50

    .line 4039
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 4040
    if-nez p2, :cond_45

    .line 4044
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 4065
    :cond_45
    :goto_45
    monitor-exit v3

    goto :goto_3

    .end local v1           #isConnected:Z
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_47

    throw v2

    .line 4034
    :cond_4a
    const/4 v1, 0x0

    goto :goto_36

    .line 4048
    .restart local v1       #isConnected:Z
    :cond_4c
    :try_start_4c
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_45

    .line 4050
    :cond_50
    if-nez v1, :cond_45

    if-ne p2, v5, :cond_45

    .line 4051
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4053
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4054
    iput-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 4063
    :cond_5f
    :goto_5f
    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_45

    .line 4058
    :cond_63
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4059
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4060
    iget-object v2, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_47

    goto :goto_5f
.end method

.method private handleFocusForCalls(IILandroid/os/IBinder;)V
    .registers 11
    .parameter "oldMode"
    .parameter "newMode"
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1492
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 1501
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_10
    :goto_10
    return-void

    .line 1511
    :cond_11
    if-eq p2, v1, :cond_16

    const/4 v0, 0x3

    if-ne p2, v0, :cond_22

    .line 1515
    :cond_16
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1522
    :cond_22
    if-nez p2, :cond_10

    .line 1524
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p0, v4, v0}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 4021
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initEqList()V
    .registers 19

    .prologue
    .line 6026
    new-instance v3, Ljava/io/File;

    const-string v15, "/system/etc/soundimage/srs_geq10.cfg"

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6027
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_17

    .line 6028
    :cond_f
    const-string v15, "AudioService"

    const-string/jumbo v16, "open file error /system/etc/soundimage/srs_geq10.cfg"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    :cond_17
    const/4 v7, 0x0

    .line 6033
    .local v7, input:Ljava/io/BufferedReader;
    :try_start_18
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_94

    .line 6039
    .end local v7           #input:Ljava/io/BufferedReader;
    .local v8, input:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 6040
    .local v9, line:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6042
    .local v13, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_71

    .line 6043
    const-string v15, "\""

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 6044
    .local v10, sidx:I
    const-string v15, "\""

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 6045
    .local v2, eidx:I
    if-ltz v10, :cond_28

    if-ltz v2, :cond_28

    .line 6048
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v9, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 6049
    .local v12, substr:Ljava/lang/String;
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effect name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_65} :catch_66

    goto :goto_28

    .line 6052
    .end local v2           #eidx:I
    .end local v10           #sidx:I
    .end local v12           #substr:Ljava/lang/String;
    :catch_66
    move-exception v1

    .line 6053
    .local v1, e:Ljava/lang/Exception;
    const-string v15, "AudioService"

    const-string/jumbo v16, "initEqList"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6055
    .end local v1           #e:Ljava/lang/Exception;
    :cond_71
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 6056
    .local v11, size:I
    if-eqz v11, :cond_ea

    .line 6057
    const/4 v6, 0x0

    .line 6058
    .local v6, idx:I
    new-array v14, v11, [I

    .line 6059
    .local v14, tempId:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7b
    if-ge v4, v11, :cond_a0

    .line 6060
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/media/AudioService;->getIdFromString(Ljava/lang/String;)I

    move-result v5

    .line 6061
    .local v5, id:I
    const/16 v15, -0x64

    if-eq v5, v15, :cond_91

    .line 6062
    aput v5, v14, v6

    .line 6063
    add-int/lit8 v6, v6, 0x1

    .line 6059
    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 6035
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #idx:I
    .end local v8           #input:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #size:I
    .end local v13           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #tempId:[I
    .restart local v7       #input:Ljava/io/BufferedReader;
    :catch_94
    move-exception v1

    .line 6036
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v15, "AudioService"

    const-string/jumbo v16, "initEqList()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6075
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_9f
    return-void

    .line 6066
    .end local v7           #input:Ljava/io/BufferedReader;
    .restart local v4       #i:I
    .restart local v6       #idx:I
    .restart local v8       #input:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #size:I
    .restart local v13       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #tempId:[I
    :cond_a0
    new-array v15, v6, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    .line 6067
    const/4 v4, 0x0

    :goto_a7
    if-ge v4, v6, :cond_b4

    .line 6068
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    aget v16, v14, v4

    aput v16, v15, v4

    .line 6067
    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    .line 6070
    :cond_b4
    const/4 v4, 0x0

    :goto_b5
    if-ge v4, v6, :cond_e6

    .line 6071
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " effect id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mEqList:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 6073
    :cond_e6
    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/AudioService;->mListNum:I

    .end local v4           #i:I
    .end local v6           #idx:I
    .end local v14           #tempId:[I
    :cond_ea
    move-object v7, v8

    .line 6075
    .end local v8           #input:Ljava/io/BufferedReader;
    .restart local v7       #input:Ljava/io/BufferedReader;
    goto :goto_9f
.end method

.method private initializeDockMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    const-string v0, "AudioService"

    const-string/jumbo v1, "initializeDockMode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-boolean v3, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 606
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    .line 607
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    .line 610
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    .line 613
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v3, :cond_23

    .line 614
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 617
    :cond_23
    invoke-virtual {p0, v2, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 618
    invoke-virtual {p0, v3, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 619
    return-void
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .registers 3
    .parameter "pi"

    .prologue
    .line 5230
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5231
    const/4 v0, 0x1

    .line 5233
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isDockMode()Z
    .registers 2

    .prologue
    .line 592
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockMode:Z

    return v0
.end method

.method private isExitingDockMode()Z
    .registers 2

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    return v0
.end method

.method private isStreamModifiedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2872
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 10
    .parameter "address"
    .parameter "btDevice"

    .prologue
    const/16 v5, 0x80

    const/4 v6, 0x1

    .line 3916
    invoke-static {v5, v6, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3920
    const-string v3, "A2dpSuspended=false"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3922
    const-string v1, "false"

    .line 3923
    .local v1, isCarkit:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3924
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_15

    .line 3925
    const-string v2, "<unknown>"

    .line 3927
    :cond_15
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 3928
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1b

    .line 3933
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a2dp_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";a2dp_carkit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3935
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    iput-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3948
    const-string v3, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3949
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendIntents, Intent.ACTION_A2DP_PLUG, state 1 , name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3952
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 3987
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3989
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3992
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3994
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 4004
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4005
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 4011
    :goto_49
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 4012
    return-void

    .line 4008
    :cond_4c
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 7
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v4, 0x0

    .line 3956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3957
    .local v0, noisyIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3958
    invoke-static {v2, v4, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3961
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3963
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 3973
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3974
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3980
    :goto_44
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3981
    return-void

    .line 3977
    :cond_47
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 5

    .prologue
    .line 4665
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_32

    .line 4666
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4668
    :try_start_1a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33

    .line 4676
    :cond_32
    :goto_32
    return-void

    .line 4670
    :catch_33
    move-exception v0

    .line 4671
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method private onRcDisplayClear()V
    .registers 6

    .prologue
    .line 5299
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5300
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 5301
    :try_start_6
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5303
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5305
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 5306
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 5307
    return-void

    .line 5305
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 5306
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .registers 10
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 5313
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 5314
    :try_start_3
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    .line 5315
    :try_start_6
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 5318
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5321
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_4d

    .line 5327
    :try_start_22
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_4d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_30

    .line 5338
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_4d

    .line 5339
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_50

    .line 5340
    return-void

    .line 5329
    :catch_30
    move-exception v0

    .line 5330
    .local v0, e:Landroid/os/RemoteException;
    :try_start_31
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_2d

    .line 5338
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_4d
    move-exception v1

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v1

    .line 5339
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v1
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 10
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 5183
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5206
    :goto_19
    return-void

    .line 5186
    :cond_1a
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pushMediaButtonReceiver target ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5188
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 5189
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 5190
    .local v2, wasInsideStack:Z
    :cond_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 5191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5192
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 5193
    const/4 v2, 0x1

    .line 5194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5198
    :cond_65
    if-nez v2, :cond_6c

    .line 5199
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5201
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_6c
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5204
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .registers 6

    .prologue
    .line 5599
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_17

    .line 5601
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5602
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5604
    :try_start_11
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    .line 5611
    .end local v0           #b:Landroid/os/IBinder;
    :cond_17
    :goto_17
    return-void

    .line 5605
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_18
    move-exception v1

    .line 5607
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_17
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .registers 2

    .prologue
    .line 5592
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_9

    .line 5594
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5596
    :cond_9
    return-void
.end method

.method private readPersistedSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 703
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 705
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 708
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 709
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 710
    const-string/jumbo v1, "mode_ringer"

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 715
    :cond_20
    iput v3, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 719
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 723
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 727
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v1, :cond_78

    .line 728
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 732
    :goto_40
    const-string/jumbo v1, "mode_ringer_streams_affected"

    iget v2, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 735
    const-string/jumbo v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 738
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 739
    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 742
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v4, :cond_6b

    .line 743
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v3, v1, v2

    .line 748
    :cond_6b
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 751
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 752
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 755
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 756
    return-void

    .line 730
    :cond_78
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_40
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 8
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 4751
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4754
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4755
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4756
    if-eqz p2, :cond_31

    .line 4758
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4760
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4761
    const/16 v2, 0xf

    :try_start_2d
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4762
    monitor-exit v3

    .line 4778
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_31
    return-void

    .line 4762
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v2

    .line 4767
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_35
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4768
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4770
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4771
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4774
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_3b
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 8
    .parameter "cb"

    .prologue
    .line 4787
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v1, 0x1

    .line 4789
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_19
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4790
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 4791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4792
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4793
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 4787
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_51
    const/4 v1, 0x0

    goto :goto_19

    .line 4799
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_53
    if-eqz v1, :cond_61

    .line 4802
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4804
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4805
    const/16 v3, 0xf

    :try_start_5d
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4806
    monitor-exit v4

    .line 4808
    :cond_61
    return-void

    .line 4806
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 5
    .parameter "pi"

    .prologue
    .line 5214
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5215
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5217
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5218
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5219
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5223
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_20
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    .line 5125
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5126
    :try_start_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5127
    monitor-exit v4

    .line 5154
    :goto_c
    return-void

    .line 5129
    :cond_d
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5130
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5132
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 5133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5134
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5137
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1b

    .line 5153
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v3

    .line 5140
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 5142
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5153
    :cond_55
    :goto_55
    monitor-exit v4

    goto :goto_c

    .line 5145
    :cond_57
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_55

    .line 5148
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_78
    .catchall {:try_start_3d .. :try_end_78} :catchall_3a

    goto :goto_55
.end method

.method private rescaleIndex(III)I
    .registers 6
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 766
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .registers 4

    .prologue
    .line 2684
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2685
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2686
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2688
    monitor-exit v1

    .line 2689
    return-void

    .line 2688
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private resetVolumePanel()V
    .registers 4

    .prologue
    .line 4591
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 4592
    .local v0, skinPackage:Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4597
    :goto_14
    return-void

    .line 4594
    :cond_15
    iput-object v0, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    .line 4595
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getSkinContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 4596
    .local v1, wrappedContext:Landroid/content/Context;
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v2, v1}, Lcom/htc/view/VolumePanel;->resetProgressBar(Landroid/content/Context;)V

    goto :goto_14
.end method

.method private restoreMediaButtonReceiver()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 5161
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5163
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 5164
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 5167
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5169
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5170
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5172
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5174
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_29
    return-void
.end method

.method private restoreRingerMode()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 1866
    const-string v4, "AudioService"

    const-string/jumbo v5, "restoreRingerMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v6

    aget-object v2, v4, v5

    .line 1869
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1870
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1874
    .local v3, tmpIndex:I
    :goto_1b
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1875
    .local v1, previousRingerMode:I
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1877
    .local v0, newRingerMode:I
    add-int/lit8 v4, v3, 0x5

    div-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_40

    .line 1878
    iget v4, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    .line 1879
    const/4 v0, 0x1

    .line 1889
    :goto_2b
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_36

    .line 1890
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1893
    const/4 v4, 0x0

    invoke-direct {p0, v6, v3, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 1896
    :cond_36
    iput v1, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 1897
    return-void

    .line 1872
    .end local v0           #newRingerMode:I
    .end local v1           #previousRingerMode:I
    .end local v3           #tmpIndex:I
    :cond_39
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #tmpIndex:I
    goto :goto_1b

    .line 1881
    .restart local v0       #newRingerMode:I
    .restart local v1       #previousRingerMode:I
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2b

    .line 1883
    :cond_40
    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v4

    if-lt v3, v4, :cond_48

    .line 1884
    const/4 v0, 0x3

    goto :goto_2b

    .line 1887
    :cond_48
    const/4 v0, 0x2

    goto :goto_2b
.end method

.method private restoreStreamVolumes()V
    .registers 7

    .prologue
    .line 1843
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1844
    .local v0, numStreamTypes:I
    const/4 v2, 0x0

    .local v2, streamType:I
    :goto_5
    if-ge v2, v0, :cond_4a

    .line 1845
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 1846
    .local v1, streamState:Landroid/media/AudioService$VolumeStreamState;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreStreamVolumes streamState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isHeadsetPlugged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1848
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1844
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1850
    :cond_42
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_3f

    .line 1858
    .end local v1           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_4a
    return-void
.end method

.method private restoreVibrateSetting()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1268
    sget-boolean v0, Landroid/media/AudioService;->is_vibrate_un_check:Z

    if-eqz v0, :cond_e

    .line 1269
    invoke-virtual {p0, v1, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1271
    sput-boolean v1, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1273
    :cond_e
    return-void
.end method

.method private final declared-synchronized sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "intentType"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 3903
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3904
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3905
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3906
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3908
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 3909
    monitor-exit p0

    return-void

    .line 3903
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 12
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2988
    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    move v0, p1

    .line 2990
    .local v0, msg:I
    :goto_4
    if-nez p3, :cond_17

    .line 2991
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2996
    :cond_9
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2998
    :goto_11
    return-void

    .line 2988
    .end local v0           #msg:I
    :cond_12
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v0

    goto :goto_4

    .line 2992
    .restart local v0       #msg:I
    :cond_17
    const/4 v1, 0x1

    if-ne p3, v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_11
.end method

.method private sendVolumeUpdate(IIII)V
    .registers 9
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 1000
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 1001
    const/4 p1, 0x5

    .line 1004
    :cond_8
    const/16 v1, 0xa

    if-eq p1, v1, :cond_f

    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 1005
    :cond_f
    const/4 p1, 0x3

    .line 1006
    iget-boolean v1, p0, Landroid/media/AudioService;->mAnalogFM:Z

    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastFMVolume(Z)V

    .line 1009
    :cond_15
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bf] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Lcom/htc/view/VolumePanel;->postVolumeChanged(II)V

    .line 1011
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[af] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1014
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1015
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1020
    return-void
.end method

.method private setBeatsNotification(ZZ)V
    .registers 10
    .parameter "NotificationOn"
    .parameter "BeatsEnable"

    .prologue
    const/4 v6, 0x1

    .line 5716
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBeatsNotification() NotificationOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BeatsEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    const/4 v1, 0x0

    .line 5718
    .local v1, changed:Z
    const/4 v0, 0x0

    .line 5721
    .local v0, NewNf:Z
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-eq v3, p1, :cond_30

    .line 5722
    if-ne p1, v6, :cond_2d

    .line 5723
    const/4 v0, 0x1

    .line 5725
    :cond_2d
    sput-boolean p1, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5726
    const/4 v1, 0x1

    .line 5730
    :cond_30
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-ne v3, v6, :cond_3b

    .line 5731
    sget-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    if-eq v3, p2, :cond_3b

    .line 5732
    sput-boolean p2, Landroid/media/AudioService;->mBeatsEnable:Z

    .line 5733
    const/4 v1, 0x1

    .line 5737
    :cond_3b
    if-ne v1, v6, :cond_64

    .line 5738
    const-string v3, "AudioService"

    const-string/jumbo v4, "send ACTION_HTC_BEATS_NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.BEATS_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5740
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "NotificationOn"

    sget-boolean v4, Landroid/media/AudioService;->mNotificationOn:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5741
    const-string v3, "NewNf"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5742
    const-string v3, "BeatsEnable"

    sget-boolean v4, Landroid/media/AudioService;->mBeatsEnable:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5743
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5745
    .end local v2           #intent:Landroid/content/Intent;
    :cond_64
    return-void
.end method

.method private setGlobalEffectDB(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 6205
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set effect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6207
    :try_start_25
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6208
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 6212
    :goto_2e
    return-void

    .line 6209
    :catch_2f
    move-exception v0

    .line 6210
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string/jumbo v2, "setGlobalEffectDB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .registers 8
    .parameter "newClientGeneration"

    .prologue
    .line 5262
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5263
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 5264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5265
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_6

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_6

    .line 5267
    :try_start_18
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_6

    .line 5268
    :catch_1e
    move-exception v0

    .line 5269
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5271
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_6

    .line 5275
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3e
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 8
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5245
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_9

    .line 5247
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 5256
    :cond_9
    :goto_9
    return-void

    .line 5249
    :catch_a
    move-exception v0

    .line 5250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5253
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_9
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5288
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5290
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 5291
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .registers 13
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1160
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-eqz v0, :cond_19

    if-ne p1, v5, :cond_19

    .line 1161
    const-string v0, "AudioService"

    const-string v1, "Can\'t change to Vibrate Mode while enter Dock Mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_18
    :goto_18
    return-void

    .line 1165
    :cond_19
    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Landroid/media/AudioService;->isExitingDockMode()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1166
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v5, :cond_116

    if-eq p1, v5, :cond_116

    .line 1168
    invoke-direct {p0}, Landroid/media/AudioService;->restoreVibrateSetting()V

    .line 1176
    :cond_2e
    :goto_2e
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerModeInt pre="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , now="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , persist="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->preRingerMode:I

    .line 1179
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1185
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1186
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_69
    if-ltz v9, :cond_17f

    .line 1190
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 1191
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v7, :cond_b4

    .line 1195
    :cond_7b
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    if-ne v0, v7, :cond_98

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-nez v0, :cond_98

    .line 1198
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    const/16 v2, 0xa

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1201
    :cond_98
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_121

    .line 1202
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1204
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1212
    :cond_b4
    :goto_b4
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_df

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_c0

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v0, :cond_df

    .line 1214
    :cond_c0
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1216
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1217
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1219
    :cond_df
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_112

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-eq v0, v5, :cond_eb

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-nez v0, :cond_112

    .line 1221
    :cond_eb
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v3, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1223
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1224
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1186
    :cond_112
    :goto_112
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_69

    .line 1169
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_116
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_2e

    if-ne p1, v5, :cond_2e

    .line 1171
    invoke-direct {p0}, Landroid/media/AudioService;->backupVibrateSetting()V

    goto/16 :goto_2e

    .line 1206
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_121
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1208
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_b4

    .line 1227
    :cond_13b
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_112

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v7, :cond_112

    .line 1229
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_168

    .line 1230
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1232
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    goto :goto_112

    .line 1234
    :cond_168
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1236
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_112

    .line 1244
    :cond_17f
    if-eqz p2, :cond_18

    .line 1245
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_18
.end method

.method private setStreamVolumeIndex(II)V
    .registers 7
    .parameter "stream"
    .parameter "index"

    .prologue
    const/4 v3, 0x7

    .line 759
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamVolumeIndex(), stream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-ne p1, v3, :cond_30

    iget-boolean v0, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    if-eqz v0, :cond_30

    .line 761
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v3

    mul-int/lit8 p2, v0, 0xa

    .line 762
    :cond_30
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 763
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 1034
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamVolumeInt(), streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastAudible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1042
    const-string v0, "AudioService"

    const-string/jumbo v1, "streamState is fixed, adjust lastAudible only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-eqz p2, :cond_66

    invoke-virtual {v6}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    if-ge p2, v0, :cond_66

    .line 1046
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 1051
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1052
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1073
    :cond_66
    :goto_66
    return-void

    .line 1055
    :cond_67
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_66

    .line 1061
    :cond_74
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1062
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_82

    if-eqz p3, :cond_66

    .line 1065
    :cond_82
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_66

    .line 1068
    :cond_8e
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_96

    if-eqz p3, :cond_66

    .line 1069
    :cond_96
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_66
.end method

.method private syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    .registers 13
    .parameter "streamState"
    .parameter "setToCurrent"

    .prologue
    const/16 v7, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3016
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] syncSetIndex Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    if-eqz p2, :cond_7f

    .line 3018
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3019
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 3024
    :goto_33
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 3025
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_39
    if-ltz v9, :cond_7f

    .line 3026
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_60

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 3028
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3029
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v9

    aget-object v0, v0, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 3025
    :cond_60
    :goto_60
    add-int/lit8 v9, v9, -0x1

    goto :goto_39

    .line 3021
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_63
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_33

    .line 3031
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_6f
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v9

    aget-object v0, v0, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_60

    .line 3037
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_7f
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 3038
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 3043
    :goto_92
    return-void

    .line 3041
    :cond_93
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v1, v4

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_92
.end method

.method private unmuteIfNecessary(IZI)Z
    .registers 11
    .parameter "streamType"
    .parameter "adjustVolume"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 926
    move v0, p2

    .line 927
    .local v0, adjust:Z
    const/4 v4, 0x3

    if-ne p1, v4, :cond_45

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-eqz v4, :cond_45

    invoke-direct {p0, p1}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_45

    .line 928
    if-ne p3, v6, :cond_44

    .line 929
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v4, p1

    .line 930
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 931
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v2, :cond_44

    .line 932
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v4, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 933
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v4, v5, v5}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 931
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 936
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_44
    const/4 v0, 0x0

    .line 938
    :cond_45
    return v0
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .registers 8
    .parameter "infoChangedFlags"

    .prologue
    .line 5364
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5365
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 5368
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_11

    .line 5370
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5383
    :goto_10
    return-void

    .line 5373
    :cond_11
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5374
    :try_start_14
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 5376
    const/16 v0, 0xf

    .line 5378
    :cond_20
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5379
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_34

    .line 5381
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    .line 5379
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 661
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 662
    :catch_9
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 667
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 8
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4922
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    :try_start_19
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_19 .. :try_end_1c} :catch_25

    .line 4926
    const/4 v1, 0x1

    :try_start_1d
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4927
    monitor-exit v2

    .line 4936
    :goto_21
    return v4

    .line 4927
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/util/ConcurrentModificationException; {:try_start_24 .. :try_end_25} :catch_25

    .line 4928
    :catch_25
    move-exception v0

    .line 4932
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_21
.end method

.method public adjustStreamVolume(III)V
    .registers 23
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 809
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isBTConnected:Z

    if-eqz v3, :cond_a

    .line 810
    const/16 p1, 0x6

    .line 812
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mDongleMediaOn:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    if-nez v3, :cond_1f

    .line 813
    const-string v3, "AudioService"

    const-string v4, "Force to adjust Media volume because playing media content with Dongle."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/16 p1, 0x3

    .line 817
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 818
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v17, v3, p1

    .line 821
    .local v17, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v3, v17

    .line 824
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 825
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .line 830
    .local v18, tmpIndex:I
    :goto_3f
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_11f

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    .line 831
    .local v15, oldIndex:I
    :goto_49
    const/4 v11, 0x1

    .line 835
    .local v11, adjustVolume:Z
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_5e

    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_5e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v3, :cond_71

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_71

    .line 839
    :cond_5e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_67

    .line 840
    and-int/lit8 p3, p3, -0x11

    .line 844
    :cond_67
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v11

    .line 847
    :cond_71
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_ac

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_91

    .line 849
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 850
    :cond_91
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_ac

    .line 851
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 854
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 855
    if-nez p2, :cond_d0

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_d0

    .line 857
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    if-nez v3, :cond_123

    .line 858
    and-int/lit8 p3, p3, -0x5

    .line 876
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v11, v2}, Landroid/media/AudioService;->unmuteIfNecessary(IZI)Z

    move-result v11

    .line 881
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 883
    if-eqz v11, :cond_15e

    .line 886
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    .line 887
    .local v14, numStreamTypes:I
    add-int/lit8 v12, v14, -0x1

    .local v12, i:I
    :goto_e8
    if-ltz v12, :cond_15e

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v12

    move/from16 v0, v17

    if-ne v3, v0, :cond_116

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v16, v3, v12

    .line 891
    .local v16, s:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 887
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_116
    :goto_116
    add-int/lit8 v12, v12, -0x1

    goto :goto_e8

    .line 827
    .end local v11           #adjustVolume:Z
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v15           #oldIndex:I
    .end local v18           #tmpIndex:I
    :cond_119
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .restart local v18       #tmpIndex:I
    goto/16 :goto_3f

    :cond_11f
    move/from16 v15, v18

    .line 830
    goto/16 :goto_49

    .line 860
    .restart local v11       #adjustVolume:Z
    .restart local v15       #oldIndex:I
    :cond_123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    goto :goto_d0

    .line 865
    :cond_129
    if-nez p2, :cond_d0

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_d0

    .line 867
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    if-nez v3, :cond_148

    .line 868
    and-int/lit8 p3, p3, -0x5

    goto :goto_d0

    .line 870
    :cond_148
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    goto :goto_d0

    .line 900
    .restart local v12       #i:I
    .restart local v14       #numStreamTypes:I
    .restart local v16       #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_14e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0xbb8

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_116

    .line 906
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_15e
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .line 917
    .local v13, index:I
    :goto_162
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->screenOn:Z

    if-nez v3, :cond_16a

    .line 918
    or-int/lit8 p3, p3, 0x1

    .line 919
    :cond_16a
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_171

    .line 920
    and-int/lit8 p3, p3, -0x5

    .line 922
    :cond_171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v15, v13, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 923
    return-void

    .line 908
    .end local v13           #index:I
    :cond_17b
    if-eqz v11, :cond_193

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v5, v17

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 914
    :cond_193
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .restart local v13       #index:I
    goto :goto_162
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 7
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 782
    iget-boolean v1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    if-eqz v1, :cond_11

    .line 784
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 785
    const-string v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex STREAM_NOTIFICATION value: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_11
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_33

    .line 791
    move v0, p2

    .line 797
    .local v0, streamType:I
    :goto_16
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 800
    :cond_2d
    and-int/lit8 p3, p3, -0x5

    .line 803
    :cond_2f
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 804
    return-void

    .line 793
    .end local v0           #streamType:I
    :cond_33
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_16
.end method

.method public adjustVolume(II)V
    .registers 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 775
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 776
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 3001
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 3003
    const/4 v1, 0x1

    .line 3009
    :goto_b
    return v1

    .line 3005
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3008
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public checkBeatsHeadset()I
    .registers 7

    .prologue
    .line 2077
    :try_start_0
    const-string/jumbo v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 2078
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_4d

    .line 2079
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v2

    .line 2080
    .local v2, type:Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headset type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const-string/jumbo v3, "headset_beats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2082
    const/16 v3, 0x3e8

    .line 2094
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :goto_35
    return v3

    .line 2084
    .restart local v1       #hwService:Landroid/os/IHtcHardwareService;
    .restart local v2       #type:Ljava/lang/String;
    :cond_36
    const-string/jumbo v3, "headset_beats_solo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_45

    move-result v3

    if-eqz v3, :cond_42

    .line 2085
    const/16 v3, 0x3e9

    goto :goto_35

    .line 2088
    :cond_42
    const/16 v3, 0x3f2

    goto :goto_35

    .line 2091
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 2092
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "get IHtcHardwareService failed in checkBeatsHeadset()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2094
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4d
    const/16 v3, -0x3e9

    goto :goto_35
.end method

.method public clearAllScoClients(IZ)V
    .registers 9
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 2626
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2627
    const/4 v2, 0x0

    .line 2628
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2629
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_23

    .line 2630
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2631
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_21

    .line 2632
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2629
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2634
    :cond_21
    move-object v2, v0

    goto :goto_1e

    .line 2637
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_23
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2638
    if-eqz v2, :cond_2f

    .line 2639
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    :cond_2f
    monitor-exit v5

    .line 2642
    return-void

    .line 2641
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5700
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5701
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5703
    const-string v2, "AudioService stream volume:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5704
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 5705
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_4f

    .line 5706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headset index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5705
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 5709
    :cond_4f
    return-void
.end method

.method public getBeatsHeadset()I
    .registers 5

    .prologue
    .line 6146
    const/16 v0, -0x3e9

    .line 6147
    .local v0, headset_type:I
    invoke-virtual {p0}, Landroid/media/AudioService;->checkBeatsHeadset()I

    move-result v0

    .line 6148
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    return v0
.end method

.method public getBeatsState()Z
    .registers 5

    .prologue
    .line 2117
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 2118
    const/4 v0, 0x0

    .line 2120
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Landroid/media/AudioService;->mBeatsState:Z

    goto :goto_a
.end method

.method public getGlobalEffect()I
    .registers 4

    .prologue
    .line 6003
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGlobalEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method public getHeadsetProfile()[I
    .registers 7

    .prologue
    .line 1987
    const-string v3, "AudioService"

    const-string v4, "getHeadsetProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    new-array v2, v3, [I

    .line 1989
    .local v2, volumeSettings:[I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1990
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_46

    .line 1991
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getHeadsetIndex()I

    move-result v3

    aput v3, v2, v0

    .line 1992
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1994
    :cond_46
    return-object v2
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1123
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1530
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .registers 2

    .prologue
    .line 1128
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getSpeakerProfile()[I
    .registers 7

    .prologue
    .line 1998
    const-string v3, "AudioService"

    const-string v4, "getSpeakerProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    new-array v2, v3, [I

    .line 2000
    .local v2, volumeSettings:[I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2001
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_46

    .line 2002
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex()I

    move-result v3

    aput v3, v2, v0

    .line 2003
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2005
    :cond_46
    return-object v2
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1116
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1105
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1106
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 1108
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_15
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .parameter "vibrateType"

    .prologue
    .line 1297
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBTConnected()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/media/AudioService;->isBTConnected:Z

    return v0
.end method

.method public isBeatsHeadset()Z
    .registers 8

    .prologue
    .line 2059
    const/4 v2, 0x0

    .line 2061
    .local v2, isBeats:Z
    :try_start_1
    const-string/jumbo v4, "htchardware"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 2062
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_3e

    .line 2063
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v3

    .line 2064
    .local v3, type:Ljava/lang/String;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headset type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string/jumbo v4, "headset_beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string/jumbo v4, "headset_beats_solo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3f

    move-result v4

    if-eqz v4, :cond_3e

    .line 2066
    :cond_3d
    const/4 v2, 0x1

    .line 2072
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v3           #type:Ljava/lang/String;
    :cond_3e
    :goto_3e
    return v2

    .line 2069
    :catch_3f
    move-exception v0

    .line 2070
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AudioService"

    const-string v5, "get IHtcHardwareService failed in isBeatsHeadset()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method public isBeatsHeadsetBT()Z
    .registers 7

    .prologue
    .line 6012
    const/4 v2, 0x0

    .line 6013
    .local v2, isBtBeats:Z
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 6014
    const/4 v4, 0x0

    .line 6022
    :goto_6
    return v4

    .line 6016
    :cond_7
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 6017
    .local v3, name:Ljava/lang/String;
    const-string v4, "beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6018
    .local v0, index:I
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    const-string v5, "Beatbox Portable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6019
    .local v1, index_box:I
    if-gez v0, :cond_1f

    if-ltz v1, :cond_20

    .line 6020
    :cond_1f
    const/4 v2, 0x1

    :cond_20
    move v4, v2

    .line 6022
    goto :goto_6
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 1931
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDongleConnected()Z
    .registers 2

    .prologue
    .line 6140
    iget-boolean v0, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return v0
.end method

.method public isFMActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6136
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v1, :cond_d

    const/16 v1, 0xa

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isHeadsetPlugged()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 572
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_1d

    .line 573
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 574
    const-string v2, "AudioService"

    const-string/jumbo v3, "isHeadsetPlugged() - in mirror mode return false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    iget v2, p0, Landroid/media/AudioService;->mHeadsetState:I

    if-lez v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1913
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2876
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2867
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1097
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadSoundEffects()Z
    .registers 14

    .prologue
    .line 1553
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1554
    :try_start_3
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_12

    .line 1555
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v8, 0x0

    monitor-exit v9

    .line 1662
    :goto_11
    return v8

    .line 1559
    :cond_12
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1c

    .line 1560
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_11

    .line 1661
    :catchall_19
    move-exception v8

    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v8

    .line 1562
    :cond_1c
    :try_start_1c
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1563
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v8, :cond_35

    .line 1564
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() could not allocate sound pool"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_19

    goto :goto_11

    .line 1569
    :cond_35
    const/4 v8, 0x0

    :try_start_36
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1570
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1571
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1573
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_49} :catch_6f

    .line 1578
    :goto_49
    :try_start_49
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_78

    .line 1579
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_61

    .line 1581
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1582
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1584
    :cond_61
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1585
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1586
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1587
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_11

    .line 1574
    :catch_6f
    move-exception v0

    .line 1575
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1595
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_78
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1596
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_7e
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_89

    .line 1597
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1596
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 1605
    :cond_89
    const/4 v4, 0x0

    .line 1606
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_8b
    const/16 v8, 0x9

    if-ge v1, v8, :cond_112

    .line 1608
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_9b

    .line 1606
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 1611
    :cond_9b
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_101

    .line 1612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1615
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1616
    .local v6, sampleId:I
    if-gtz v6, :cond_ef

    .line 1617
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 1619
    :cond_ef
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1620
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1621
    move v4, v6

    goto :goto_98

    .line 1624
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_101
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_98

    .line 1628
    :cond_112
    if-eqz v4, :cond_17f

    .line 1629
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_119
    .catchall {:try_start_49 .. :try_end_119} :catchall_19

    .line 1632
    :try_start_119
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1633
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_123
    .catchall {:try_start_119 .. :try_end_123} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_119 .. :try_end_123} :catch_175

    move-result v7

    .line 1642
    .local v7, status:I
    :goto_124
    :try_start_124
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_130

    .line 1643
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1644
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1646
    :cond_130
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1647
    if-eqz v7, :cond_18b

    .line 1648
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_181

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_14b
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const/4 v1, 0x0

    :goto_15d
    const/16 v8, 0x9

    if-ge v1, v8, :cond_183

    .line 1653
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_172

    .line 1654
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1652
    :cond_172
    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    .line 1634
    .end local v7           #status:I
    :catch_175
    move-exception v0

    .line 1635
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const/4 v7, -0x1

    .line 1637
    .restart local v7       #status:I
    goto :goto_124

    .line 1639
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_17f
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_124

    .line 1648
    :cond_181
    const/4 v8, -0x1

    goto :goto_14b

    .line 1658
    :cond_183
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1659
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1661
    :cond_18b
    monitor-exit v9
    :try_end_18c
    .catchall {:try_start_124 .. :try_end_18c} :catchall_19

    .line 1662
    if-nez v7, :cond_191

    const/4 v8, 0x1

    goto/16 :goto_11

    :cond_191
    const/4 v8, 0x0

    goto/16 :goto_11
.end method

.method public playSoundEffect(I)V
    .registers 10
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 1535
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1537
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1541
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1542
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1544
    return-void
.end method

.method public queryGlobalEffectList()[I
    .registers 2

    .prologue
    .line 6008
    iget-object v0, p0, Landroid/media/AudioService;->mEqList:[I

    return-object v0
.end method

.method public registerBeatsMediaClient(Landroid/os/IBinder;)V
    .registers 12
    .parameter "cb"

    .prologue
    .line 2402
    const-string v6, "AudioService"

    const-string/jumbo v7, "registerBeatsMediaClient"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const/4 v3, 0x0

    .line 2404
    .local v3, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2406
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .local v4, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :goto_11
    if-ge v2, v5, :cond_24

    .line 2407
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$BeatsDeathHandler;

    .line 2408
    .local v1, handler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v6, v1, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v6, p1, :cond_6a

    .line 2409
    move-object v3, v1

    .line 2406
    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :goto_20
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_11

    .line 2413
    .end local v1           #handler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_24
    iget-object v7, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2414
    if-nez v4, :cond_68

    .line 2415
    :try_start_29
    new-instance v3, Landroid/media/AudioService$BeatsDeathHandler;

    invoke-direct {v3, p0, p1}, Landroid/media/AudioService$BeatsDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_65

    .line 2417
    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    const/4 v6, 0x0

    :try_start_2f
    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2418
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerBeatsMediaClient success, size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_56} :catch_58

    .line 2424
    :goto_56
    :try_start_56
    monitor-exit v7

    .line 2425
    return-void

    .line 2420
    :catch_58
    move-exception v0

    .line 2421
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    const-string/jumbo v8, "registerBeatsMediaClient"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 2424
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_62
    move-exception v6

    :goto_63
    monitor-exit v7
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_62

    throw v6

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :catchall_65
    move-exception v6

    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_63

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_68
    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_56

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_6a
    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_20
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5430
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5433
    :try_start_1b
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    .line 5434
    :try_start_1e
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5436
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5437
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_29

    .line 5438
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2c

    .line 5439
    return-void

    .line 5437
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0

    .line 5438
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    .registers 14
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 5470
    sget-object v6, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5471
    :try_start_3
    iget-object v7, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_63

    .line 5473
    :try_start_6
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5474
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 5475
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5476
    .local v3, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5478
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v5, :cond_27

    .line 5480
    invoke-virtual {v3}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5483
    :cond_27
    iput-object p2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5484
    iput-object p3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 5485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5486
    if-nez p2, :cond_41

    .line 5518
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_33
    :goto_33
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 5519
    const/16 v5, 0xf

    invoke-direct {p0, v5}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5521
    :cond_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_60

    .line 5522
    :try_start_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_63

    .line 5523
    return-void

    .line 5493
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_41
    :try_start_41
    iget-object v5, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_60

    if-eqz v5, :cond_4c

    .line 5495
    :try_start_45
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v8, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v5, v8}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_66

    .line 5502
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v5}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5503
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v5}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_60

    .line 5506
    .local v2, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v5, 0x0

    :try_start_5a
    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_83

    .line 5512
    :goto_5d
    :try_start_5d
    iput-object v2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_33

    .line 5521
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_60
    move-exception v5

    monitor-exit v7
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_60

    :try_start_62
    throw v5

    .line 5522
    :catchall_63
    move-exception v5

    monitor-exit v6
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_63

    throw v5

    .line 5496
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v4       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_66
    move-exception v1

    .line 5497
    .local v1, e:Landroid/os/RemoteException;
    :try_start_67
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error connecting remote control display to client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4c

    .line 5507
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_83
    move-exception v1

    .line 5509
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_60

    goto :goto_5d
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 10
    .parameter "rcd"

    .prologue
    .line 5622
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5623
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 5624
    :try_start_6
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_c

    if-nez p1, :cond_f

    .line 5625
    :cond_c
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_52

    :try_start_d
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_55

    .line 5653
    :goto_e
    return-void

    .line 5628
    :cond_f
    :try_start_f
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5629
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5631
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5636
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5637
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 5638
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5639
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_52

    if-eqz v3, :cond_1d

    .line 5641
    :try_start_2d
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_1d

    .line 5642
    :catch_35
    move-exception v0

    .line 5643
    .local v0, e:Landroid/os/RemoteException;
    :try_start_36
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 5651
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_52
    move-exception v3

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_52

    :try_start_54
    throw v3

    .line 5652
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw v3

    .line 5650
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_58
    const/16 v3, 0xf

    :try_start_5a
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5651
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_52

    .line 5652
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_55

    goto :goto_e
.end method

.method public reloadAudioSettings()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 1750
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1753
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    .line 1754
    .local v5, numStreamTypes:I
    const/4 v10, 0x0

    .local v10, streamType:I
    :goto_9
    if-ge v10, v5, :cond_1cd

    .line 1755
    iget-object v11, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v11, v10

    .line 1757
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v11, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    aget-object v6, v11, v12

    .line 1758
    .local v6, settingName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1759
    .local v3, lastAudibleSettingName:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v6, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1763
    .local v1, index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_177

    .line 1765
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1769
    :goto_5d
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1771
    add-int/lit8 v11, v1, 0x5

    div-int/lit8 v1, v11, 0xa

    .line 1772
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_17b

    .end local v1           #index:I
    :goto_6c
    invoke-static {v11, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1776
    .restart local v1       #index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings mLastAudibleIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_181

    .line 1778
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1782
    :goto_99
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1785
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1786
    .local v7, settingName_Headset:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, lastAudibleSettingName_Headset:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1790
    .local v2, index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_185

    .line 1792
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1796
    :goto_ff
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1798
    add-int/lit8 v11, v2, 0x5

    div-int/lit8 v2, v11, 0xa

    .line 1799
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v2, :cond_189

    .end local v2           #index_Headset:I
    :goto_10e
    invoke-static {v11, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1802
    .restart local v2       #index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings lastAudibleIndex_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_18e

    .line 1804
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1808
    :goto_13b
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1814
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-eqz v11, :cond_191

    invoke-virtual {p0, v10}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v11

    if-nez v11, :cond_191

    .line 1815
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1816
    .local v8, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_157
    if-ge v0, v8, :cond_191

    .line 1817
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v12, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v11, v12}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1818
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v11, v14, v14}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_157

    .line 1767
    .end local v0           #i:I
    .end local v2           #index_Headset:I
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v8           #size:I
    :cond_177
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_5d

    .line 1772
    :cond_17b
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v12, v10

    goto/16 :goto_6c

    .line 1780
    :cond_181
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_99

    .line 1794
    .restart local v2       #index_Headset:I
    .restart local v4       #lastAudibleSettingName_Headset:Ljava/lang/String;
    .restart local v7       #settingName_Headset:Ljava/lang/String;
    :cond_185
    mul-int/lit8 v2, v2, 0xa

    goto/16 :goto_ff

    .line 1799
    :cond_189
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v12, v10

    goto :goto_10e

    .line 1806
    :cond_18e
    mul-int/lit8 v2, v2, 0xa

    goto :goto_13b

    .line 1822
    :cond_191
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-nez v11, :cond_1c1

    .line 1825
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_1c5

    .line 1827
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1754
    :cond_1c1
    :goto_1c1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 1829
    :cond_1c5
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_1c1

    .line 1837
    .end local v1           #index:I
    .end local v2           #index_Headset:I
    .end local v3           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v6           #settingName:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v9           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_1cd
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v11

    invoke-direct {p0, v11, v14}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1838
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 6
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5690
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5692
    :try_start_3
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5693
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5694
    monitor-exit v1

    .line 5695
    return-void

    .line 5694
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 4850
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_29

    .line 4856
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    const/4 v1, 0x0

    .line 4917
    :goto_28
    return v1

    .line 4860
    :cond_29
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4861
    :try_start_2c
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4862
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_28

    .line 4915
    :catchall_35
    move-exception v1

    monitor-exit v12
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    throw v1

    .line 4868
    :cond_38
    :try_start_38
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 4870
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_40
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_76

    .line 4877
    :try_start_45
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 4880
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_9a

    .line 4883
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4884
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_28

    .line 4871
    :catch_76
    move-exception v10

    .line 4873
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_28

    .line 4888
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_9a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4889
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4893
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_a5
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_b7
    .catchall {:try_start_45 .. :try_end_b7} :catchall_35

    if-eqz v1, :cond_d2

    .line 4895
    :try_start_b9
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_d2} :catch_fe

    .line 4905
    :cond_d2
    :goto_d2
    const/4 v1, 0x0

    :try_start_d3
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4908
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_f4
    .catchall {:try_start_d3 .. :try_end_f4} :catchall_35

    .line 4913
    const/16 v1, 0xf

    :try_start_f6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4914
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_11b

    .line 4915
    :try_start_fa
    monitor-exit v12

    .line 4917
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 4898
    :catch_fe
    move-exception v10

    .line 4899
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_fa .. :try_end_11a} :catchall_35

    goto :goto_d2

    .line 4914
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_11b
    move-exception v1

    :try_start_11c
    monitor-exit v2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    :try_start_11d
    throw v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_35
.end method

.method public restoreEffect(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 2341
    if-eqz p1, :cond_8

    .line 2342
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    .line 2347
    :goto_7
    return-void

    .line 2345
    :cond_8
    const-string v0, "global_effect=none"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .registers 8
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 2098
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_11

    .line 2099
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_10
    :goto_10
    return-void

    .line 2102
    :cond_11
    iget-boolean v1, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-ne v1, p1, :cond_1e

    .line 2103
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2106
    :cond_1e
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBeatsState on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 2109
    invoke-direct {p0}, Landroid/media/AudioService;->applySoundEffectByHeadset()Z

    move-result v0

    .line 2110
    .local v0, isChanged:Z
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 2111
    if-eqz v0, :cond_10

    .line 2112
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setBluetoothScoOn(Z)V
    .registers 10
    .parameter "on"

    .prologue
    .line 1918
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1927
    :goto_9
    return-void

    .line 1921
    :cond_a
    if-eqz p1, :cond_2c

    const/4 v0, 0x3

    :goto_d
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1923
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1925
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_9

    .line 1921
    :cond_2c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCSCallVolumeOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 2016
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCSCallVolumeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    if-eqz p1, :cond_2e

    .line 2018
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const/4 v0, -0x2

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 2024
    :goto_2d
    return-void

    .line 2021
    :cond_2e
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v0, -0x1

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    goto :goto_2d
.end method

.method public setGlobalEffect(ILjava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "appName"

    .prologue
    .line 5753
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_11

    .line 5754
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    :cond_10
    :goto_10
    return-void

    .line 5757
    :cond_11
    const-string v1, "HtcSpecificAP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 5758
    const/16 v1, 0x384

    if-ne p1, v1, :cond_46

    .line 5759
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 5764
    :cond_20
    :goto_20
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalEffect mHtcSpecificAP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5761
    :cond_46
    const/16 v1, 0x320

    if-ne p1, v1, :cond_20

    .line 5762
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    goto :goto_20

    .line 5767
    :cond_4e
    iget v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne p1, v1, :cond_5b

    .line 5768
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 5772
    :cond_5b
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEventAudioOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5776
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    .line 5777
    .local v0, isChanged:Z
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_be

    iget-boolean v1, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    if-eqz v1, :cond_be

    .line 5778
    :cond_b9
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 5780
    :cond_be
    if-eqz v0, :cond_10

    .line 5781
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public setHeadsetProfile([I)V
    .registers 11
    .parameter "streamSettings"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1957
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1958
    .local v8, numStreamTypes:I
    const-string v0, "AudioService"

    const-string/jumbo v1, "setHeadsetProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v8, :cond_54

    .line 1960
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", index = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v5, p1, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    aget v0, p1, v2

    invoke-direct {p0, v2, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1962
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v2

    aget v1, p1, v2

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 1963
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, v2

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1966
    :cond_54
    const-string v0, "AudioService"

    const-string v1, "After setHeadsetProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/4 v2, 0x0

    :goto_5c
    if-ge v2, v8, :cond_88

    .line 1968
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioSystem;->getStreamVolumeIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1969
    :cond_88
    return-void
.end method

.method public setHtcSpecificAPdefault()V
    .registers 4

    .prologue
    .line 2350
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHtcSpecificAPdefault mHtcSpecificAP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 2352
    return-void
.end method

.method public setIgnoreNotificationMuteSetting(Z)V
    .registers 6
    .parameter "ignore"

    .prologue
    const/4 v3, 0x5

    .line 2030
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    if-eqz p1, :cond_4d

    .line 2032
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v3

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 2038
    :goto_4a
    iput-boolean p1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 2039
    return-void

    .line 2035
    :cond_4d
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_4a
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 8
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v4, -0x1

    .line 1375
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1396
    :cond_29
    :goto_29
    return-void

    .line 1380
    :cond_2a
    if-lt p1, v4, :cond_29

    const/4 v1, 0x4

    if-ge p1, v1, :cond_29

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1386
    if-ne p1, v4, :cond_37

    .line 1387
    :try_start_35
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1389
    :cond_37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1390
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_46

    .line 1393
    if-eqz v0, :cond_29

    .line 1394
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_29

    .line 1390
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .registers 16
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1402
    const/4 v5, 0x0

    .line 1403
    .local v5, newModeOwnerPid:I
    if-nez p2, :cond_d

    .line 1404
    const-string v9, "AudioService"

    const-string/jumbo v10, "setModeInt() called with null binder"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1486
    .end local v5           #newModeOwnerPid:I
    .local v6, newModeOwnerPid:I
    :goto_c
    return v6

    .line 1408
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_d
    const/4 v2, 0x0

    .line 1409
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1410
    .local v4, iter:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    .line 1411
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1412
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v9

    if-ne v9, p3, :cond_14

    .line 1413
    move-object v2, v1

    .line 1415
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1416
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1420
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_32
    const/4 v7, 0x0

    .line 1422
    .local v7, status:I
    :cond_33
    if-nez p1, :cond_a1

    .line 1424
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4e

    .line 1425
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v2, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1426
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1427
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1447
    :cond_4e
    :goto_4e
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v9, :cond_e5

    .line 1448
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v7

    .line 1449
    if-nez v7, :cond_d7

    .line 1451
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    invoke-direct {p0, v9, p1, p2}, Landroid/media/AudioService;->handleFocusForCalls(IILandroid/os/IBinder;)V

    .line 1452
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1464
    :goto_5f
    if-eqz v7, :cond_69

    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1466
    :cond_69
    if-nez v7, :cond_9e

    .line 1467
    if-eqz p1, :cond_7d

    .line 1468
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 1469
    const-string v9, "AudioService"

    const-string/jumbo v10, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_7d
    :goto_7d
    const/high16 v9, -0x8000

    invoke-direct {p0, v9}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v8

    .line 1478
    .local v8, streamType:I
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 1479
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1484
    .local v3, index:I
    :goto_95
    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v3, v10, v11}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .end local v3           #index:I
    .end local v8           #streamType:I
    :cond_9e
    move v6, v5

    .line 1486
    .end local v5           #newModeOwnerPid:I
    .restart local v6       #newModeOwnerPid:I
    goto/16 :goto_c

    .line 1430
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_a1
    if-nez v2, :cond_a8

    .line 1431
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-direct {v2, p0, p2, p3}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1435
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_a8
    const/4 v9, 0x0

    :try_start_a9
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ac} :catch_b6

    .line 1443
    :goto_ac
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1444
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_4e

    .line 1436
    :catch_b6
    move-exception v0

    .line 1438
    .local v0, e:Landroid/os/RemoteException;
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 1454
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_d7
    if-eqz v2, :cond_e2

    .line 1455
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1456
    const/4 v9, 0x0

    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1459
    :cond_e2
    const/4 p1, 0x0

    goto/16 :goto_5f

    .line 1462
    :cond_e5
    const/4 v7, 0x0

    goto/16 :goto_5f

    .line 1471
    :cond_e8
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v9}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    goto :goto_7d

    .line 1481
    .restart local v8       #streamType:I
    :cond_f6
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #index:I
    goto :goto_95
.end method

.method public setRingerMode(I)V
    .registers 4
    .parameter "ringerMode"

    .prologue
    .line 1134
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1145
    :goto_9
    return-void

    .line 1138
    :cond_a
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    :try_start_d
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_18

    .line 1140
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1142
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 1144
    :cond_18
    monitor-exit v1

    goto :goto_9

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setSpeakerProfile([I)V
    .registers 11
    .parameter "streamSettings"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1972
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1973
    .local v8, numStreamTypes:I
    const-string v0, "AudioService"

    const-string/jumbo v4, "setSpeakerProfile"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v8, :cond_53

    .line 1975
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    aget v0, p1, v2

    invoke-direct {p0, v2, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1977
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v2

    aget v4, p1, v2

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 1978
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v4, v2

    move v4, v1

    move v5, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1974
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1981
    :cond_53
    const-string v0, "AudioService"

    const-string v1, "After setSpeakerProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v8, :cond_87

    .line 1983
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioSystem;->getStreamVolumeIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1984
    :cond_87
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 10
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 1902
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1909
    :goto_a
    return-void

    .line 1905
    :cond_b
    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :goto_e
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1907
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_a

    :cond_1e
    move v0, v4

    .line 1905
    goto :goto_e
.end method

.method public setStreamLastaudibleIndex(II)V
    .registers 11
    .parameter "stream"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 942
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 944
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 945
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v2, p1

    move v2, p1

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 952
    :goto_1d
    return-void

    .line 948
    :cond_1e
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v1, p1

    move v1, v4

    move v2, p1

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_1d
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1090
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1093
    :cond_e
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 7
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1077
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 1078
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p1, :cond_11

    .line 1077
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1081
    :cond_11
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    goto :goto_e

    .line 1084
    :cond_1a
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 12
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 956
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStreamVolume(), streamType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 958
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, p1

    aget-object v2, v5, v6

    .line 960
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_10a

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 961
    .local v1, oldIndex:I
    :goto_3a
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamState.fixCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-boolean v5, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v5, :cond_84

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_66

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_84

    .line 966
    :cond_66
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 967
    .local v0, newRingerMode:I
    if-nez p2, :cond_113

    .line 969
    iget-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "vibrate_in_silent"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_110

    move v0, v3

    .line 973
    :goto_76
    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    invoke-direct {p0, v5, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 977
    :goto_7d
    iget v5, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_84

    .line 978
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 982
    .end local v0           #newRingerMode:I
    :cond_84
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index before rescaleIndex, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    mul-int/lit8 v5, p2, 0xa

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, p1

    invoke-direct {p0, v5, p1, v6}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 986
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index after rescaleIndex, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    invoke-direct {p0, v5, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 990
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_116

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    .line 991
    :goto_d1
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", streamState.mLastAudibleIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", streamState.mIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 996
    return-void

    .line 960
    .end local v1           #oldIndex:I
    :cond_10a
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    goto/16 :goto_3a

    .restart local v0       #newRingerMode:I
    .restart local v1       #oldIndex:I
    :cond_110
    move v0, v4

    .line 969
    goto/16 :goto_76

    .line 975
    :cond_113
    const/4 v0, 0x2

    goto/16 :goto_7d

    .line 990
    .end local v0           #newRingerMode:I
    :cond_116
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    goto :goto_d1
.end method

.method public setVibrateSetting(II)V
    .registers 11
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 1302
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1304
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1308
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1310
    return-void
.end method

.method public setVolumePanelOrientation(I)V
    .registers 5
    .parameter "orientation"

    .prologue
    .line 2010
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumePanelOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/htc/view/VolumePanel;->setVolumePanelOrientation(I)V

    .line 2012
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 7
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1277
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldVibrate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mRingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    move v0, v1

    .line 1291
    :cond_2f
    :goto_2f
    return v0

    .line 1281
    :pswitch_30
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v2, :cond_2f

    move v0, v1

    goto :goto_2f

    .line 1284
    :pswitch_36
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v2, v0, :cond_2f

    move v0, v1

    goto :goto_2f

    :pswitch_3c
    move v0, v1

    .line 1288
    goto :goto_2f

    .line 1278
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_30
        :pswitch_36
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1936
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_e

    .line 1942
    :cond_d
    :goto_d
    return-void

    .line 1940
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1941
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_d
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1946
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_e

    .line 1954
    :cond_d
    :goto_d
    return-void

    .line 1950
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1951
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_d

    .line 1952
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_d
.end method

.method public triggerBeatsLogo(Z)V
    .registers 15
    .parameter "on"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2264
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isSupport=true , sense version="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->SenseVersion:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mAppPlay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , isHeadsetPlugged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v9, v0

    const-wide/high16 v11, 0x4010

    cmpg-double v0, v9, v11

    if-gez v0, :cond_5a

    .line 2301
    :goto_59
    return-void

    .line 2273
    :cond_5a
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wireless_display"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/WirelessDisplayManager;

    .line 2274
    .local v8, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v8, :cond_ae

    .line 2275
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v0, :cond_ae

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2277
    const-string v0, "AudioService"

    const-string v1, "WirelessDisplay mirror mode!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2282
    :cond_ae
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2283
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v0, :cond_ef

    .line 2284
    :cond_ba
    if-eqz p1, :cond_ca

    .line 2285
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_c8

    move v5, v4

    :goto_c3
    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_59

    :cond_c8
    move v5, v3

    goto :goto_c3

    .line 2288
    :cond_ca
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-nez v0, :cond_df

    .line 2289
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_dd

    move v5, v4

    :goto_d5
    const/16 v7, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_59

    :cond_dd
    move v5, v3

    goto :goto_d5

    .line 2293
    :cond_df
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_ed

    move v5, v4

    :goto_e6
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_59

    :cond_ed
    move v5, v3

    goto :goto_e6

    .line 2298
    :cond_ef
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_fd

    move v5, v4

    :goto_f6
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_59

    :cond_fd
    move v5, v3

    goto :goto_f6
.end method

.method public triggerBeatsLogo_audio(ZZZ)V
    .registers 15
    .parameter "on"
    .parameter "audio_on"
    .parameter "audio_flag"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2304
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isSupport=true , sense version="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->SenseVersion:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mAppPlay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , isHeadsetPlugged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , audio_on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , audio_flag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v7, v0

    const-wide/high16 v9, 0x4010

    cmpg-double v0, v7, v9

    if-gez v0, :cond_6e

    .line 2338
    :cond_6d
    :goto_6d
    return-void

    .line 2313
    :cond_6e
    if-eqz p3, :cond_72

    .line 2314
    iput-boolean p2, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    .line 2316
    :cond_72
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEventAudioOnly="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2318
    iget-boolean v0, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    if-eqz v0, :cond_6d

    .line 2319
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v0, :cond_d0

    .line 2320
    :cond_9d
    if-eqz p1, :cond_ad

    .line 2321
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_ab

    move v5, v4

    :goto_a6
    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_6d

    :cond_ab
    move v5, v3

    goto :goto_a6

    .line 2324
    :cond_ad
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-nez v0, :cond_c1

    .line 2325
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_bf

    move v5, v4

    :goto_b8
    const/16 v7, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_6d

    :cond_bf
    move v5, v3

    goto :goto_b8

    .line 2329
    :cond_c1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_ce

    move v5, v4

    :goto_c8
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_6d

    :cond_ce
    move v5, v3

    goto :goto_c8

    .line 2334
    :cond_d0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_dd

    move v5, v4

    :goto_d7
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_6d

    :cond_dd
    move v5, v3

    goto :goto_d7
.end method

.method public unloadSoundEffects()V
    .registers 9

    .prologue
    const/16 v7, 0x9

    .line 1671
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1672
    :try_start_5
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_b

    .line 1673
    monitor-exit v4

    .line 1697
    :goto_a
    return-void

    .line 1676
    :cond_b
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1677
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1679
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1680
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1e
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_29

    .line 1681
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1680
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1684
    :cond_29
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2a
    if-ge v0, v7, :cond_65

    .line 1685
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_38

    .line 1684
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1688
    :cond_38
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_35

    .line 1689
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1690
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1691
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_35

    .line 1696
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v3

    .line 1694
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_65
    :try_start_65
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1695
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1696
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_62

    goto :goto_a
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 4
    .parameter "clientId"

    .prologue
    .line 4941
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4942
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4943
    monitor-exit v1

    .line 4944
    return-void

    .line 4943
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    .registers 10
    .parameter "cb"

    .prologue
    .line 2428
    const-string v4, "AudioService"

    const-string/jumbo v5, "unregisterBeatsMediaClient"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2430
    .local v3, size:I
    const/4 v2, 0x0

    .line 2432
    .local v2, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2433
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_14
    if-ltz v1, :cond_4f

    .line 2434
    :try_start_16
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/AudioService$BeatsDeathHandler;

    move-object v2, v0

    .line 2435
    iget-object v4, v2, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v4, p1, :cond_4c

    .line 2436
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2437
    invoke-virtual {v2}, Landroid/media/AudioService$BeatsDeathHandler;->releaseBinder()V

    .line 2438
    const/4 v2, 0x0

    .line 2439
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterBeatsMediaClient success, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2442
    :cond_4f
    monitor-exit v5

    .line 2443
    return-void

    .line 2442
    :catchall_51
    move-exception v4

    monitor-exit v5
    :try_end_53
    .catchall {:try_start_16 .. :try_end_53} :catchall_51

    throw v4
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 7
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5447
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5450
    :try_start_1b
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    .line 5451
    :try_start_1e
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 5452
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 5453
    if-eqz v0, :cond_2c

    .line 5455
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5457
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    .line 5458
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 5459
    return-void

    .line 5457
    .end local v0           #topOfStackWillChange:Z
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 5458
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .registers 8
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 5531
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5532
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    .line 5533
    :try_start_6
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5534
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 5535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5536
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5540
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5542
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5543
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_c

    .line 5546
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_32
    move-exception v2

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 5547
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2

    .line 5546
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_32

    .line 5547
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_35

    .line 5548
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 9
    .parameter "rcd"

    .prologue
    .line 5663
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5665
    if-eqz p1, :cond_9

    :try_start_5
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_b

    .line 5667
    :cond_9
    monitor-exit v4

    .line 5687
    :goto_a
    return-void

    .line 5670
    :cond_b
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5671
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5674
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5675
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 5676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5677
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_4a

    if-eqz v3, :cond_17

    .line 5679
    :try_start_27
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_17

    .line 5680
    :catch_2d
    move-exception v0

    .line 5681
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2e
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    .line 5686
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_4a
    move-exception v3

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4a

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_4d
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    goto :goto_a
.end method
