.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_getActiveApnState:I = 0x31

.field static final TRANSACTION_getActiveLinkProperties:I = 0x8

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xb

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x23

.field static final TRANSACTION_getInterestedNetworkInfo:I = 0x2d

.field static final TRANSACTION_getLastTetherError:I = 0x17

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2b

.field static final TRANSACTION_getLinkProperties:I = 0x9

.field static final TRANSACTION_getMobileDataEnabled:I = 0x12

.field static final TRANSACTION_getMobileDataPhoneType:I = 0x33

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkNameServers:I = 0x2c

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getPhoneMobileDataEnabled:I = 0x32

.field static final TRANSACTION_getProxy:I = 0x25

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1f

.field static final TRANSACTION_getTetherableIfaces:I = 0x19

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1e

.field static final TRANSACTION_getTetheredIfacePairs:I = 0x1b

.field static final TRANSACTION_getTetheredIfaces:I = 0x1a

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_htcRegisterPermittedTether:I = 0x2f

.field static final TRANSACTION_htcRequestPermittedTether:I = 0x2e

.field static final TRANSACTION_htcSetupPermittedTether:I = 0x30

.field static final TRANSACTION_isNetworkSupported:I = 0x7

.field static final TRANSACTION_isTetheringSupported:I = 0x18

.field static final TRANSACTION_prepareVpn:I = 0x28

.field static final TRANSACTION_protectVpn:I = 0x27

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x21

.field static final TRANSACTION_requestRouteToHost:I = 0x10

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x11

.field static final TRANSACTION_setDataDependency:I = 0x26

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setMobileDataEnabled:I = 0x13

.field static final TRANSACTION_setMobileDataPhoneType:I = 0x34

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setPolicyDataEnable:I = 0x14

.field static final TRANSACTION_setRadio:I = 0xd

.field static final TRANSACTION_setRadios:I = 0xc

.field static final TRANSACTION_setUsbTethering:I = 0x20

.field static final TRANSACTION_startLegacyVpn:I = 0x2a

.field static final TRANSACTION_startUsingNetworkFeature:I = 0xe

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0xf

.field static final TRANSACTION_tether:I = 0x15

.field static final TRANSACTION_untether:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_514

    .line 651
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 47
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    .end local v1           #_arg0:I
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v6

    .line 63
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v6           #_result:I
    :sswitch_30
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 71
    .local v6, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v6, :cond_45

    .line 73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 77
    :cond_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_49
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 87
    .restart local v6       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v6, :cond_62

    .line 89
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 93
    :cond_62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 99
    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_66
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 103
    .restart local v6       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v6, :cond_7f

    .line 105
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 109
    :cond_7f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 115
    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_83
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 117
    .local v6, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 123
    .end local v6           #_result:[Landroid/net/NetworkInfo;
    :sswitch_94
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v6

    .line 127
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v6, :cond_a7

    move v0, v7

    :cond_a7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_ac
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 135
    .local v6, _result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v6, :cond_c2

    .line 137
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 141
    :cond_c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v6           #_result:Landroid/net/LinkProperties;
    :sswitch_c7
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 151
    .restart local v6       #_result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v6, :cond_e1

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 157
    :cond_e1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 163
    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/net/LinkProperties;
    :sswitch_e6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v6

    .line 165
    .local v6, _result:[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 171
    .end local v6           #_result:[Landroid/net/NetworkState;
    :sswitch_f7
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v6

    .line 173
    .local v6, _result:Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v6, :cond_10d

    .line 175
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 179
    :cond_10d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 185
    .end local v6           #_result:Landroid/net/NetworkQuotaInfo;
    :sswitch_112
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12d

    move v1, v7

    .line 188
    .local v1, _arg0:Z
    :goto_11e
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v6

    .line 189
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_128

    move v0, v7

    :cond_128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_12d
    move v1, v0

    .line 187
    goto :goto_11e

    .line 195
    :sswitch_12f
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14e

    move v2, v7

    .line 200
    .local v2, _arg1:Z
    :goto_13f
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v6

    .line 201
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v6, :cond_149

    move v0, v7

    :cond_149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_14e
    move v2, v0

    .line 199
    goto :goto_13f

    .line 207
    .end local v1           #_arg0:I
    :sswitch_150
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 214
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 215
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 221
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_result:I
    :sswitch_16d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v6

    .line 227
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 233
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_186
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v6

    .line 239
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v6, :cond_19d

    move v0, v7

    :cond_19d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 245
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_1a2
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 250
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v6

    .line 251
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v6, :cond_1b9

    move v0, v7

    :cond_1b9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v6           #_result:Z
    :sswitch_1be
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v6

    .line 259
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v6, :cond_1cd

    move v0, v7

    :cond_1cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 265
    .end local v6           #_result:Z
    :sswitch_1d2
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1e6

    move v1, v7

    .line 268
    .local v1, _arg0:Z
    :goto_1de
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_1e6
    move v1, v0

    .line 267
    goto :goto_1de

    .line 274
    :sswitch_1e8
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_200

    move v2, v7

    .line 279
    .local v2, _arg1:Z
    :goto_1f8
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    :cond_200
    move v2, v0

    .line 278
    goto :goto_1f8

    .line 285
    .end local v1           #_arg0:I
    :sswitch_202
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v6

    .line 289
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_217
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v6

    .line 299
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_22c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    .line 309
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 315
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_241
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v6

    .line 317
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v6, :cond_250

    move v0, v7

    :cond_250
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 323
    .end local v6           #_result:Z
    :sswitch_255
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 331
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_266
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 333
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 339
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_277
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v6

    .line 341
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 347
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_288
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 349
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 355
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_299
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 357
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 363
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_2aa
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 365
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 371
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_2bb
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 373
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 379
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_2cc
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2e4

    move v1, v7

    .line 382
    .local v1, _arg0:Z
    :goto_2d8
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v6

    .line 383
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_2e4
    move v1, v0

    .line 381
    goto :goto_2d8

    .line 389
    :sswitch_2e6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 398
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2f7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 409
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_30c
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    .line 411
    .local v6, _result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v6, :cond_322

    .line 413
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {v6, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 417
    :cond_322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 423
    .end local v6           #_result:Landroid/net/ProxyProperties;
    :sswitch_327
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_342

    .line 426
    sget-object v0, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyProperties;

    .line 431
    .local v1, _arg0:Landroid/net/ProxyProperties;
    :goto_33a
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 429
    .end local v1           #_arg0:Landroid/net/ProxyProperties;
    :cond_342
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/ProxyProperties;
    goto :goto_33a

    .line 437
    .end local v1           #_arg0:Landroid/net/ProxyProperties;
    :sswitch_344
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    .line 439
    .restart local v6       #_result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v6, :cond_35a

    .line 441
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {v6, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 445
    :cond_35a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 451
    .end local v6           #_result:Landroid/net/ProxyProperties;
    :sswitch_35f
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 455
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_377

    move v2, v7

    .line 456
    .local v2, _arg1:Z
    :goto_36f
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    :cond_377
    move v2, v0

    .line 455
    goto :goto_36f

    .line 462
    .end local v1           #_arg0:I
    :sswitch_379
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_39b

    .line 465
    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 470
    .local v1, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_38c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    .line 471
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v6, :cond_396

    move v0, v7

    :cond_396
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 468
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v6           #_result:Z
    :cond_39b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_38c

    .line 477
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_39d
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 483
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v6, :cond_3b4

    move v0, v7

    :cond_3b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 489
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_3b9
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3dd

    .line 492
    sget-object v8, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 497
    .local v1, _arg0:Lcom/android/internal/net/VpnConfig;
    :goto_3cc
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 498
    .local v6, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v6, :cond_3df

    .line 500
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v6, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 495
    .end local v1           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_3dd
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_3cc

    .line 504
    .restart local v6       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_3df
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 510
    .end local v1           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_3e4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_407

    .line 513
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 519
    .restart local v1       #_arg0:Lcom/android/internal/net/VpnConfig;
    :goto_3f7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 516
    .end local v1           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v2           #_arg1:[Ljava/lang/String;
    .end local v3           #_arg2:[Ljava/lang/String;
    :cond_407
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_3f7

    .line 528
    .end local v1           #_arg0:Lcom/android/internal/net/VpnConfig;
    :sswitch_409
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    .line 530
    .local v6, _result:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v6, :cond_41f

    .line 532
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 536
    :cond_41f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 542
    .end local v6           #_result:Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_424
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkNameServers(I)[Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 552
    .end local v1           #_arg0:I
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_439
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_45d

    .line 555
    sget-object v8, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 560
    .local v1, _arg0:Landroid/net/NetworkInfo;
    :goto_44c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 561
    .local v6, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v6, :cond_45f

    .line 563
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 558
    .end local v1           #_arg0:Landroid/net/NetworkInfo;
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :cond_45d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/NetworkInfo;
    goto :goto_44c

    .line 567
    .restart local v6       #_result:Landroid/net/NetworkInfo;
    :cond_45f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 573
    .end local v1           #_arg0:Landroid/net/NetworkInfo;
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_464
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v6

    .line 581
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 587
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_481
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4aa

    move v1, v7

    .line 591
    .local v1, _arg0:Z
    :goto_48d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 595
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 598
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 599
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_result:I
    :cond_4aa
    move v1, v0

    .line 589
    goto :goto_48d

    .line 605
    :sswitch_4ac
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 616
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_4c1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveApnState()[Lcom/htc/net/ApnState;

    move-result-object v6

    .line 618
    .local v6, _result:[Lcom/htc/net/ApnState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 624
    .end local v6           #_result:[Lcom/htc/net/ApnState;
    :sswitch_4d2
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getPhoneMobileDataEnabled(I)Z

    move-result v6

    .line 628
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v6, :cond_4e5

    move v0, v7

    :cond_4e5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 634
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_4ea
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataPhoneType()I

    move-result v6

    .line 636
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 642
    .end local v6           #_result:I
    :sswitch_4fb
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataPhoneType(I)Z

    move-result v6

    .line 646
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v6, :cond_50e

    move v0, v7

    :cond_50e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_514
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_49
        0x5 -> :sswitch_66
        0x6 -> :sswitch_83
        0x7 -> :sswitch_94
        0x8 -> :sswitch_ac
        0x9 -> :sswitch_c7
        0xa -> :sswitch_e6
        0xb -> :sswitch_f7
        0xc -> :sswitch_112
        0xd -> :sswitch_12f
        0xe -> :sswitch_150
        0xf -> :sswitch_16d
        0x10 -> :sswitch_186
        0x11 -> :sswitch_1a2
        0x12 -> :sswitch_1be
        0x13 -> :sswitch_1d2
        0x14 -> :sswitch_1e8
        0x15 -> :sswitch_202
        0x16 -> :sswitch_217
        0x17 -> :sswitch_22c
        0x18 -> :sswitch_241
        0x19 -> :sswitch_255
        0x1a -> :sswitch_266
        0x1b -> :sswitch_277
        0x1c -> :sswitch_288
        0x1d -> :sswitch_299
        0x1e -> :sswitch_2aa
        0x1f -> :sswitch_2bb
        0x20 -> :sswitch_2cc
        0x21 -> :sswitch_2e6
        0x22 -> :sswitch_2f7
        0x23 -> :sswitch_30c
        0x24 -> :sswitch_327
        0x25 -> :sswitch_344
        0x26 -> :sswitch_35f
        0x27 -> :sswitch_379
        0x28 -> :sswitch_39d
        0x29 -> :sswitch_3b9
        0x2a -> :sswitch_3e4
        0x2b -> :sswitch_409
        0x2c -> :sswitch_424
        0x2d -> :sswitch_439
        0x2e -> :sswitch_464
        0x2f -> :sswitch_481
        0x30 -> :sswitch_4ac
        0x31 -> :sswitch_4c1
        0x32 -> :sswitch_4d2
        0x33 -> :sswitch_4ea
        0x34 -> :sswitch_4fb
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
