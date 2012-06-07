.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_NotifyWifiPhoneCallComeIn:I = 0x3e

.field static final TRANSACTION_NotifyWifiPhoneCallEnd:I = 0x3f

.field static final TRANSACTION_acquireMulticastLock:I = 0x28

.field static final TRANSACTION_acquireWifiLock:I = 0x23

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x30

.field static final TRANSACTION_checkWifiApEnabledMhsRequest:I = 0x56

.field static final TRANSACTION_clearBlacklist:I = 0x31

.field static final TRANSACTION_disableNetwork:I = 0x6

.field static final TRANSACTION_disableSsdpPacket:I = 0x35

.field static final TRANSACTION_disconnect:I = 0xa

.field static final TRANSACTION_enableAutoIP:I = 0x36

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_enablePowerActiveForFotaDownload:I = 0x3b

.field static final TRANSACTION_enablePowerActiveMode:I = 0x3a

.field static final TRANSACTION_enableSsdpPacket:I = 0x34

.field static final TRANSACTION_getAssocListStr:I = 0x4d

.field static final TRANSACTION_getAssociationManual:I = 0x15

.field static final TRANSACTION_getClientInfo:I = 0x4e

.field static final TRANSACTION_getConfigFile:I = 0x33

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xd

.field static final TRANSACTION_getConnectionPolicyEnabled:I = 0x55

.field static final TRANSACTION_getDhcpInfo:I = 0x22

.field static final TRANSACTION_getDockWifiApAutoEnabled:I = 0x41

.field static final TRANSACTION_getDockWifiAutoEnabled:I = 0x43

.field static final TRANSACTION_getDongleScanList:I = 0x19

.field static final TRANSACTION_getFrequencyBand:I = 0x1f

.field static final TRANSACTION_getHotspotNumAllowedChannels:I = 0x4f

.field static final TRANSACTION_getMessenger:I = 0x32

.field static final TRANSACTION_getMostPreferredNetwork:I = 0x4b

.field static final TRANSACTION_getRequestedList:I = 0x50

.field static final TRANSACTION_getScanResults:I = 0x9

.field static final TRANSACTION_getSmartWifiEnabledState:I = 0x37

.field static final TRANSACTION_getTetheringDhcpRange:I = 0x58

.field static final TRANSACTION_getWagAddress:I = 0x48

.field static final TRANSACTION_getWagAsUserDefined:I = 0x47

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2b

.field static final TRANSACTION_getWifiEnabledState:I = 0x1c

.field static final TRANSACTION_getWifiOffloadEnabled:I = 0x3d

.field static final TRANSACTION_getWifidisplayApEnabled:I = 0x11

.field static final TRANSACTION_getWifidisplayApState:I = 0x10

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x26

.field static final TRANSACTION_isDualBandSupported:I = 0x20

.field static final TRANSACTION_isMulticastEnabled:I = 0x27

.field static final TRANSACTION_isWifiPowerModeNormal:I = 0x39

.field static final TRANSACTION_pingSupplicant:I = 0x7

.field static final TRANSACTION_reassociate:I = 0xc

.field static final TRANSACTION_reconnect:I = 0xb

.field static final TRANSACTION_releaseMulticastLock:I = 0x29

.field static final TRANSACTION_releaseWifiLock:I = 0x25

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_resetDhcpConfig:I = 0x51

.field static final TRANSACTION_saveConfiguration:I = 0x21

.field static final TRANSACTION_setAssociationManual:I = 0x14

.field static final TRANSACTION_setConnectionPolicyEnabled:I = 0x54

.field static final TRANSACTION_setCountryCode:I = 0x1d

.field static final TRANSACTION_setDockWifiApAutoEnabled:I = 0x40

.field static final TRANSACTION_setDockWifiAutoEnabled:I = 0x42

.field static final TRANSACTION_setFrequencyBand:I = 0x1e

.field static final TRANSACTION_setHotspotAutoChannel:I = 0x44

.field static final TRANSACTION_setMostPreferredNetwork:I = 0x4c

.field static final TRANSACTION_setWagAddress:I = 0x49

.field static final TRANSACTION_setWagAsUserDefined:I = 0x4a

.field static final TRANSACTION_setWifiApConfig:I = 0x52

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2d

.field static final TRANSACTION_setWifiApEnabled:I = 0x2a

.field static final TRANSACTION_setWifiApEnabledMhsRequest:I = 0x57

.field static final TRANSACTION_setWifiApMacList:I = 0x53

.field static final TRANSACTION_setWifiDisplayConfigure:I = 0x16

.field static final TRANSACTION_setWifiDisplayUnscan:I = 0x1b

.field static final TRANSACTION_setWifiEnabled:I = 0xe

.field static final TRANSACTION_setWifiEnabledPersist:I = 0xf

.field static final TRANSACTION_setWifiOffloadEnabled:I = 0x3c

.field static final TRANSACTION_setWifiPowerSavingMode:I = 0x38

.field static final TRANSACTION_setWifidisplayApEnabled:I = 0x13

.field static final TRANSACTION_setWifidisplayEnabled:I = 0x12

.field static final TRANSACTION_setWpsPbc:I = 0x45

.field static final TRANSACTION_setWpsPin:I = 0x46

.field static final TRANSACTION_startDongleScan:I = 0x17

.field static final TRANSACTION_startDongleSingleCscan:I = 0x18

.field static final TRANSACTION_startDongleWakeUp:I = 0x1a

.field static final TRANSACTION_startScan:I = 0x8

.field static final TRANSACTION_startWifi:I = 0x2e

.field static final TRANSACTION_stopWifi:I = 0x2f

.field static final TRANSACTION_tryTostartCWDeRegister:I = 0x5

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_7c0

    .line 905
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 47
    :sswitch_a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 60
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_20
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 63
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_33
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_33

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_40
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_53

    move v7, v8

    :cond_53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_57
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_75

    move v1, v8

    .line 90
    .local v1, _arg1:Z
    :goto_67
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_71

    move v7, v8

    :cond_71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_75
    move v1, v7

    .line 89
    goto :goto_67

    .line 97
    .end local v0           #_arg0:I
    :sswitch_77
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->tryTostartCWDeRegister()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 104
    :sswitch_83
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 108
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_96

    move v7, v8

    :cond_96
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 114
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_9b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 116
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_aa

    move v7, v8

    :cond_aa
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 122
    .end local v4           #_result:Z
    :sswitch_af
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c3

    move v0, v8

    .line 125
    .local v0, _arg0:Z
    :goto_bb
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_c3
    move v0, v7

    .line 124
    goto :goto_bb

    .line 131
    :sswitch_c5
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 133
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 139
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_d6
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 146
    :sswitch_e3
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 153
    :sswitch_f0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 160
    :sswitch_fd
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 162
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_113

    .line 164
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 168
    :cond_113
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_118
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_133

    move v0, v8

    .line 177
    .restart local v0       #_arg0:Z
    :goto_124
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 178
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_12e

    move v7, v8

    :cond_12e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_133
    move v0, v7

    .line 176
    goto :goto_124

    .line 184
    :sswitch_135
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_157

    move v0, v8

    .line 188
    .restart local v0       #_arg0:Z
    :goto_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_159

    move v1, v8

    .line 189
    .restart local v1       #_arg1:Z
    :goto_148
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledPersist(ZZ)Z

    move-result v4

    .line 190
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v4, :cond_152

    move v7, v8

    :cond_152
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_157
    move v0, v7

    .line 186
    goto :goto_141

    .restart local v0       #_arg0:Z
    :cond_159
    move v1, v7

    .line 188
    goto :goto_148

    .line 196
    .end local v0           #_arg0:Z
    :sswitch_15b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApState()I

    move-result v4

    .line 198
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v4           #_result:I
    :sswitch_16c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApEnabled()Z

    move-result v4

    .line 206
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_17b

    move v7, v8

    :cond_17b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v4           #_result:Z
    :sswitch_180
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19b

    move v0, v8

    .line 215
    .restart local v0       #_arg0:Z
    :goto_18c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayEnabled(Z)Z

    move-result v4

    .line 216
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_196

    move v7, v8

    :cond_196
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_19b
    move v0, v7

    .line 214
    goto :goto_18c

    .line 222
    :sswitch_19d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1bf

    .line 225
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 231
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c1

    move v1, v8

    .line 232
    .restart local v1       #_arg1:Z
    :goto_1b7
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 228
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    :cond_1bf
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b0

    :cond_1c1
    move v1, v7

    .line 231
    goto :goto_1b7

    .line 238
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1c3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAssociationManual(I)Z

    move-result v4

    .line 242
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v4, :cond_1d6

    move v7, v8

    :cond_1d6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 248
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_1db
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssociationManual()I

    move-result v4

    .line 250
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v4           #_result:I
    :sswitch_1ec
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v4

    .line 262
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v4, :cond_203

    move v7, v8

    :cond_203
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 268
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_208
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleScan()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 275
    :sswitch_215
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleSingleCscan(I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 284
    .end local v0           #_arg0:I
    :sswitch_226
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDongleScanList()Ljava/util/List;

    move-result-object v5

    .line 286
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 292
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_237
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleWakeUp(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 301
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_248
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_263

    move v0, v8

    .line 304
    .local v0, _arg0:Z
    :goto_254
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayUnscan(Z)Z

    move-result v4

    .line 305
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v4, :cond_25e

    move v7, v8

    :cond_25e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_263
    move v0, v7

    .line 303
    goto :goto_254

    .line 311
    :sswitch_265
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 313
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 319
    .end local v4           #_result:I
    :sswitch_276
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28e

    move v1, v8

    .line 324
    .local v1, _arg1:Z
    :goto_286
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    :cond_28e
    move v1, v7

    .line 323
    goto :goto_286

    .line 330
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_290
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2a8

    move v1, v8

    .line 335
    .restart local v1       #_arg1:Z
    :goto_2a0
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    :cond_2a8
    move v1, v7

    .line 334
    goto :goto_2a0

    .line 341
    .end local v0           #_arg0:I
    :sswitch_2aa
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 343
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v4           #_result:I
    :sswitch_2bb
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 351
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_2ca

    move v7, v8

    :cond_2ca
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v4           #_result:Z
    :sswitch_2cf
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 359
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_2de

    move v7, v8

    :cond_2de
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 365
    .end local v4           #_result:Z
    :sswitch_2e3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 367
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v4, :cond_2f9

    .line 369
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 373
    :cond_2f9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 379
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_2fe
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 383
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32c

    .line 388
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 393
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_31d
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 394
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v4, :cond_327

    move v7, v8

    :cond_327
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 391
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_32c
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_31d

    .line 400
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    :sswitch_32e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 404
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_34d

    .line 405
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 410
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_345
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 408
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_34d
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_345

    .line 416
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_34f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 419
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 420
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v4, :cond_362

    move v7, v8

    :cond_362
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 426
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_367
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 433
    :sswitch_374
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 435
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v4, :cond_383

    move v7, v8

    :cond_383
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 441
    .end local v4           #_result:Z
    :sswitch_388
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 445
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 452
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_39d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 459
    :sswitch_3aa
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3cc

    .line 462
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 468
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_3bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3ce

    move v1, v8

    .line 469
    .local v1, _arg1:Z
    :goto_3c4
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 465
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    :cond_3cc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_3bd

    :cond_3ce
    move v1, v7

    .line 468
    goto :goto_3c4

    .line 475
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3d0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 477
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 483
    .end local v4           #_result:I
    :sswitch_3e1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 485
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v4, :cond_3f7

    .line 487
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 491
    :cond_3f7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 497
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3fc
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_417

    .line 500
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 505
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_40f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 503
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_417
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_40f

    .line 511
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_419
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 518
    :sswitch_426
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 525
    :sswitch_433
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 534
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_444
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 541
    :sswitch_451
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 543
    .local v4, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v4, :cond_467

    .line 545
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    invoke-virtual {v4, p3, v8}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 549
    :cond_467
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 555
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_46c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 563
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_47d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->enableSsdpPacket()Z

    move-result v4

    .line 565
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v4, :cond_48c

    move v7, v8

    :cond_48c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 571
    .end local v4           #_result:Z
    :sswitch_491
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disableSsdpPacket()Z

    move-result v4

    .line 573
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v4, :cond_4a0

    move v7, v8

    :cond_4a0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 579
    .end local v4           #_result:Z
    :sswitch_4a5
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 582
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoIP(I)Z

    move-result v4

    .line 583
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v4, :cond_4b8

    move v7, v8

    :cond_4b8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 589
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4bd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSmartWifiEnabledState()I

    move-result v4

    .line 591
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 597
    .end local v4           #_result:I
    :sswitch_4ce
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPowerSavingMode(I)Z

    move-result v4

    .line 601
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v4, :cond_4e1

    move v7, v8

    :cond_4e1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 607
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4e6
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiPowerModeNormal()Z

    move-result v4

    .line 609
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    if-eqz v4, :cond_4f5

    move v7, v8

    :cond_4f5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 615
    .end local v4           #_result:Z
    :sswitch_4fa
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_515

    move v0, v8

    .line 618
    .local v0, _arg0:Z
    :goto_506
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveMode(Z)Z

    move-result v4

    .line 619
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v4, :cond_510

    move v7, v8

    :cond_510
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_515
    move v0, v7

    .line 617
    goto :goto_506

    .line 625
    :sswitch_517
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_532

    move v0, v8

    .line 628
    .restart local v0       #_arg0:Z
    :goto_523
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveForFotaDownload(Z)Z

    move-result v4

    .line 629
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v4, :cond_52d

    move v7, v8

    :cond_52d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_532
    move v0, v7

    .line 627
    goto :goto_523

    .line 635
    :sswitch_534
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_54f

    move v0, v8

    .line 638
    .restart local v0       #_arg0:Z
    :goto_540
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiOffloadEnabled(Z)Z

    move-result v4

    .line 639
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v4, :cond_54a

    move v7, v8

    :cond_54a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_54f
    move v0, v7

    .line 637
    goto :goto_540

    .line 645
    :sswitch_551
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiOffloadEnabled()Z

    move-result v4

    .line 647
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v4, :cond_560

    move v7, v8

    :cond_560
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 653
    .end local v4           #_result:Z
    :sswitch_565
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallComeIn()Z

    move-result v4

    .line 655
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    if-eqz v4, :cond_574

    move v7, v8

    :cond_574
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 661
    .end local v4           #_result:Z
    :sswitch_579
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallEnd()Z

    move-result v4

    .line 663
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v4, :cond_588

    move v7, v8

    :cond_588
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 669
    .end local v4           #_result:Z
    :sswitch_58d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5a8

    move v0, v8

    .line 672
    .restart local v0       #_arg0:Z
    :goto_599
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiApAutoEnabled(Z)Z

    move-result v4

    .line 673
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    if-eqz v4, :cond_5a3

    move v7, v8

    :cond_5a3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_5a8
    move v0, v7

    .line 671
    goto :goto_599

    .line 679
    :sswitch_5aa
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiApAutoEnabled()Z

    move-result v4

    .line 681
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v4, :cond_5b9

    move v7, v8

    :cond_5b9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 687
    .end local v4           #_result:Z
    :sswitch_5be
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5d9

    move v0, v8

    .line 690
    .restart local v0       #_arg0:Z
    :goto_5ca
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiAutoEnabled(Z)Z

    move-result v4

    .line 691
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v4, :cond_5d4

    move v7, v8

    :cond_5d4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_5d9
    move v0, v7

    .line 689
    goto :goto_5ca

    .line 697
    :sswitch_5db
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiAutoEnabled()Z

    move-result v4

    .line 699
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v4, :cond_5ea

    move v7, v8

    :cond_5ea
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 705
    .end local v4           #_result:Z
    :sswitch_5ef
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotAutoChannel(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 714
    .end local v0           #_arg0:I
    :sswitch_600
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWpsPbc()Z

    move-result v4

    .line 716
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    if-eqz v4, :cond_60f

    move v7, v8

    :cond_60f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 722
    .end local v4           #_result:Z
    :sswitch_614
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWpsPin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 732
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_629
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWagAsUserDefined()Z

    move-result v4

    .line 734
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v4, :cond_638

    move v7, v8

    :cond_638
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 740
    .end local v4           #_result:Z
    :sswitch_63d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWagAddress()Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 748
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_64e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 751
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWagAddress(Ljava/lang/String;)Z

    move-result v4

    .line 752
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v4, :cond_661

    move v7, v8

    :cond_661
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 758
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_666
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_681

    move v0, v8

    .line 761
    .local v0, _arg0:Z
    :goto_672
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWagAsUserDefined(Z)Z

    move-result v4

    .line 762
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    if-eqz v4, :cond_67c

    move v7, v8

    :cond_67c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_681
    move v0, v7

    .line 760
    goto :goto_672

    .line 768
    :sswitch_683
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMostPreferredNetwork()I

    move-result v4

    .line 770
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 776
    .end local v4           #_result:I
    :sswitch_694
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMostPreferredNetwork(I)Z

    move-result v4

    .line 780
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    if-eqz v4, :cond_6a7

    move v7, v8

    :cond_6a7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 786
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_6ac
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssocListStr()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 794
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6bd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getClientInfo()Ljava/lang/String;

    move-result-object v4

    .line 796
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 802
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6ce
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotNumAllowedChannels()I

    move-result v4

    .line 804
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 810
    .end local v4           #_result:I
    :sswitch_6df
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRequestedList()Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 818
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6f0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->resetDhcpConfig()V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 825
    :sswitch_6fd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_71c

    .line 828
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 833
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_710
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 834
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 831
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_71c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_710

    .line 840
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_71e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_73d

    .line 843
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 848
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_731
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 849
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 846
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_73d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_731

    .line 855
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_73f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_75a

    move v0, v8

    .line 858
    .local v0, _arg0:Z
    :goto_74b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setConnectionPolicyEnabled(Z)Z

    move-result v4

    .line 859
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    if-eqz v4, :cond_755

    move v7, v8

    :cond_755
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_75a
    move v0, v7

    .line 857
    goto :goto_74b

    .line 865
    :sswitch_75c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionPolicyEnabled()Z

    move-result v4

    .line 867
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    if-eqz v4, :cond_76b

    move v7, v8

    :cond_76b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 873
    .end local v4           #_result:Z
    :sswitch_770
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWifiApEnabledMhsRequest()I

    move-result v4

    .line 875
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 881
    .end local v4           #_result:I
    :sswitch_781
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7aa

    .line 884
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 890
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7ac

    move v1, v8

    .line 891
    .restart local v1       #_arg1:Z
    :goto_79b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 892
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v4, :cond_7a5

    move v7, v8

    :cond_7a5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 887
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_7aa
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_794

    :cond_7ac
    move v1, v7

    .line 890
    goto :goto_79b

    .line 898
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_7ae
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_7c0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_40
        0x4 -> :sswitch_57
        0x5 -> :sswitch_77
        0x6 -> :sswitch_83
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_af
        0x9 -> :sswitch_c5
        0xa -> :sswitch_d6
        0xb -> :sswitch_e3
        0xc -> :sswitch_f0
        0xd -> :sswitch_fd
        0xe -> :sswitch_118
        0xf -> :sswitch_135
        0x10 -> :sswitch_15b
        0x11 -> :sswitch_16c
        0x12 -> :sswitch_180
        0x13 -> :sswitch_19d
        0x14 -> :sswitch_1c3
        0x15 -> :sswitch_1db
        0x16 -> :sswitch_1ec
        0x17 -> :sswitch_208
        0x18 -> :sswitch_215
        0x19 -> :sswitch_226
        0x1a -> :sswitch_237
        0x1b -> :sswitch_248
        0x1c -> :sswitch_265
        0x1d -> :sswitch_276
        0x1e -> :sswitch_290
        0x1f -> :sswitch_2aa
        0x20 -> :sswitch_2bb
        0x21 -> :sswitch_2cf
        0x22 -> :sswitch_2e3
        0x23 -> :sswitch_2fe
        0x24 -> :sswitch_32e
        0x25 -> :sswitch_34f
        0x26 -> :sswitch_367
        0x27 -> :sswitch_374
        0x28 -> :sswitch_388
        0x29 -> :sswitch_39d
        0x2a -> :sswitch_3aa
        0x2b -> :sswitch_3d0
        0x2c -> :sswitch_3e1
        0x2d -> :sswitch_3fc
        0x2e -> :sswitch_419
        0x2f -> :sswitch_426
        0x30 -> :sswitch_433
        0x31 -> :sswitch_444
        0x32 -> :sswitch_451
        0x33 -> :sswitch_46c
        0x34 -> :sswitch_47d
        0x35 -> :sswitch_491
        0x36 -> :sswitch_4a5
        0x37 -> :sswitch_4bd
        0x38 -> :sswitch_4ce
        0x39 -> :sswitch_4e6
        0x3a -> :sswitch_4fa
        0x3b -> :sswitch_517
        0x3c -> :sswitch_534
        0x3d -> :sswitch_551
        0x3e -> :sswitch_565
        0x3f -> :sswitch_579
        0x40 -> :sswitch_58d
        0x41 -> :sswitch_5aa
        0x42 -> :sswitch_5be
        0x43 -> :sswitch_5db
        0x44 -> :sswitch_5ef
        0x45 -> :sswitch_600
        0x46 -> :sswitch_614
        0x47 -> :sswitch_629
        0x48 -> :sswitch_63d
        0x49 -> :sswitch_64e
        0x4a -> :sswitch_666
        0x4b -> :sswitch_683
        0x4c -> :sswitch_694
        0x4d -> :sswitch_6ac
        0x4e -> :sswitch_6bd
        0x4f -> :sswitch_6ce
        0x50 -> :sswitch_6df
        0x51 -> :sswitch_6f0
        0x52 -> :sswitch_6fd
        0x53 -> :sswitch_71e
        0x54 -> :sswitch_73f
        0x55 -> :sswitch_75c
        0x56 -> :sswitch_770
        0x57 -> :sswitch_781
        0x58 -> :sswitch_7ae
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
