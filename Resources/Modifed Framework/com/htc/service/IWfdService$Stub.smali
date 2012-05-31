.class public abstract Lcom/htc/service/IWfdService$Stub;
.super Landroid/os/Binder;
.source "IWfdService.java"

# interfaces
.implements Lcom/htc/service/IWfdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/IWfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/IWfdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.IWfdService"

.field static final TRANSACTION_attemptToConfigure:I = 0x7

.field static final TRANSACTION_attemptToReConfigure:I = 0x8

.field static final TRANSACTION_attemptToSetting:I = 0x15

.field static final TRANSACTION_cancel:I = 0xd

.field static final TRANSACTION_clickSetting:I = 0x17

.field static final TRANSACTION_finishService:I = 0x12

.field static final TRANSACTION_getCurrentState:I = 0x3

.field static final TRANSACTION_getDefaultDongle:I = 0x16

.field static final TRANSACTION_getDongleIP:I = 0x11

.field static final TRANSACTION_getDongleScanResults:I = 0x6

.field static final TRANSACTION_getMirrorModeStatus:I = 0xc

.field static final TRANSACTION_handleBackKey:I = 0x10

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setMode:I = 0x4

.field static final TRANSACTION_setupDongleComplete:I = 0xf

.field static final TRANSACTION_startConfigureDongle:I = 0x9

.field static final TRANSACTION_startDiscovery:I = 0x13

.field static final TRANSACTION_startMirrorMode:I = 0xa

.field static final TRANSACTION_startScanDongles:I = 0x5

.field static final TRANSACTION_stopMirrorMode:I = 0xb

.field static final TRANSACTION_switchOnOffMirrorMode:I = 0x14

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_wpsTimeout:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.service.IWfdService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/IWfdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.htc.service.IWfdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/htc/service/IWfdService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/htc/service/IWfdService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/htc/service/IWfdService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/IWfdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1b6

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/service/IWfdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdServiceCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/htc/service/IWfdServiceCallback;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->registerCallback(Lcom/htc/service/IWfdServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0           #_arg0:Lcom/htc/service/IWfdServiceCallback;
    :sswitch_24
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/service/IWfdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdServiceCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/htc/service/IWfdServiceCallback;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->unregisterCallback(Lcom/htc/service/IWfdServiceCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0           #_arg0:Lcom/htc/service/IWfdServiceCallback;
    :sswitch_38
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getCurrentState()I

    move-result v1

    .line 67
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 73
    .end local v1           #_result:I
    :sswitch_48
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->setMode(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 82
    .end local v0           #_arg0:I
    :sswitch_58
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->startScanDongles()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 89
    :sswitch_64
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getDongleScanResults()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 97
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :sswitch_74
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    .line 100
    sget-object v4, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 105
    .local v0, _arg0:Lcom/htc/service/DongleInfo;
    :goto_87
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 103
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_8f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_87

    .line 111
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_91
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac

    .line 114
    sget-object v4, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 119
    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    :goto_a4
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 117
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_ac
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_a4

    .line 125
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_ae
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c9

    .line 128
    sget-object v4, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 133
    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    :goto_c1
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->startConfigureDongle(Lcom/htc/service/DongleInfo;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 131
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_c9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_c1

    .line 139
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_cb
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->startMirrorMode()I

    move-result v1

    .line 141
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v1           #_result:I
    :sswitch_dc
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->stopMirrorMode()I

    move-result v1

    .line 149
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 155
    .end local v1           #_result:I
    :sswitch_ed
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getMirrorModeStatus()I

    move-result v1

    .line 157
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 163
    .end local v1           #_result:I
    :sswitch_fe
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->cancel()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 170
    :sswitch_10b
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->wpsTimeout()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    :sswitch_118
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->setupDongleComplete()V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 184
    :sswitch_125
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->handleBackKey()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 191
    :sswitch_132
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getDongleIP()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 199
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_143
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->finishService()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 206
    :sswitch_150
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->startDiscovery()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 213
    :sswitch_15d
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_169

    move v0, v3

    .line 216
    .local v0, _arg0:Z
    :cond_169
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->switchOnOffMirrorMode(Z)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 222
    .end local v0           #_arg0:Z
    :sswitch_171
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18c

    .line 225
    sget-object v4, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 230
    .local v0, _arg0:Lcom/htc/service/DongleInfo;
    :goto_184
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToSetting(Lcom/htc/service/DongleInfo;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 228
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_18c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_184

    .line 236
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_18e
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 238
    .local v1, _result:Lcom/htc/service/DongleInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v1, :cond_1a4

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v1, p3, v3}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 244
    :cond_1a4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 250
    .end local v1           #_result:Lcom/htc/service/DongleInfo;
    :sswitch_1a9
    const-string v4, "com.htc.service.IWfdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->clickSetting()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1b6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_58
        0x6 -> :sswitch_64
        0x7 -> :sswitch_74
        0x8 -> :sswitch_91
        0x9 -> :sswitch_ae
        0xa -> :sswitch_cb
        0xb -> :sswitch_dc
        0xc -> :sswitch_ed
        0xd -> :sswitch_fe
        0xe -> :sswitch_10b
        0xf -> :sswitch_118
        0x10 -> :sswitch_125
        0x11 -> :sswitch_132
        0x12 -> :sswitch_143
        0x13 -> :sswitch_150
        0x14 -> :sswitch_15d
        0x15 -> :sswitch_171
        0x16 -> :sswitch_18e
        0x17 -> :sswitch_1a9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
