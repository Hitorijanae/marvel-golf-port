.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x1c

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_getBeatsHeadset:I = 0x37

.field static final TRANSACTION_getBeatsState:I = 0x2b

.field static final TRANSACTION_getGlobalEffect:I = 0x33

.field static final TRANSACTION_getHeadsetProfile:I = 0x3e

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xa

.field static final TRANSACTION_getMode:I = 0x11

.field static final TRANSACTION_getRingerMode:I = 0xc

.field static final TRANSACTION_getSpeakerProfile:I = 0x3f

.field static final TRANSACTION_getStreamMaxVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getVibrateSetting:I = 0xe

.field static final TRANSACTION_isBTConnected:I = 0x3b

.field static final TRANSACTION_isBeatsHeadset:I = 0x2f

.field static final TRANSACTION_isBeatsHeadsetBT:I = 0x35

.field static final TRANSACTION_isBluetoothScoOn:I = 0x1a

.field static final TRANSACTION_isDongleConnected:I = 0x40

.field static final TRANSACTION_isFMActive:I = 0x36

.field static final TRANSACTION_isHeadsetPlugged:I = 0x3a

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x18

.field static final TRANSACTION_isStreamMute:I = 0x7

.field static final TRANSACTION_loadSoundEffects:I = 0x14

.field static final TRANSACTION_playSoundEffect:I = 0x12

.field static final TRANSACTION_playSoundEffectVolume:I = 0x13

.field static final TRANSACTION_queryGlobalEffectList:I = 0x34

.field static final TRANSACTION_registerBeatsMediaClient:I = 0x30

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x1e

.field static final TRANSACTION_registerRemoteControlClient:I = 0x20

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x22

.field static final TRANSACTION_reloadAudioSettings:I = 0x16

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x24

.field static final TRANSACTION_requestAudioFocus:I = 0x1b

.field static final TRANSACTION_restoreEffect:I = 0x2e

.field static final TRANSACTION_setBeatsState:I = 0x2a

.field static final TRANSACTION_setBluetoothScoOn:I = 0x19

.field static final TRANSACTION_setCSCallVolumeOn:I = 0x28

.field static final TRANSACTION_setGlobalEffect:I = 0x32

.field static final TRANSACTION_setHeadsetProfile:I = 0x3c

.field static final TRANSACTION_setHtcSpecificAPdefault:I = 0x38

.field static final TRANSACTION_setIgnoreNotificationMuteSetting:I = 0x29

.field static final TRANSACTION_setMode:I = 0x10

.field static final TRANSACTION_setRingerMode:I = 0xb

.field static final TRANSACTION_setSpeakerProfile:I = 0x3d

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x17

.field static final TRANSACTION_setStreamLastaudibleIndex:I = 0x39

.field static final TRANSACTION_setStreamMute:I = 0x6

.field static final TRANSACTION_setStreamSolo:I = 0x5

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0xd

.field static final TRANSACTION_setVolumePanelOrientation:I = 0x27

.field static final TRANSACTION_shouldVibrate:I = 0xf

.field static final TRANSACTION_startBluetoothSco:I = 0x25

.field static final TRANSACTION_stopBluetoothSco:I = 0x26

.field static final TRANSACTION_triggerBeatsLogo:I = 0x2c

.field static final TRANSACTION_triggerBeatsLogo_audio:I = 0x2d

.field static final TRANSACTION_unloadSoundEffects:I = 0x15

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x1d

.field static final TRANSACTION_unregisterBeatsMediaClient:I = 0x31

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x1f

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x21

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x23


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_584

    .line 693
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 45
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_54
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_6c
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_87

    move v2, v8

    .line 106
    .local v2, _arg1:Z
    :goto_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 107
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_87
    move v2, v0

    .line 104
    goto :goto_7c

    .line 113
    .end local v1           #_arg0:I
    :sswitch_89
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a5

    move v2, v8

    .line 119
    .restart local v2       #_arg1:Z
    :goto_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_a5
    move v2, v0

    .line 117
    goto :goto_99

    .line 126
    .end local v1           #_arg0:I
    :sswitch_a7
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v7

    .line 130
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v7, :cond_ba

    move v0, v8

    :cond_ba
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_bf
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v7

    .line 140
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_d4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v7

    .line 150
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_e9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v7

    .line 160
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 166
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_fe
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 175
    .end local v1           #_arg0:I
    :sswitch_10f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v7

    .line 177
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 183
    .end local v7           #_result:I
    :sswitch_120
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 194
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_135
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v7

    .line 198
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_14a
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v7

    .line 208
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v7, :cond_15d

    move v0, v8

    :cond_15d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_162
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 219
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 225
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_177
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v7

    .line 227
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 233
    .end local v7           #_result:I
    :sswitch_188
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    goto/16 :goto_9

    .line 241
    .end local v1           #_arg0:I
    :sswitch_196
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 246
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_9

    .line 251
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_1a8
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v7

    .line 253
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v7, :cond_1b7

    move v0, v8

    :cond_1b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 259
    .end local v7           #_result:Z
    :sswitch_1bc
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_9

    .line 265
    :sswitch_1c6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_9

    .line 271
    :sswitch_1d0
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e4

    move v1, v8

    .line 274
    .local v1, _arg0:Z
    :goto_1dc
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_1e4
    move v1, v0

    .line 273
    goto :goto_1dc

    .line 280
    :sswitch_1e6
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v7

    .line 282
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v7, :cond_1f5

    move v0, v8

    :cond_1f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 288
    .end local v7           #_result:Z
    :sswitch_1fa
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_20e

    move v1, v8

    .line 291
    .restart local v1       #_arg0:Z
    :goto_206
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_20e
    move v1, v0

    .line 290
    goto :goto_206

    .line 297
    :sswitch_210
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v7

    .line 299
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v7, :cond_21f

    move v0, v8

    :cond_21f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v7           #_result:Z
    :sswitch_224
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 313
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 315
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 318
    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 319
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 325
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_252
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 329
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v7

    .line 331
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 337
    .end local v1           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_26f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 346
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_280
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a6

    .line 349
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 355
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a8

    .line 356
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 361
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_2a1
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_9

    .line 352
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_2a6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_293

    .line 359
    :cond_2a8
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_2a1

    .line 366
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_2aa
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d0

    .line 369
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 375
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_2bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d2

    .line 376
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 381
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_2cb
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_9

    .line 372
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_2d0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_2bd

    .line 379
    :cond_2d2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_2cb

    .line 386
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_2d4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f8

    .line 389
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 395
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_2e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 397
    .local v2, _arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 392
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_2f8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_2e7

    .line 403
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_2fa
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31a

    .line 406
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 412
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_30d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 413
    .restart local v2       #_arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    goto/16 :goto_9

    .line 409
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    :cond_31a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_30d

    .line 418
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_31c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 421
    .local v1, _arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_9

    .line 426
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_32e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 429
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_9

    .line 434
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_340
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 438
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_9

    .line 446
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_35a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 449
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 455
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_36b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 458
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 464
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_37c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumePanelOrientation(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 473
    .end local v1           #_arg0:I
    :sswitch_38d
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3a1

    move v1, v8

    .line 476
    .local v1, _arg0:Z
    :goto_399
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setCSCallVolumeOn(Z)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_3a1
    move v1, v0

    .line 475
    goto :goto_399

    .line 482
    :sswitch_3a3
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3b7

    move v1, v8

    .line 485
    .restart local v1       #_arg0:Z
    :goto_3af
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setIgnoreNotificationMuteSetting(Z)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_3b7
    move v1, v0

    .line 484
    goto :goto_3af

    .line 491
    :sswitch_3b9
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3d1

    move v1, v8

    .line 495
    .restart local v1       #_arg0:Z
    :goto_3c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setBeatsState(ZLjava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_3d1
    move v1, v0

    .line 493
    goto :goto_3c5

    .line 502
    :sswitch_3d3
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getBeatsState()Z

    move-result v7

    .line 504
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v7, :cond_3e2

    move v0, v8

    :cond_3e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 510
    .end local v7           #_result:Z
    :sswitch_3e7
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3fb

    move v1, v8

    .line 513
    .restart local v1       #_arg0:Z
    :goto_3f3
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->triggerBeatsLogo(Z)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_3fb
    move v1, v0

    .line 512
    goto :goto_3f3

    .line 519
    :sswitch_3fd
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_41f

    move v1, v8

    .line 523
    .restart local v1       #_arg0:Z
    :goto_409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_421

    move v2, v8

    .line 525
    .local v2, _arg1:Z
    :goto_410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_423

    move v3, v8

    .line 526
    .local v3, _arg2:Z
    :goto_417
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->triggerBeatsLogo_audio(ZZZ)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    :cond_41f
    move v1, v0

    .line 521
    goto :goto_409

    .restart local v1       #_arg0:Z
    :cond_421
    move v2, v0

    .line 523
    goto :goto_410

    .restart local v2       #_arg1:Z
    :cond_423
    move v3, v0

    .line 525
    goto :goto_417

    .line 532
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :sswitch_425
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_439

    move v1, v8

    .line 535
    .restart local v1       #_arg0:Z
    :goto_431
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->restoreEffect(Z)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_439
    move v1, v0

    .line 534
    goto :goto_431

    .line 541
    :sswitch_43b
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBeatsHeadset()Z

    move-result v7

    .line 543
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v7, :cond_44a

    move v0, v8

    :cond_44a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 549
    .end local v7           #_result:Z
    :sswitch_44f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 552
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerBeatsMediaClient(Landroid/os/IBinder;)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 558
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_460
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 561
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterBeatsMediaClient(Landroid/os/IBinder;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 567
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_471
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setGlobalEffect(ILjava/lang/String;)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 578
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_486
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getGlobalEffect()I

    move-result v7

    .line 580
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 586
    .end local v7           #_result:I
    :sswitch_497
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->queryGlobalEffectList()[I

    move-result-object v7

    .line 588
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 594
    .end local v7           #_result:[I
    :sswitch_4a8
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBeatsHeadsetBT()Z

    move-result v7

    .line 596
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v7, :cond_4b7

    move v0, v8

    :cond_4b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 602
    .end local v7           #_result:Z
    :sswitch_4bc
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isFMActive()Z

    move-result v7

    .line 604
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v7, :cond_4cb

    move v0, v8

    :cond_4cb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 610
    .end local v7           #_result:Z
    :sswitch_4d0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getBeatsHeadset()I

    move-result v7

    .line 612
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 618
    .end local v7           #_result:I
    :sswitch_4e1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->setHtcSpecificAPdefault()V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 625
    :sswitch_4ee
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setStreamLastaudibleIndex(II)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 636
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_503
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHeadsetPlugged()Z

    move-result v7

    .line 638
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v7, :cond_512

    move v0, v8

    :cond_512
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 644
    .end local v7           #_result:Z
    :sswitch_517
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBTConnected()Z

    move-result v7

    .line 646
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v7, :cond_526

    move v0, v8

    :cond_526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 652
    .end local v7           #_result:Z
    :sswitch_52b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 655
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHeadsetProfile([I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 661
    .end local v1           #_arg0:[I
    :sswitch_53c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 664
    .restart local v1       #_arg0:[I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerProfile([I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 670
    .end local v1           #_arg0:[I
    :sswitch_54d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getHeadsetProfile()[I

    move-result-object v7

    .line 672
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 678
    .end local v7           #_result:[I
    :sswitch_55e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpeakerProfile()[I

    move-result-object v7

    .line 680
    .restart local v7       #_result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 686
    .end local v7           #_result:[I
    :sswitch_56f
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isDongleConnected()Z

    move-result v7

    .line 688
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v7, :cond_57e

    move v0, v8

    :cond_57e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_584
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_89
        0x7 -> :sswitch_a7
        0x8 -> :sswitch_bf
        0x9 -> :sswitch_d4
        0xa -> :sswitch_e9
        0xb -> :sswitch_fe
        0xc -> :sswitch_10f
        0xd -> :sswitch_120
        0xe -> :sswitch_135
        0xf -> :sswitch_14a
        0x10 -> :sswitch_162
        0x11 -> :sswitch_177
        0x12 -> :sswitch_188
        0x13 -> :sswitch_196
        0x14 -> :sswitch_1a8
        0x15 -> :sswitch_1bc
        0x16 -> :sswitch_1c6
        0x17 -> :sswitch_1d0
        0x18 -> :sswitch_1e6
        0x19 -> :sswitch_1fa
        0x1a -> :sswitch_210
        0x1b -> :sswitch_224
        0x1c -> :sswitch_252
        0x1d -> :sswitch_26f
        0x1e -> :sswitch_280
        0x1f -> :sswitch_2aa
        0x20 -> :sswitch_2d4
        0x21 -> :sswitch_2fa
        0x22 -> :sswitch_31c
        0x23 -> :sswitch_32e
        0x24 -> :sswitch_340
        0x25 -> :sswitch_35a
        0x26 -> :sswitch_36b
        0x27 -> :sswitch_37c
        0x28 -> :sswitch_38d
        0x29 -> :sswitch_3a3
        0x2a -> :sswitch_3b9
        0x2b -> :sswitch_3d3
        0x2c -> :sswitch_3e7
        0x2d -> :sswitch_3fd
        0x2e -> :sswitch_425
        0x2f -> :sswitch_43b
        0x30 -> :sswitch_44f
        0x31 -> :sswitch_460
        0x32 -> :sswitch_471
        0x33 -> :sswitch_486
        0x34 -> :sswitch_497
        0x35 -> :sswitch_4a8
        0x36 -> :sswitch_4bc
        0x37 -> :sswitch_4d0
        0x38 -> :sswitch_4e1
        0x39 -> :sswitch_4ee
        0x3a -> :sswitch_503
        0x3b -> :sswitch_517
        0x3c -> :sswitch_52b
        0x3d -> :sswitch_53c
        0x3e -> :sswitch_54d
        0x3f -> :sswitch_55e
        0x40 -> :sswitch_56f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
