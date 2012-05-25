.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack-Java"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private final SenseVersion:F

.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 15
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 273
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 19
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/media/AudioTrack;->SenseVersion:F

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 158
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 162
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 172
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 188
    const/16 v1, 0x5622

    iput v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 192
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 196
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 204
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 208
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 212
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 218
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 314
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_55

    .line 315
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    :cond_55
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p6

    .line 318
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 320
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 322
    if-gez p7, :cond_81

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_81
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 327
    .local v9, session:[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 329
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 332
    .local v10, initResult:I
    if-eqz v10, :cond_bc

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 344
    :goto_bb
    return-void

    .line 337
    :cond_bc
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 339
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_c9

    .line 340
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_bb

    .line 342
    :cond_c9
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_bb
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .registers 7
    .parameter "audioBufferSize"

    .prologue
    const/4 v2, 0x1

    .line 439
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_19

    move v1, v2

    :goto_9
    mul-int v0, v3, v1

    .line 441
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_11

    if-ge p1, v2, :cond_1b

    .line 442
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    .end local v0           #frameSizeInBytes:I
    :cond_19
    const/4 v1, 0x2

    goto :goto_9

    .line 445
    .restart local v0       #frameSizeInBytes:I
    :cond_1b
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 446
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .registers 11
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "mode"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 361
    if-eq p1, v4, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    if-eq p1, v3, :cond_21

    if-eq p1, v2, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_21

    const/4 v0, 0x6

    if-eq p1, v0, :cond_21

    const/16 v0, 0x8

    if-eq p1, v0, :cond_21

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_21
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 374
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2c

    const v0, 0xbb80

    if-le p2, v0, :cond_45

    .line 375
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_45
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 383
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 385
    sparse-switch p3, :sswitch_data_86

    .line 398
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 399
    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 400
    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :sswitch_5a
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 390
    iput v4, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 406
    :goto_5e
    packed-switch p4, :pswitch_data_9c

    .line 415
    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :sswitch_6b
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 395
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_5e

    .line 408
    :pswitch_72
    iput v3, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 422
    :goto_74
    if-eq p5, v2, :cond_83

    if-eqz p5, :cond_83

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_80
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_74

    .line 425
    :cond_83
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 427
    return-void

    .line 385
    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_5a
        0x2 -> :sswitch_5a
        0x3 -> :sswitch_6b
        0x4 -> :sswitch_5a
        0xc -> :sswitch_6b
    .end sparse-switch

    .line 406
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_72
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method public static getMaxVolume()F
    .registers 1

    .prologue
    .line 487
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 7
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_50

    .line 628
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 649
    :cond_b
    :goto_b
    return v1

    .line 621
    :sswitch_c
    const/4 v0, 0x1

    .line 632
    :goto_d
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1b

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1b

    .line 634
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_b

    .line 625
    :sswitch_19
    const/4 v0, 0x2

    .line 626
    goto :goto_d

    .line 638
    :cond_1b
    const/16 v3, 0xfa0

    if-lt p0, v3, :cond_24

    const v3, 0xbb80

    if-le p0, v3, :cond_41

    .line 639
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_b

    .line 643
    :cond_41
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 644
    .local v1, size:I
    if-eq v1, v2, :cond_49

    if-nez v1, :cond_b

    .line 645
    :cond_49
    const-string v3, "getMinBufferSize(): error querying hardware"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 646
    goto :goto_b

    .line 618
    :sswitch_data_50
    .sparse-switch
        0x2 -> :sswitch_c
        0x3 -> :sswitch_19
        0x4 -> :sswitch_c
        0xc -> :sswitch_19
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .registers 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2
    .parameter "streamType"

    .prologue
    .line 596
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1236
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1240
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_session_id()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "audiotrack_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1162
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 1163
    .local v1, track:Landroid/media/AudioTrack;
    if-nez v1, :cond_b

    .line 1173
    :cond_a
    :goto_a
    return-void

    .line 1167
    :cond_b
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    if-eqz v2, :cond_a

    .line 1168
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1170
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private triggerBeatsLogo(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 1244
    const-string v2, "AudioTrack-Java"

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

    .line 1246
    :try_start_18
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1247
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_40

    .line 1248
    const-string v2, "AudioTrack-Java"

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

    .line 1249
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->triggerBeatsLogo(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_41

    .line 1254
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_40
    :goto_40
    return-void

    .line 1251
    :catch_41
    move-exception v0

    .line 1252
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AudioTrack-Java"

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
    .line 1257
    const-string v2, "AudioTrack-Java"

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

    .line 1259
    :try_start_18
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1260
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_40

    .line 1261
    const-string v2, "AudioTrack-Java"

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

    .line 1262
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->triggerBeatsLogo_audio(ZZZ)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_41

    .line 1267
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_40
    :goto_40
    return-void

    .line 1264
    :catch_41
    move-exception v0

    .line 1265
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AudioTrack-Java"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .registers 4
    .parameter "effectId"

    .prologue
    .line 1033
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1034
    const/4 v0, -0x3

    .line 1036
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_6
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 467
    return-void
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 918
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 920
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 923
    :cond_8
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 659
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .prologue
    .line 529
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .prologue
    .line 536
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method protected getNativeFrameCount()I
    .registers 2

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .registers 3

    .prologue
    .line 559
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_3
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 561
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    .prologue
    .line 589
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .registers 2

    .prologue
    .line 501
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 494
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 549
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 519
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public pause()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 887
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 888
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 895
    iget v0, p0, Landroid/media/AudioTrack;->SenseVersion:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x4010

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_33

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_33

    .line 896
    const-string v0, "AudioTrack-Java"

    const-string v2, "beats setting trigger in pause"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_38

    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->triggerBeatsLogo(Z)V

    .line 904
    :cond_33
    :goto_33
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 905
    monitor-exit v1

    .line 906
    return-void

    .line 901
    :cond_38
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/media/AudioTrack;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_33

    .line 905
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public play()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 832
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_f

    .line 833
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_f
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    :try_start_12
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 838
    iget v0, p0, Landroid/media/AudioTrack;->SenseVersion:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x4010

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_33

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    if-ne v0, v6, :cond_33

    .line 839
    const-string v0, "AudioTrack-Java"

    const-string v2, "beats setting trigger in start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_38

    .line 841
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->triggerBeatsLogo(Z)V

    .line 847
    :cond_33
    :goto_33
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 844
    :cond_38
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/media/AudioTrack;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_33

    .line 848
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 456
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_a

    .line 460
    :goto_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 462
    return-void

    .line 457
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public reloadStaticData()I
    .registers 3

    .prologue
    .line 1005
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1006
    const/4 v0, -0x3

    .line 1008
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_6
.end method

.method public setAuxEffectSendLevel(F)I
    .registers 4
    .parameter "level"

    .prologue
    .line 1055
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1056
    const/4 v0, -0x3

    .line 1066
    :goto_6
    return v0

    .line 1059
    :cond_7
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 1060
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1062
    :cond_13
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1f

    .line 1063
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1065
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1066
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setLoopPoints(III)I
    .registers 6
    .parameter "startInFrames"
    .parameter "endInFrames"
    .parameter "loopCount"

    .prologue
    .line 806
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 807
    const/4 v0, -0x3

    .line 809
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_6
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 4
    .parameter "markerInFrames"

    .prologue
    .line 760
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 761
    const/4 v0, -0x3

    .line 763
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 5
    .parameter "positionInFrames"

    .prologue
    .line 787
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_3
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 789
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    monitor-exit v1

    .line 791
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x3

    monitor-exit v1

    goto :goto_12

    .line 793
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 674
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 5
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 686
    iget-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 687
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 688
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 689
    if-eqz p1, :cond_f

    .line 690
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 693
    :cond_f
    return-void

    .line 688
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setPlaybackRate(I)I
    .registers 4
    .parameter "sampleRateInHz"

    .prologue
    .line 743
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 744
    const/4 v0, -0x3

    .line 749
    :goto_6
    return v0

    .line 746
    :cond_7
    if-gtz p1, :cond_b

    .line 747
    const/4 v0, -0x2

    goto :goto_6

    .line 749
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 4
    .parameter "periodInFrames"

    .prologue
    .line 773
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 774
    const/4 v0, -0x3

    .line 776
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_6
.end method

.method protected setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 818
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 819
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 5
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 707
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 708
    const/4 v0, -0x3

    .line 727
    :goto_6
    return v0

    .line 712
    :cond_7
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 713
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 715
    :cond_13
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1f

    .line 716
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 718
    :cond_1f
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    .line 719
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 721
    :cond_2b
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_37

    .line 722
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 725
    :cond_37
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 727
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public stop()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 858
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_e

    .line 859
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 865
    iget v0, p0, Landroid/media/AudioTrack;->SenseVersion:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x4010

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_33

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_33

    .line 866
    const-string v0, "AudioTrack-Java"

    const-string v2, "beats setting trigger in stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_38

    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->triggerBeatsLogo(Z)V

    .line 874
    :cond_33
    :goto_33
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 875
    monitor-exit v1

    .line 876
    return-void

    .line 871
    :cond_38
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/media/AudioTrack;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_33

    .line 875
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public write([BII)I
    .registers 7
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    const/4 v2, 0x1

    .line 942
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    if-lez p3, :cond_e

    .line 945
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 948
    :cond_e
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_14

    .line 949
    const/4 v0, -0x3

    .line 957
    :goto_13
    return v0

    .line 952
    :cond_14
    if-eqz p1, :cond_1f

    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 954
    :cond_1f
    const/4 v0, -0x2

    goto :goto_13

    .line 957
    :cond_21
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    goto :goto_13
.end method

.method public write([SII)I
    .registers 7
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    const/4 v2, 0x1

    .line 978
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    if-lez p3, :cond_e

    .line 981
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 984
    :cond_e
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_14

    .line 985
    const/4 v0, -0x3

    .line 993
    :goto_13
    return v0

    .line 988
    :cond_14
    if-eqz p1, :cond_1f

    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 990
    :cond_1f
    const/4 v0, -0x2

    goto :goto_13

    .line 993
    :cond_21
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    goto :goto_13
.end method
