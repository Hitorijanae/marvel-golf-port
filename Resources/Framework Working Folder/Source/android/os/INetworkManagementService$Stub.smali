.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_BlockEmbeddedConn:I = 0x1a

.field static final TRANSACTION_SwitchUsbFunc:I = 0x22

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addSecondaryRoute:I = 0x10

.field static final TRANSACTION_attachPppd:I = 0x29

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x7

.field static final TRANSACTION_detachPppd:I = 0x2a

.field static final TRANSACTION_disableIpv6:I = 0xb

.field static final TRANSACTION_disableNat:I = 0x27

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x26

.field static final TRANSACTION_flushDefaultDnsCache:I = 0x41

.field static final TRANSACTION_flushInterfaceDnsCache:I = 0x42

.field static final TRANSACTION_getAssocList:I = 0x44

.field static final TRANSACTION_getDnsForwarders:I = 0x25

.field static final TRANSACTION_getHotspotEnabled:I = 0x49

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getInterfaceRxThrottle:I = 0x3d

.field static final TRANSACTION_getInterfaceTxThrottle:I = 0x3e

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_getLeasesList:I = 0x45

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x32

.field static final TRANSACTION_getNetworkStatsSummary:I = 0x31

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x34

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x33

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_getStaChannel:I = 0x5

.field static final TRANSACTION_getTetheringDhcpEnabled:I = 0x18

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x3b

.field static final TRANSACTION_isTetheringStarted:I = 0x1c

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1f

.field static final TRANSACTION_listTtys:I = 0x28

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeInterfaceAlert:I = 0x38

.field static final TRANSACTION_removeInterfaceQuota:I = 0x36

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeSecondaryRoute:I = 0x11

.field static final TRANSACTION_setAccessPoint:I = 0x30

.field static final TRANSACTION_setDefaultInterfaceForDns:I = 0x3f

.field static final TRANSACTION_setDnsForwarders:I = 0x24

.field static final TRANSACTION_setDnsServersForInterface:I = 0x40

.field static final TRANSACTION_setGlobalAlert:I = 0x39

.field static final TRANSACTION_setHotspotEnabled:I = 0x48

.field static final TRANSACTION_setHotspotTXPower:I = 0x46

.field static final TRANSACTION_setInterfaceAlert:I = 0x37

.field static final TRANSACTION_setInterfaceConfig:I = 0x6

.field static final TRANSACTION_setInterfaceDown:I = 0x8

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0xa

.field static final TRANSACTION_setInterfaceQuota:I = 0x35

.field static final TRANSACTION_setInterfaceThrottle:I = 0x3c

.field static final TRANSACTION_setInterfaceUp:I = 0x9

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x14

.field static final TRANSACTION_setIptDhcp:I = 0x20

.field static final TRANSACTION_setMACList:I = 0x43

.field static final TRANSACTION_setTetheringDhcpEnabled:I = 0x17

.field static final TRANSACTION_setTetheringHtcDhcpRange:I = 0x19

.field static final TRANSACTION_setUidNetworkRules:I = 0x3a

.field static final TRANSACTION_setWiMaxCoExistence:I = 0x47

.field static final TRANSACTION_shutdown:I = 0x12

.field static final TRANSACTION_startAccessPoint:I = 0x2e

.field static final TRANSACTION_startHtcTethering:I = 0x16

.field static final TRANSACTION_startIptMode:I = 0x23

.field static final TRANSACTION_startTethering:I = 0x15

.field static final TRANSACTION_startWpsRegistrar:I = 0x2c

.field static final TRANSACTION_stopAccessPoint:I = 0x2f

.field static final TRANSACTION_stopIptDhcp:I = 0x21

.field static final TRANSACTION_stopTethering:I = 0x1b

.field static final TRANSACTION_stopWpsRegistrar:I = 0x2d

.field static final TRANSACTION_tetherInterface:I = 0x1d

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x1e

.field static final TRANSACTION_wifiFirmwareReload:I = 0x2b


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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
    .line 42
    sparse-switch p1, :sswitch_data_682

    .line 813
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 46
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_7

    .line 51
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 54
    .local v1, _arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    const/4 v0, 0x1

    goto :goto_7

    .line 60
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 63
    .restart local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v0, 0x1

    goto :goto_7

    .line 69
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_39
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    goto :goto_7

    .line 77
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_4a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 81
    .local v10, _result:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v10, :cond_66

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_64
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    :cond_66
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Landroid/net/InterfaceConfiguration;
    :sswitch_6b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getStaChannel()I

    move-result v10

    .line 95
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x1

    goto :goto_7

    .line 101
    .end local v10           #_result:I
    :sswitch_7c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9c

    .line 106
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 111
    .local v2, _arg1:Landroid/net/InterfaceConfiguration;
    :goto_93
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 109
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :cond_9c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/InterfaceConfiguration;
    goto :goto_93

    .line 117
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :sswitch_9e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_b0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 144
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_d4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ed

    const/4 v2, 0x1

    .line 149
    .local v2, _arg1:Z
    :goto_e4
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 148
    .end local v2           #_arg1:Z
    :cond_ed
    const/4 v2, 0x0

    goto :goto_e4

    .line 155
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_ef
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 164
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_101
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 173
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_113
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v10

    .line 177
    .local v10, _result:[Landroid/net/RouteInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p3, v10, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 179
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 183
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:[Landroid/net/RouteInfo;
    :sswitch_12a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14a

    .line 188
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 193
    .local v2, _arg1:Landroid/net/RouteInfo;
    :goto_141
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 191
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_14a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_141

    .line 199
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_14c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16c

    .line 204
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 209
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_163
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 207
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_16c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_163

    .line 215
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_16e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18e

    .line 220
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 225
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_185
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 223
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_18e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_185

    .line 231
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_190
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b0

    .line 236
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 241
    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    :goto_1a7
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 239
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :cond_1b0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/RouteInfo;
    goto :goto_1a7

    .line 247
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/RouteInfo;
    :sswitch_1b2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 254
    :sswitch_1c0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v10

    .line 256
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v10, :cond_1d5

    const/4 v0, 0x1

    :goto_1cf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 257
    :cond_1d5
    const/4 v0, 0x0

    goto :goto_1cf

    .line 262
    .end local v10           #_result:Z
    :sswitch_1d7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ec

    const/4 v1, 0x1

    .line 265
    .local v1, _arg0:Z
    :goto_1e3
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v1           #_arg0:Z
    :cond_1ec
    const/4 v1, 0x0

    goto :goto_1e3

    .line 271
    :sswitch_1ee
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 280
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_200
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_219

    const/4 v1, 0x1

    .line 284
    .local v1, _arg0:Z
    :goto_20c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startHtcTethering(Z[Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 282
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:[Ljava/lang/String;
    :cond_219
    const/4 v1, 0x0

    goto :goto_20c

    .line 291
    :sswitch_21b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_230

    const/4 v1, 0x1

    .line 294
    .restart local v1       #_arg0:Z
    :goto_227
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setTetheringDhcpEnabled(Z)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 293
    .end local v1           #_arg0:Z
    :cond_230
    const/4 v1, 0x0

    goto :goto_227

    .line 300
    :sswitch_232
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getTetheringDhcpEnabled()Z

    move-result v10

    .line 302
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v10, :cond_247

    const/4 v0, 0x1

    :goto_241
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 303
    :cond_247
    const/4 v0, 0x0

    goto :goto_241

    .line 308
    .end local v10           #_result:Z
    :sswitch_249
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setTetheringHtcDhcpRange([Ljava/lang/String;)I

    move-result v10

    .line 312
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 318
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_25f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->BlockEmbeddedConn(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 327
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_271
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 334
    :sswitch_27f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v10

    .line 336
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v10, :cond_294

    const/4 v0, 0x1

    :goto_28e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 337
    :cond_294
    const/4 v0, 0x0

    goto :goto_28e

    .line 342
    .end local v10           #_result:Z
    :sswitch_296
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 351
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2a8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 360
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2ba
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 368
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_2cc
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIptDhcp([Ljava/lang/String;)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 377
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_2de
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopIptDhcp()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 384
    :sswitch_2ec
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->SwitchUsbFunc(I)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 393
    .end local v1           #_arg0:I
    :sswitch_2fe
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startIptMode(I)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 402
    .end local v1           #_arg0:I
    :sswitch_310
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders([Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 411
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_322
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v10

    .line 413
    .restart local v10       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 419
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_334
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 430
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_34a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 441
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_360
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v10

    .line 443
    .restart local v10       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 449
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_372
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 460
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 466
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_395
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 475
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3a7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 486
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3bd
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d9

    .line 489
    sget-object v0, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WpsInfo;

    .line 494
    .local v1, _arg0:Landroid/net/wifi/WpsInfo;
    :goto_3d0
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 492
    .end local v1           #_arg0:Landroid/net/wifi/WpsInfo;
    :cond_3d9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WpsInfo;
    goto :goto_3d0

    .line 500
    .end local v1           #_arg0:Landroid/net/wifi/WpsInfo;
    :sswitch_3db
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopWpsRegistrar()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 507
    :sswitch_3e9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40d

    .line 510
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 516
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_3fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 513
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_40d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_3fc

    .line 525
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_40f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 534
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_421
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_445

    .line 537
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 543
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 540
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_445
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_434

    .line 552
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_447
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v10

    .line 554
    .local v10, _result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v10, :cond_460

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_45d
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 560
    :cond_460
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45d

    .line 566
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_465
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v10

    .line 568
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v10, :cond_47e

    .line 570
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 576
    :goto_47b
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 574
    :cond_47e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47b

    .line 580
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_483
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 583
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v10

    .line 584
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v10, :cond_4a0

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 592
    :goto_49d
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 590
    :cond_4a0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49d

    .line 596
    .end local v1           #_arg0:I
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_4a5
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 600
    .restart local v10       #_result:Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v10, :cond_4c2

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    :goto_4bf
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 606
    :cond_4c2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4bf

    .line 612
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v10           #_result:Landroid/net/NetworkStats;
    :sswitch_4c7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 617
    .local v8, _arg1:J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 623
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_arg1:J
    :sswitch_4dd
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 632
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_4ef
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 637
    .restart local v8       #_arg1:J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 643
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_arg1:J
    :sswitch_505
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 652
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_517
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 655
    .local v6, _arg0:J
    invoke-virtual {p0, v6, v7}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 661
    .end local v6           #_arg0:J
    :sswitch_529
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_542

    const/4 v2, 0x1

    .line 666
    .local v2, _arg1:Z
    :goto_539
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 665
    .end local v2           #_arg1:Z
    :cond_542
    const/4 v2, 0x0

    goto :goto_539

    .line 672
    .end local v1           #_arg0:I
    :sswitch_544
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v10

    .line 674
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v10, :cond_559

    const/4 v0, 0x1

    :goto_553
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 675
    :cond_559
    const/4 v0, 0x0

    goto :goto_553

    .line 680
    .end local v10           #_result:Z
    :sswitch_55b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 687
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 693
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_575
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxThrottle(Ljava/lang/String;)I

    move-result v10

    .line 697
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 703
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_58b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxThrottle(Ljava/lang/String;)I

    move-result v10

    .line 707
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 713
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_5a1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 722
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_5b3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 733
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[Ljava/lang/String;
    :sswitch_5c9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->flushDefaultDnsCache()V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 740
    :sswitch_5d7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 743
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->flushInterfaceDnsCache(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 749
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_5e9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_605

    .line 752
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 757
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_5fc
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 755
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_605
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_5fc

    .line 763
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_607
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAssocList()Ljava/lang/String;

    move-result-object v10

    .line 765
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 771
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_619
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getLeasesList()Ljava/lang/String;

    move-result-object v10

    .line 773
    .restart local v10       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 779
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_62b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 782
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setHotspotTXPower(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 788
    .end local v1           #_arg0:I
    :sswitch_63d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_652

    const/4 v1, 0x1

    .line 791
    .local v1, _arg0:Z
    :goto_649
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setWiMaxCoExistence(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 790
    .end local v1           #_arg0:Z
    :cond_652
    const/4 v1, 0x0

    goto :goto_649

    .line 797
    :sswitch_654
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_669

    const/4 v1, 0x1

    .line 800
    .restart local v1       #_arg0:Z
    :goto_660
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setHotspotEnabled(Z)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 799
    .end local v1           #_arg0:Z
    :cond_669
    const/4 v1, 0x0

    goto :goto_660

    .line 806
    :sswitch_66b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getHotspotEnabled()Z

    move-result v10

    .line 808
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v10, :cond_680

    const/4 v0, 0x1

    :goto_67a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 809
    :cond_680
    const/4 v0, 0x0

    goto :goto_67a

    .line 42
    :sswitch_data_682
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_7c
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_b0
        0x9 -> :sswitch_c2
        0xa -> :sswitch_d4
        0xb -> :sswitch_ef
        0xc -> :sswitch_101
        0xd -> :sswitch_113
        0xe -> :sswitch_12a
        0xf -> :sswitch_14c
        0x10 -> :sswitch_16e
        0x11 -> :sswitch_190
        0x12 -> :sswitch_1b2
        0x13 -> :sswitch_1c0
        0x14 -> :sswitch_1d7
        0x15 -> :sswitch_1ee
        0x16 -> :sswitch_200
        0x17 -> :sswitch_21b
        0x18 -> :sswitch_232
        0x19 -> :sswitch_249
        0x1a -> :sswitch_25f
        0x1b -> :sswitch_271
        0x1c -> :sswitch_27f
        0x1d -> :sswitch_296
        0x1e -> :sswitch_2a8
        0x1f -> :sswitch_2ba
        0x20 -> :sswitch_2cc
        0x21 -> :sswitch_2de
        0x22 -> :sswitch_2ec
        0x23 -> :sswitch_2fe
        0x24 -> :sswitch_310
        0x25 -> :sswitch_322
        0x26 -> :sswitch_334
        0x27 -> :sswitch_34a
        0x28 -> :sswitch_360
        0x29 -> :sswitch_372
        0x2a -> :sswitch_395
        0x2b -> :sswitch_3a7
        0x2c -> :sswitch_3bd
        0x2d -> :sswitch_3db
        0x2e -> :sswitch_3e9
        0x2f -> :sswitch_40f
        0x30 -> :sswitch_421
        0x31 -> :sswitch_447
        0x32 -> :sswitch_465
        0x33 -> :sswitch_483
        0x34 -> :sswitch_4a5
        0x35 -> :sswitch_4c7
        0x36 -> :sswitch_4dd
        0x37 -> :sswitch_4ef
        0x38 -> :sswitch_505
        0x39 -> :sswitch_517
        0x3a -> :sswitch_529
        0x3b -> :sswitch_544
        0x3c -> :sswitch_55b
        0x3d -> :sswitch_575
        0x3e -> :sswitch_58b
        0x3f -> :sswitch_5a1
        0x40 -> :sswitch_5b3
        0x41 -> :sswitch_5c9
        0x42 -> :sswitch_5d7
        0x43 -> :sswitch_5e9
        0x44 -> :sswitch_607
        0x45 -> :sswitch_619
        0x46 -> :sswitch_62b
        0x47 -> :sswitch_63d
        0x48 -> :sswitch_654
        0x49 -> :sswitch_66b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
