.class public abstract Landroid/os/IHtcHardwareService$Stub;
.super Landroid/os/Binder;
.source "IHtcHardwareService.java"

# interfaces
.implements Landroid/os/IHtcHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHtcHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHtcHardwareService"

.field static final TRANSACTION_DmbRequestWakeUpSignal:I = 0xe

.field static final TRANSACTION_UsbMiscControl_IPT:I = 0x7

.field static final TRANSACTION_getCapsLedState:I = 0x8

.field static final TRANSACTION_getFnLedState:I = 0x9

.field static final TRANSACTION_getHeadsetType:I = 0xd

.field static final TRANSACTION_getIMSITstmp:I = 0xf

.field static final TRANSACTION_isFnKeyActive:I = 0x5

.field static final TRANSACTION_makeFnState:I = 0x6

.field static final TRANSACTION_setCapsLedState:I = 0x3

.field static final TRANSACTION_setDualLedState:I = 0x1

.field static final TRANSACTION_setFlashlightBrightness:I = 0xa

.field static final TRANSACTION_setFnLedState:I = 0x4

.field static final TRANSACTION_setHeadsetFMType:I = 0xb

.field static final TRANSACTION_setHeadsetTTYType:I = 0xc

.field static final TRANSACTION_setIMSITstmp:I = 0x10

.field static final TRANSACTION_setJogBallMode:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHtcHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.IHtcHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IHtcHardwareService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IHtcHardwareService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IHtcHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_15e

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 43
    :sswitch_a
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IHtcHardwareService$Stub;->setDualLedState(IIII)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 63
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_2c
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setJogBallMode(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 72
    .end local v1           #_arg0:I
    :sswitch_3c
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4f

    move v1, v8

    .line 75
    .local v1, _arg0:Z
    :goto_48
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setCapsLedState(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1           #_arg0:Z
    :cond_4f
    move v1, v0

    .line 74
    goto :goto_48

    .line 81
    :sswitch_51
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_64

    move v1, v8

    .line 84
    .restart local v1       #_arg0:Z
    :goto_5d
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setFnLedState(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1           #_arg0:Z
    :cond_64
    move v1, v0

    .line 83
    goto :goto_5d

    .line 90
    :sswitch_66
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->isFnKeyActive()Z

    move-result v6

    .line 92
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_75

    move v0, v8

    :cond_75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v6           #_result:Z
    :sswitch_79
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a1

    move v3, v8

    .line 106
    .local v3, _arg2:Z
    :goto_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a3

    move v5, v8

    .local v5, _arg4:Z
    :goto_98
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/os/IHtcHardwareService$Stub;->makeFnState(IIZIZ)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    :cond_a1
    move v3, v0

    .line 104
    goto :goto_8d

    .restart local v3       #_arg2:Z
    .restart local v4       #_arg3:I
    :cond_a3
    move v5, v0

    .line 108
    goto :goto_98

    .line 115
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    :sswitch_a5
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->UsbMiscControl_IPT(I)I

    move-result v6

    .line 119
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 125
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_ba
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getCapsLedState()I

    move-result v6

    .line 127
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v6           #_result:I
    :sswitch_cb
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getFnLedState()I

    move-result v6

    .line 135
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v6           #_result:I
    :sswitch_dc
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setFlashlightBrightness(I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 150
    .end local v1           #_arg0:I
    :sswitch_ed
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setHeadsetFMType(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_fe
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setHeadsetTTYType(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 168
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_10f
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getHeadsetType()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 176
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_120
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->DmbRequestWakeUpSignal(I)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 185
    .end local v1           #_arg0:I
    :sswitch_131
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->getIMSITstmp(Ljava/lang/String;)J

    move-result-wide v6

    .line 189
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 195
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:J
    :sswitch_146
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setIMSITstmp(Ljava/lang/String;)Z

    move-result v6

    .line 199
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v6, :cond_159

    move v0, v8

    :cond_159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_15e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_51
        0x5 -> :sswitch_66
        0x6 -> :sswitch_79
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_ba
        0x9 -> :sswitch_cb
        0xa -> :sswitch_dc
        0xb -> :sswitch_ed
        0xc -> :sswitch_fe
        0xd -> :sswitch_10f
        0xe -> :sswitch_120
        0xf -> :sswitch_131
        0x10 -> :sswitch_146
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
