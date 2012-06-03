.class public abstract Lcom/htc/net/wimax/IWimaxController$Stub;
.super Landroid/os/Binder;
.source "IWimaxController.java"

# interfaces
.implements Lcom/htc/net/wimax/IWimaxController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/IWimaxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.net.wimax.IWimaxController"

.field static final TRANSACTION_acquireWimaxLock:I = 0x14

.field static final TRANSACTION_addFrequency:I = 0x2b

.field static final TRANSACTION_addNetwork:I = 0x1d

.field static final TRANSACTION_cancelAlarmDhcpRenew:I = 0x11

.field static final TRANSACTION_cancelAlarmScanRetry:I = 0xf

.field static final TRANSACTION_changeToCorpNapid:I = 0x36

.field static final TRANSACTION_clearChannelList:I = 0x2a

.field static final TRANSACTION_cli:I = 0x3a

.field static final TRANSACTION_connectToDcs:I = 0x6

.field static final TRANSACTION_dcIsConnected:I = 0x9

.field static final TRANSACTION_debugChange:I = 0xd

.field static final TRANSACTION_disableNetwork:I = 0x21

.field static final TRANSACTION_disconnect:I = 0x27

.field static final TRANSACTION_disconnectFromDcs:I = 0x7

.field static final TRANSACTION_enableLogLevel:I = 0x17

.field static final TRANSACTION_enableNetwork:I = 0x20

.field static final TRANSACTION_getBoardName:I = 0xb

.field static final TRANSACTION_getConfiguredDefaultNetworks:I = 0x23

.field static final TRANSACTION_getConfiguredNetworks:I = 0x24

.field static final TRANSACTION_getDeviceInfo:I = 0x1a

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getLastAkaNotificationCode:I = 0x34

.field static final TRANSACTION_getLastEapNotificationMsg:I = 0x35

.field static final TRANSACTION_getNetworkInfo:I = 0x13

.field static final TRANSACTION_getRfChipName:I = 0xc

.field static final TRANSACTION_getScanResults:I = 0x1b

.field static final TRANSACTION_getScanResultsUpdateTime:I = 0x1c

.field static final TRANSACTION_getSettingAuthMode:I = 0x2e

.field static final TRANSACTION_getSettingChannelList:I = 0x2c

.field static final TRANSACTION_getSettingIdleModeTimer:I = 0x32

.field static final TRANSACTION_getSettingTxPower:I = 0x30

.field static final TRANSACTION_getWimax4GInfo:I = 0x19

.field static final TRANSACTION_getWimaxProp:I = 0x3b

.field static final TRANSACTION_getWimaxState:I = 0x12

.field static final TRANSACTION_isAvailable:I = 0x16

.field static final TRANSACTION_isBackoffState:I = 0x5

.field static final TRANSACTION_isDeviceReady:I = 0xa

.field static final TRANSACTION_isPrivateNetwork:I = 0x38

.field static final TRANSACTION_mgtSetSsStarted:I = 0x8

.field static final TRANSACTION_reassociate:I = 0x29

.field static final TRANSACTION_reconnect:I = 0x28

.field static final TRANSACTION_refreshConnectionStatistics:I = 0x25

.field static final TRANSACTION_releaseWimaxLock:I = 0x15

.field static final TRANSACTION_removeNetwork:I = 0x1e

.field static final TRANSACTION_resetConnectionStatistics:I = 0x26

.field static final TRANSACTION_resetPacketErrorRate:I = 0x33

.field static final TRANSACTION_revertToSprintNapid:I = 0x37

.field static final TRANSACTION_saveConfiguration:I = 0x22

.field static final TRANSACTION_setAlarmDhcpRenew:I = 0x10

.field static final TRANSACTION_setAlarmScanRetry:I = 0xe

.field static final TRANSACTION_setAuthMode:I = 0x2d

.field static final TRANSACTION_setIdleModeTimer:I = 0x31

.field static final TRANSACTION_setToggling:I = 0x39

.field static final TRANSACTION_setTxPower:I = 0x2f

.field static final TRANSACTION_setWimaxDunMode:I = 0x4

.field static final TRANSACTION_setWimaxEnabled:I = 0x1

.field static final TRANSACTION_setWimaxEnabledPersist:I = 0x2

.field static final TRANSACTION_setWimaxProp:I = 0x3c

.field static final TRANSACTION_updateNetwork:I = 0x1f

.field static final TRANSACTION_wimaxRescan:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p0, p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.htc.net.wimax.IWimaxController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/htc/net/wimax/IWimaxController;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/htc/net/wimax/IWimaxController;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_586

    .line 662
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 47
    :sswitch_a
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2a

    move v0, v8

    .line 55
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxEnabled(Z)Z

    move-result v4

    .line 56
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_26

    move v9, v8

    :cond_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2a
    move v0, v9

    .line 54
    goto :goto_1c

    .line 62
    :sswitch_2c
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4d

    move v0, v8

    .line 66
    .restart local v0       #_arg0:Z
    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4f

    move v2, v8

    .line 67
    .local v2, _arg1:Z
    :goto_3f
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxEnabledPersist(ZZ)Z

    move-result v4

    .line 68
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v4, :cond_49

    move v9, v8

    :cond_49
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_4d
    move v0, v9

    .line 64
    goto :goto_38

    .restart local v0       #_arg0:Z
    :cond_4f
    move v2, v9

    .line 66
    goto :goto_3f

    .line 74
    .end local v0           #_arg0:Z
    :sswitch_51
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->wimaxRescan()I

    move-result v4

    .line 76
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 82
    .end local v4           #_result:I
    :sswitch_61
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_74

    move v0, v8

    .line 85
    .restart local v0       #_arg0:Z
    :goto_6d
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxDunMode(Z)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_74
    move v0, v9

    .line 84
    goto :goto_6d

    .line 91
    :sswitch_76
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isBackoffState()Z

    move-result v4

    .line 93
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v4, :cond_85

    move v9, v8

    :cond_85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 99
    .end local v4           #_result:Z
    :sswitch_89
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->connectToDcs()Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_98

    move v9, v8

    :cond_98
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 107
    .end local v4           #_result:Z
    :sswitch_9d
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disconnectFromDcs()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_ac

    move v9, v8

    :cond_ac
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v4           #_result:Z
    :sswitch_b1
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_cc

    move v0, v8

    .line 118
    .restart local v0       #_arg0:Z
    :goto_bd
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->mgtSetSsStarted(Z)Z

    move-result v4

    .line 119
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_c7

    move v9, v8

    :cond_c7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_cc
    move v0, v9

    .line 117
    goto :goto_bd

    .line 125
    :sswitch_ce
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->dcIsConnected()Z

    move-result v4

    .line 127
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_dd

    move v9, v8

    :cond_dd
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v4           #_result:Z
    :sswitch_e2
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isDeviceReady()Z

    move-result v4

    .line 135
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_f1

    move v9, v8

    :cond_f1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v4           #_result:Z
    :sswitch_f6
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getBoardName(Ljava/lang/String;)Z

    move-result v4

    .line 145
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v4, :cond_109

    move v9, v8

    :cond_109
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 151
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_10e
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getRfChipName(Ljava/lang/String;)Z

    move-result v4

    .line 155
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_121

    move v9, v8

    :cond_121
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 161
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_126
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_13a

    move v0, v8

    .line 164
    .local v0, _arg0:Z
    :goto_132
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->debugChange(Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_13a
    move v0, v9

    .line 163
    goto :goto_132

    .line 170
    :sswitch_13c
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 173
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAlarmScanRetry(J)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 179
    .end local v0           #_arg0:J
    :sswitch_14d
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cancelAlarmScanRetry()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 186
    :sswitch_15a
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 189
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAlarmDhcpRenew(J)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 195
    .end local v0           #_arg0:J
    :sswitch_16b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cancelAlarmDhcpRenew()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    :sswitch_178
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimaxState()I

    move-result v4

    .line 204
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 210
    .end local v4           #_result:I
    :sswitch_189
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 212
    .local v4, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v4, :cond_19f

    .line 214
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {v4, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 218
    :cond_19f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 224
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_1a4
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 228
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->acquireWimaxLock(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 230
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_1bb

    move v9, v8

    :cond_1bb
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1c0
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->releaseWimaxLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 240
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_1d3

    move v9, v8

    :cond_1d3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 246
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_1d8
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isAvailable()Z

    move-result v4

    .line 248
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v4, :cond_1e7

    move v9, v8

    :cond_1e7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 254
    .end local v4           #_result:Z
    :sswitch_1ec
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->enableLogLevel(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 263
    .end local v0           #_arg0:I
    :sswitch_1fd
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 265
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v4, :cond_213

    .line 267
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 271
    :cond_213
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 277
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_218
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-result-object v4

    .line 279
    .local v4, _result:Lcom/htc/net/wimax/HTCWimax4GInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v4, :cond_22e

    .line 281
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v4, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 285
    :cond_22e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 291
    .end local v4           #_result:Lcom/htc/net/wimax/HTCWimax4GInfo;
    :sswitch_233
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;

    move-result-object v4

    .line 293
    .local v4, _result:Lcom/htc/net/FourG/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v4, :cond_249

    .line 295
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {v4, p3, v8}, Lcom/htc/net/FourG/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 299
    :cond_249
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v4           #_result:Lcom/htc/net/FourG/DeviceInfo;
    :sswitch_24e
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 307
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 313
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;>;"
    :sswitch_25f
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getScanResultsUpdateTime()J

    move-result-wide v4

    .line 315
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 321
    .end local v4           #_result:J
    :sswitch_270
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28f

    .line 324
    sget-object v9, Lcom/htc/net/wimax/Wimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/Wimax4GConfiguration;

    .line 329
    .local v0, _arg0:Lcom/htc/net/wimax/Wimax4GConfiguration;
    :goto_283
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->addNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I

    move-result v4

    .line 330
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 327
    .end local v0           #_arg0:Lcom/htc/net/wimax/Wimax4GConfiguration;
    .end local v4           #_result:I
    :cond_28f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/net/wimax/Wimax4GConfiguration;
    goto :goto_283

    .line 336
    .end local v0           #_arg0:Lcom/htc/net/wimax/Wimax4GConfiguration;
    :sswitch_291
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->removeNetwork(I)Z

    move-result v4

    .line 340
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v4, :cond_2a4

    move v9, v8

    :cond_2a4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 346
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_2a9
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2cb

    .line 349
    sget-object v10, Lcom/htc/net/FourG/FourGConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGConfiguration;

    .line 354
    .local v0, _arg0:Lcom/htc/net/FourG/FourGConfiguration;
    :goto_2bc
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z

    move-result v4

    .line 355
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v4, :cond_2c6

    move v9, v8

    :cond_2c6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 352
    .end local v0           #_arg0:Lcom/htc/net/FourG/FourGConfiguration;
    .end local v4           #_result:Z
    :cond_2cb
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/net/FourG/FourGConfiguration;
    goto :goto_2bc

    .line 361
    .end local v0           #_arg0:Lcom/htc/net/FourG/FourGConfiguration;
    :sswitch_2cd
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2ec

    move v2, v8

    .line 366
    .local v2, _arg1:Z
    :goto_2dd
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 367
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v4, :cond_2e7

    move v9, v8

    :cond_2e7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    .end local v4           #_result:Z
    :cond_2ec
    move v2, v9

    .line 365
    goto :goto_2dd

    .line 373
    .end local v0           #_arg0:I
    :sswitch_2ee
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 376
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disableNetwork(I)Z

    move-result v4

    .line 377
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v4, :cond_301

    move v9, v8

    :cond_301
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 383
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_306
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->saveConfiguration()Z

    move-result v4

    .line 385
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v4, :cond_315

    move v9, v8

    :cond_315
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 391
    .end local v4           #_result:Z
    :sswitch_31a
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getConfiguredDefaultNetworks()Ljava/util/List;

    move-result-object v7

    .line 393
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 399
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GConfiguration;>;"
    :sswitch_32b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 401
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 407
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/net/wimax/HTCWimax4GConfiguration;>;"
    :sswitch_33c
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36d

    .line 410
    sget-object v10, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    .line 416
    .local v0, _arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    :goto_34f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36f

    .line 417
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 422
    .local v2, _arg1:Landroid/app/PendingIntent;
    :goto_35d
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->refreshConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v0, :cond_371

    .line 425
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {v0, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 413
    .end local v0           #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    :cond_36d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    goto :goto_34f

    .line 420
    :cond_36f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    goto :goto_35d

    .line 429
    :cond_371
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 435
    .end local v0           #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    :sswitch_376
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3a7

    .line 438
    sget-object v10, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    .line 444
    .restart local v0       #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    :goto_389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3a9

    .line 445
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 450
    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    :goto_397
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v0, :cond_3ab

    .line 453
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {v0, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 441
    .end local v0           #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    :cond_3a7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    goto :goto_389

    .line 448
    :cond_3a9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    goto :goto_397

    .line 457
    :cond_3ab
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 463
    .end local v0           #_arg0:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    :sswitch_3b0
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disconnect()Z

    move-result v4

    .line 465
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v4, :cond_3bf

    move v9, v8

    :cond_3bf
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 471
    .end local v4           #_result:Z
    :sswitch_3c4
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->reconnect()Z

    move-result v4

    .line 473
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v4, :cond_3d3

    move v9, v8

    :cond_3d3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 479
    .end local v4           #_result:Z
    :sswitch_3d8
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->reassociate()Z

    move-result v4

    .line 481
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v4, :cond_3e7

    move v9, v8

    :cond_3e7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 487
    .end local v4           #_result:Z
    :sswitch_3ec
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->clearChannelList()Z

    move-result v4

    .line 489
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v4, :cond_3fb

    move v9, v8

    :cond_3fb
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 495
    .end local v4           #_result:Z
    :sswitch_400
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 499
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController$Stub;->addFrequency(III)Z

    move-result v4

    .line 503
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v4, :cond_41b

    move v9, v8

    :cond_41b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 509
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_420
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingChannelList()[I

    move-result-object v4

    .line 511
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 517
    .end local v4           #_result:[I
    :sswitch_431
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAuthMode(I)Z

    move-result v4

    .line 521
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v4, :cond_444

    move v9, v8

    :cond_444
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 527
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_449
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingAuthMode()I

    move-result v4

    .line 529
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 535
    .end local v4           #_result:I
    :sswitch_45a
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 538
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setTxPower(F)Z

    move-result v4

    .line 539
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v4, :cond_46d

    move v9, v8

    :cond_46d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 545
    .end local v0           #_arg0:F
    .end local v4           #_result:Z
    :sswitch_472
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingTxPower()F

    move-result v4

    .line 547
    .local v4, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 553
    .end local v4           #_result:F
    :sswitch_483
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 556
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setIdleModeTimer(I)Z

    move-result v4

    .line 557
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v4, :cond_496

    move v9, v8

    :cond_496
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 563
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_49b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingIdleModeTimer()I

    move-result v4

    .line 565
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 571
    .end local v4           #_result:I
    :sswitch_4ac
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->resetPacketErrorRate()Z

    move-result v4

    .line 573
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v4, :cond_4bb

    move v9, v8

    :cond_4bb
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 579
    .end local v4           #_result:Z
    :sswitch_4c0
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getLastAkaNotificationCode()I

    move-result v4

    .line 581
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 587
    .end local v4           #_result:I
    :sswitch_4d1
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getLastEapNotificationMsg()Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 595
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4e2
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 598
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->changeToCorpNapid(I)Z

    move-result v4

    .line 599
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v4, :cond_4f5

    move v9, v8

    :cond_4f5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 605
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4fa
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->revertToSprintNapid()Z

    move-result v4

    .line 607
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v4, :cond_509

    move v9, v8

    :cond_509
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 613
    .end local v4           #_result:Z
    :sswitch_50e
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isPrivateNetwork()Z

    move-result v4

    .line 615
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v4, :cond_51d

    move v9, v8

    :cond_51d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 621
    .end local v4           #_result:Z
    :sswitch_522
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_53d

    move v0, v8

    .line 624
    .local v0, _arg0:Z
    :goto_52e
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setToggling(Z)Z

    move-result v4

    .line 625
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v4, :cond_538

    move v9, v8

    :cond_538
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_53d
    move v0, v9

    .line 623
    goto :goto_52e

    .line 631
    :sswitch_53f
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 641
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_554
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 645
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 651
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_569
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 657
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v4, :cond_580

    move v9, v8

    :cond_580
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_586
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_51
        0x4 -> :sswitch_61
        0x5 -> :sswitch_76
        0x6 -> :sswitch_89
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_ce
        0xa -> :sswitch_e2
        0xb -> :sswitch_f6
        0xc -> :sswitch_10e
        0xd -> :sswitch_126
        0xe -> :sswitch_13c
        0xf -> :sswitch_14d
        0x10 -> :sswitch_15a
        0x11 -> :sswitch_16b
        0x12 -> :sswitch_178
        0x13 -> :sswitch_189
        0x14 -> :sswitch_1a4
        0x15 -> :sswitch_1c0
        0x16 -> :sswitch_1d8
        0x17 -> :sswitch_1ec
        0x18 -> :sswitch_1fd
        0x19 -> :sswitch_218
        0x1a -> :sswitch_233
        0x1b -> :sswitch_24e
        0x1c -> :sswitch_25f
        0x1d -> :sswitch_270
        0x1e -> :sswitch_291
        0x1f -> :sswitch_2a9
        0x20 -> :sswitch_2cd
        0x21 -> :sswitch_2ee
        0x22 -> :sswitch_306
        0x23 -> :sswitch_31a
        0x24 -> :sswitch_32b
        0x25 -> :sswitch_33c
        0x26 -> :sswitch_376
        0x27 -> :sswitch_3b0
        0x28 -> :sswitch_3c4
        0x29 -> :sswitch_3d8
        0x2a -> :sswitch_3ec
        0x2b -> :sswitch_400
        0x2c -> :sswitch_420
        0x2d -> :sswitch_431
        0x2e -> :sswitch_449
        0x2f -> :sswitch_45a
        0x30 -> :sswitch_472
        0x31 -> :sswitch_483
        0x32 -> :sswitch_49b
        0x33 -> :sswitch_4ac
        0x34 -> :sswitch_4c0
        0x35 -> :sswitch_4d1
        0x36 -> :sswitch_4e2
        0x37 -> :sswitch_4fa
        0x38 -> :sswitch_50e
        0x39 -> :sswitch_522
        0x3a -> :sswitch_53f
        0x3b -> :sswitch_554
        0x3c -> :sswitch_569
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method