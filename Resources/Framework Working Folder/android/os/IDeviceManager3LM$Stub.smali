.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_blockAdb:I = 0x38

.field static final TRANSACTION_checkAppInstallPolicies:I = 0x17

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x19

.field static final TRANSACTION_checkPackagePermission:I = 0xe

.field static final TRANSACTION_checkSignature:I = 0x3c

.field static final TRANSACTION_checkUidPermission:I = 0xd

.field static final TRANSACTION_checkVpnDns:I = 0xa

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApplicationUserData:I = 0x37

.field static final TRANSACTION_connectToVpn:I = 0x8

.field static final TRANSACTION_deletePackage:I = 0x1b

.field static final TRANSACTION_disablePackage:I = 0x10

.field static final TRANSACTION_disconnectFromVpn:I = 0xc

.field static final TRANSACTION_enablePackage:I = 0x11

.field static final TRANSACTION_encryptPackage:I = 0x31

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getNfcState:I = 0x33

.field static final TRANSACTION_getPackageGids:I = 0x32

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_getWifiState:I = 0x35

.field static final TRANSACTION_installPackage:I = 0x1a

.field static final TRANSACTION_isAdbBlocked:I = 0x39

.field static final TRANSACTION_isDataEncrypted:I = 0x2c

.field static final TRANSACTION_isDataEncryptionRequired:I = 0x2d

.field static final TRANSACTION_isPackageDisabled:I = 0x13

.field static final TRANSACTION_isPackageEncrypted:I = 0x2f

.field static final TRANSACTION_isPackageEncryptionRequired:I = 0x30

.field static final TRANSACTION_isSdEncrypted:I = 0x29

.field static final TRANSACTION_isSdEncryptionRequired:I = 0x2a

.field static final TRANSACTION_isSsidAllowed:I = 0x3b

.field static final TRANSACTION_keyStoreChangePassword:I = 0x26

.field static final TRANSACTION_keyStoreContains:I = 0x24

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x1f

.field static final TRANSACTION_keyStoreGetKey:I = 0x1e

.field static final TRANSACTION_keyStoreGetLastError:I = 0x23

.field static final TRANSACTION_keyStoreLock:I = 0x21

.field static final TRANSACTION_keyStorePutKey:I = 0x1d

.field static final TRANSACTION_keyStoreReset:I = 0x25

.field static final TRANSACTION_keyStoreSetPassword:I = 0x20

.field static final TRANSACTION_keyStoreTest:I = 0x1c

.field static final TRANSACTION_keyStoreUnlock:I = 0x22

.field static final TRANSACTION_notification:I = 0x3d

.field static final TRANSACTION_putSettingsSecureInt:I = 0x28

.field static final TRANSACTION_putSettingsSecureString:I = 0x27

.field static final TRANSACTION_restoreOriginalDns:I = 0xb

.field static final TRANSACTION_setAllowedPackages:I = 0x12

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0x15

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0x14

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x16

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x18

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setDataEncryptionRequired:I = 0x2e

.field static final TRANSACTION_setNfcState:I = 0x34

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setPackagePermission:I = 0xf

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x2b

.field static final TRANSACTION_setSsidFilter:I = 0x3a

.field static final TRANSACTION_setWifiState:I = 0x36

.field static final TRANSACTION_setupVpnDns:I = 0x9

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
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
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_58c

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 43
    :sswitch_a
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v6

    .line 57
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v6           #_result:I
    :sswitch_2c
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3f

    move v0, v8

    .line 66
    .local v0, _arg0:Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_3f
    move v0, v9

    .line 65
    goto :goto_38

    .line 72
    :sswitch_41
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    :sswitch_4d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_60

    move v0, v8

    .line 82
    .restart local v0       #_arg0:Z
    :goto_59
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_60
    move v0, v9

    .line 81
    goto :goto_59

    .line 88
    :sswitch_62
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v6

    .line 90
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v6, :cond_71

    move v9, v8

    :cond_71
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v6           #_result:Z
    :sswitch_75
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_85
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 111
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v6, :cond_9c

    move v9, v8

    :cond_9c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_a1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setupVpnDns(Ljava/lang/String;)Z

    move-result v6

    .line 121
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v6, :cond_b4

    move v9, v8

    :cond_b4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_b9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkVpnDns(Ljava/lang/String;)Z

    move-result v6

    .line 131
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v6, :cond_cc

    move v9, v8

    :cond_cc
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 137
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_d1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->restoreOriginalDns(Ljava/lang/String;)Z

    move-result v6

    .line 141
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v6, :cond_e4

    move v9, v8

    :cond_e4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_e9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_104

    move v0, v8

    .line 150
    .local v0, _arg0:Z
    :goto_f5
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disconnectFromVpn(Z)Z

    move-result v6

    .line 151
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v6, :cond_ff

    move v9, v8

    :cond_ff
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v6           #_result:Z
    :cond_104
    move v0, v9

    .line 149
    goto :goto_f5

    .line 157
    :sswitch_106
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkUidPermission(Ljava/lang/String;I)Z

    move-result v6

    .line 163
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v6, :cond_11d

    move v9, v8

    :cond_11d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_122
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 175
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v6, :cond_139

    move v9, v8

    :cond_139
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_13e
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_161

    move v4, v8

    .line 188
    .local v4, _arg2:Z
    :goto_152
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 189
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_15c

    move v9, v8

    :cond_15c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4           #_arg2:Z
    .end local v6           #_result:Z
    :cond_161
    move v4, v9

    .line 187
    goto :goto_152

    .line 195
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_163
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 204
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_174
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 213
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_185
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 216
    .local v7, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 217
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v6

    .line 218
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v6, :cond_1a0

    move v9, v8

    :cond_1a0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 224
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_1a5
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v6

    .line 228
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v6, :cond_1b8

    move v9, v8

    :cond_1b8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 234
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_1bd
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 237
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 238
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v6

    .line 239
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v6, :cond_1d8

    move v9, v8

    :cond_1d8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 245
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_1dd
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 248
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 249
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v6

    .line 250
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v6, :cond_1f8

    move v9, v8

    :cond_1f8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_1fd
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 259
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 260
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v6

    .line 261
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v6, :cond_218

    move v9, v8

    :cond_218
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 267
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_21d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 273
    .local v3, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 274
    .local v5, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v3, v5}, Landroid/os/IDeviceManager3LM$Stub;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    .line 275
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v6, :cond_238

    move v9, v8

    :cond_238
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #_result:Z
    :sswitch_23d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 284
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 285
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v6

    .line 286
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v6, :cond_258

    move v9, v8

    :cond_258
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 292
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_25d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v6

    .line 296
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v6, :cond_270

    move v9, v8

    :cond_270
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 302
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_275
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 311
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_286
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_29e

    move v2, v8

    .line 316
    .local v2, _arg1:Z
    :goto_296
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    :cond_29e
    move v2, v9

    .line 315
    goto :goto_296

    .line 322
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2a0
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreTest()I

    move-result v6

    .line 324
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 330
    .end local v6           #_result:I
    :sswitch_2b1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 336
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v6, :cond_2c8

    move v9, v8

    :cond_2c8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2cd
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_2e2
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v6

    .line 356
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v6, :cond_2f5

    move v9, v8

    :cond_2f5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 362
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2fa
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 371
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_30b
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreLock()Z

    move-result v6

    .line 373
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v6, :cond_31a

    move v9, v8

    :cond_31a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 379
    .end local v6           #_result:Z
    :sswitch_31f
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v6

    .line 383
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v6, :cond_332

    move v9, v8

    :cond_332
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 389
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_337
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetLastError()I

    move-result v6

    .line 391
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 397
    .end local v6           #_result:I
    :sswitch_348
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v6

    .line 401
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v6, :cond_35b

    move v9, v8

    :cond_35b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 407
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_360
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v6

    .line 409
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v6, :cond_36f

    move v9, v8

    :cond_36f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 415
    .end local v6           #_result:Z
    :sswitch_374
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 421
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v6, :cond_38b

    move v9, v8

    :cond_38b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 427
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_390
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 433
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v6, :cond_3a7

    move v9, v8

    :cond_3a7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 439
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_3ac
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v6

    .line 445
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v6, :cond_3c3

    move v9, v8

    :cond_3c3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 451
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_3c8
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v6

    .line 453
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v6, :cond_3d7

    move v9, v8

    :cond_3d7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 459
    .end local v6           #_result:Z
    :sswitch_3dc
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncryptionRequired()Z

    move-result v6

    .line 461
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v6, :cond_3eb

    move v9, v8

    :cond_3eb
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 467
    .end local v6           #_result:Z
    :sswitch_3f0
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_404

    move v0, v8

    .line 470
    .local v0, _arg0:Z
    :goto_3fc
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_404
    move v0, v9

    .line 469
    goto :goto_3fc

    .line 476
    :sswitch_406
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isDataEncrypted()Z

    move-result v6

    .line 478
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v6, :cond_415

    move v9, v8

    :cond_415
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 484
    .end local v6           #_result:Z
    :sswitch_41a
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isDataEncryptionRequired()Z

    move-result v6

    .line 486
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v6, :cond_429

    move v9, v8

    :cond_429
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 492
    .end local v6           #_result:Z
    :sswitch_42e
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_442

    move v0, v8

    .line 495
    .restart local v0       #_arg0:Z
    :goto_43a
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setDataEncryptionRequired(Z)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_442
    move v0, v9

    .line 494
    goto :goto_43a

    .line 501
    :sswitch_444
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageEncrypted(Ljava/lang/String;)Z

    move-result v6

    .line 505
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v6, :cond_457

    move v9, v8

    :cond_457
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 511
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_45c
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageEncryptionRequired(Ljava/lang/String;)Z

    move-result v6

    .line 515
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v6, :cond_46f

    move v9, v8

    :cond_46f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 521
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_474
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_493

    move v2, v8

    .line 527
    .local v2, _arg1:Z
    :goto_484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_495

    move v4, v8

    .line 528
    .restart local v4       #_arg2:Z
    :goto_48b
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IDeviceManager3LM$Stub;->encryptPackage(Ljava/lang/String;ZZ)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2           #_arg1:Z
    .end local v4           #_arg2:Z
    :cond_493
    move v2, v9

    .line 525
    goto :goto_484

    .restart local v2       #_arg1:Z
    :cond_495
    move v4, v9

    .line 527
    goto :goto_48b

    .line 534
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    :sswitch_497
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v6

    .line 538
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 544
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[I
    :sswitch_4ac
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNfcState()I

    move-result v6

    .line 546
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 552
    .end local v6           #_result:I
    :sswitch_4bd
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 561
    .end local v0           #_arg0:I
    :sswitch_4ce
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getWifiState()I

    move-result v6

    .line 563
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 569
    .end local v6           #_result:I
    :sswitch_4df
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 572
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 578
    .end local v0           #_arg0:I
    :sswitch_4f0
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v6

    .line 582
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    if-eqz v6, :cond_503

    move v9, v8

    :cond_503
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 588
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_508
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_51c

    move v0, v8

    .line 591
    .local v0, _arg0:Z
    :goto_514
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_51c
    move v0, v9

    .line 590
    goto :goto_514

    .line 597
    :sswitch_51e
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdbBlocked()Z

    move-result v6

    .line 599
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v6, :cond_52d

    move v9, v8

    :cond_52d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 605
    .end local v6           #_result:Z
    :sswitch_532
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 608
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 614
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_543
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v6

    .line 618
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v6, :cond_556

    move v9, v8

    :cond_556
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 624
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_55b
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v6

    .line 628
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v6, :cond_56e

    move v9, v8

    :cond_56e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 634
    .end local v0           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_573
    const-string v9, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    .local v4, _arg2:I
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_58c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_41
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_62
        0x7 -> :sswitch_75
        0x8 -> :sswitch_85
        0x9 -> :sswitch_a1
        0xa -> :sswitch_b9
        0xb -> :sswitch_d1
        0xc -> :sswitch_e9
        0xd -> :sswitch_106
        0xe -> :sswitch_122
        0xf -> :sswitch_13e
        0x10 -> :sswitch_163
        0x11 -> :sswitch_174
        0x12 -> :sswitch_185
        0x13 -> :sswitch_1a5
        0x14 -> :sswitch_1bd
        0x15 -> :sswitch_1dd
        0x16 -> :sswitch_1fd
        0x17 -> :sswitch_21d
        0x18 -> :sswitch_23d
        0x19 -> :sswitch_25d
        0x1a -> :sswitch_275
        0x1b -> :sswitch_286
        0x1c -> :sswitch_2a0
        0x1d -> :sswitch_2b1
        0x1e -> :sswitch_2cd
        0x1f -> :sswitch_2e2
        0x20 -> :sswitch_2fa
        0x21 -> :sswitch_30b
        0x22 -> :sswitch_31f
        0x23 -> :sswitch_337
        0x24 -> :sswitch_348
        0x25 -> :sswitch_360
        0x26 -> :sswitch_374
        0x27 -> :sswitch_390
        0x28 -> :sswitch_3ac
        0x29 -> :sswitch_3c8
        0x2a -> :sswitch_3dc
        0x2b -> :sswitch_3f0
        0x2c -> :sswitch_406
        0x2d -> :sswitch_41a
        0x2e -> :sswitch_42e
        0x2f -> :sswitch_444
        0x30 -> :sswitch_45c
        0x31 -> :sswitch_474
        0x32 -> :sswitch_497
        0x33 -> :sswitch_4ac
        0x34 -> :sswitch_4bd
        0x35 -> :sswitch_4ce
        0x36 -> :sswitch_4df
        0x37 -> :sswitch_4f0
        0x38 -> :sswitch_508
        0x39 -> :sswitch_51e
        0x3a -> :sswitch_532
        0x3b -> :sswitch_543
        0x3c -> :sswitch_55b
        0x3d -> :sswitch_573
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
