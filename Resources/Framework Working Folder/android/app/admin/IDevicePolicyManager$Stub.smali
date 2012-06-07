.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addEasAccount:I = 0x55

.field static final TRANSACTION_addVPN:I = 0x58

.field static final TRANSACTION_deleteEasAccount:I = 0x56

.field static final TRANSACTION_deleteVPN:I = 0x59

.field static final TRANSACTION_encryptSDcards:I = 0x5d

.field static final TRANSACTION_getActiveAdmins:I = 0x4a

.field static final TRANSACTION_getActiveSyncDeviceId:I = 0x57

.field static final TRANSACTION_getAllowBTStatus:I = 0x21

.field static final TRANSACTION_getAllowBrowserStatus:I = 0x29

.field static final TRANSACTION_getAllowCameraStatus:I = 0x25

.field static final TRANSACTION_getAllowGPSStatus:I = 0x31

.field static final TRANSACTION_getAllowGoogleLBSStatus:I = 0x35

.field static final TRANSACTION_getAllowInternetSharingStatus:I = 0x23

.field static final TRANSACTION_getAllowLTEStatus:I = 0x37

.field static final TRANSACTION_getAllowStorageCardStatus:I = 0x2b

.field static final TRANSACTION_getAllowTextMessagingStatus:I = 0x27

.field static final TRANSACTION_getAllowVzwLBSStatus:I = 0x33

.field static final TRANSACTION_getAllowWifiStatus:I = 0x1f

.field static final TRANSACTION_getCameraDisabled:I = 0x47

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x39

.field static final TRANSACTION_getEdmVersion:I = 0x5e

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x42

.field static final TRANSACTION_getHTCPasswordExpiration:I = 0x1b

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x3b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x3e

.field static final TRANSACTION_getPasswordAllowSimple:I = 0x1d

.field static final TRANSACTION_getPasswordComplexity:I = 0x17

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistory:I = 0x19

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x4c

.field static final TRANSACTION_getStorageEncryption:I = 0x44

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x45

.field static final TRANSACTION_getVPNByConfigId:I = 0x5a

.field static final TRANSACTION_hasGrantedPolicy:I = 0x4e

.field static final TRANSACTION_htcSetActivePasswordState:I = 0x51

.field static final TRANSACTION_installCertification:I = 0x5c

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x38

.field static final TRANSACTION_isAdminActive:I = 0x49

.field static final TRANSACTION_isDiskEncryptionEnable:I = 0x2f

.field static final TRANSACTION_isSDEncryptionEnable:I = 0x2d

.field static final TRANSACTION_lockNow:I = 0x3f

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4b

.field static final TRANSACTION_removeActiveAdmin:I = 0x4d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x52

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x53

.field static final TRANSACTION_resetPassword:I = 0x3c

.field static final TRANSACTION_responseAsyncResult:I = 0x54

.field static final TRANSACTION_setActiveAdmin:I = 0x48

.field static final TRANSACTION_setActivePasswordState:I = 0x4f

.field static final TRANSACTION_setActivePasswordState2:I = 0x50

.field static final TRANSACTION_setAllowBT:I = 0x20

.field static final TRANSACTION_setAllowBrowser:I = 0x28

.field static final TRANSACTION_setAllowCamera:I = 0x24

.field static final TRANSACTION_setAllowGPS:I = 0x30

.field static final TRANSACTION_setAllowGoogleLBS:I = 0x34

.field static final TRANSACTION_setAllowInternetSharing:I = 0x22

.field static final TRANSACTION_setAllowLTE:I = 0x36

.field static final TRANSACTION_setAllowStorageCard:I = 0x2a

.field static final TRANSACTION_setAllowTextMessaging:I = 0x26

.field static final TRANSACTION_setAllowVzwLBS:I = 0x32

.field static final TRANSACTION_setAllowWifi:I = 0x1e

.field static final TRANSACTION_setCameraDisabled:I = 0x46

.field static final TRANSACTION_setDiskEncryptionEnable:I = 0x2e

.field static final TRANSACTION_setGlobalProxy:I = 0x41

.field static final TRANSACTION_setHTCPasswordExpiration:I = 0x1a

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x3a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x3d

.field static final TRANSACTION_setPasswordAllowSimple:I = 0x1c

.field static final TRANSACTION_setPasswordComplexity:I = 0x16

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistory:I = 0x18

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setSDEncryptionEnable:I = 0x2c

.field static final TRANSACTION_setStorageEncryption:I = 0x43

.field static final TRANSACTION_wipeAllSDcards:I = 0x5b

.field static final TRANSACTION_wipeData:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
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
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 24
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
    sparse-switch p1, :sswitch_data_eba

    .line 1430
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 46
    :sswitch_8
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 54
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 60
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 61
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v3, 0x1

    goto :goto_7

    .line 57
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_36
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .line 67
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_61

    .line 70
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 75
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v16

    .line 76
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v3, 0x1

    goto :goto_7

    .line 73
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_61
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f

    .line 82
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_63
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_88

    .line 85
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 91
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v3, 0x1

    goto :goto_7

    .line 88
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_88
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_7a

    .line 98
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_8a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b4

    .line 101
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 106
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v16

    .line 107
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 104
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_b4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_a1

    .line 113
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_b6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dc

    .line 116
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 122
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 119
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_dc
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_cd

    .line 129
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_de
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_108

    .line 132
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 137
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_f5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v16

    .line 138
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 135
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_108
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_f5

    .line 144
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_10a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_130

    .line 147
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 153
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 150
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_130
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_121

    .line 160
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_132
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15c

    .line 163
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 168
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_149
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v16

    .line 169
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 166
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_15c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_149

    .line 175
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_15e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_184

    .line 178
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 184
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 185
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 181
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_184
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_175

    .line 191
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_186
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b0

    .line 194
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 199
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_19d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v16

    .line 200
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 197
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_1b0
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_19d

    .line 206
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1b2
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d8

    .line 209
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 215
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 216
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 212
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_1d8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c9

    .line 222
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_1da
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_204

    .line 225
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 230
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_1f1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v16

    .line 231
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 228
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_204
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f1

    .line 237
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_206
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22c

    .line 240
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 246
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_21d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 247
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 243
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_22c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_21d

    .line 253
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_22e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_258

    .line 256
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 261
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_245
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v16

    .line 262
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 259
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_258
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_245

    .line 268
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_25a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_280

    .line 271
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 277
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 278
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 274
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_280
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_271

    .line 284
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_282
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2ac

    .line 287
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 292
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_299
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v16

    .line 293
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 290
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_2ac
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_299

    .line 299
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2ae
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d4

    .line 302
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 308
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 305
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_2d4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c5

    .line 315
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_300

    .line 318
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 323
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_2ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v16

    .line 324
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 321
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_300
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_2ed

    .line 330
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_302
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_328

    .line 333
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 339
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 340
    .local v14, _arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 336
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v14           #_arg1:J
    :cond_328
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_319

    .line 346
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_32a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_354

    .line 349
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 354
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_341
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v16

    .line 355
    .local v16, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 357
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 352
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_354
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_341

    .line 361
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_356
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_380

    .line 364
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 369
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_36d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v16

    .line 370
    .restart local v16       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 367
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_380
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_36d

    .line 376
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_382
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a8

    .line 379
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 385
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 386
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordComplexity(Landroid/content/ComponentName;I)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 382
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_3a8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_399

    .line 392
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3aa
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3d4

    .line 395
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 400
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Landroid/content/ComponentName;)I

    move-result v16

    .line 401
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 398
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_3d4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c1

    .line 407
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3d6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3fc

    .line 410
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 416
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_3ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 417
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 413
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_3fc
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_3ed

    .line 423
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_3fe
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_428

    .line 426
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 431
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_415
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v16

    .line 432
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 429
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_428
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_415

    .line 438
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_42a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_450

    .line 441
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 447
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 448
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setHTCPasswordExpiration(Landroid/content/ComponentName;I)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 444
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_450
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_441

    .line 454
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_452
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47c

    .line 457
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 462
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_469
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHTCPasswordExpiration(Landroid/content/ComponentName;)I

    move-result v16

    .line 463
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 460
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_47c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_469

    .line 469
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_47e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a7

    .line 472
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 478
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a9

    const/4 v5, 0x1

    .line 479
    .local v5, _arg1:Z
    :goto_49c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordAllowSimple(Landroid/content/ComponentName;Z)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 475
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_4a7
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_495

    .line 478
    :cond_4a9
    const/4 v5, 0x0

    goto :goto_49c

    .line 485
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_4ab
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d6

    .line 488
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 493
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordAllowSimple(Landroid/content/ComponentName;)Z

    move-result v16

    .line 494
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v16, :cond_4d8

    const/4 v3, 0x1

    :goto_4ce
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 491
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_4d6
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4c2

    .line 495
    .restart local v16       #_result:Z
    :cond_4d8
    const/4 v3, 0x0

    goto :goto_4ce

    .line 500
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_4da
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_500

    .line 503
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 509
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 510
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;I)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 506
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_500
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f1

    .line 516
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_502
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52c

    .line 519
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 524
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_519
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 525
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 522
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_52c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_519

    .line 531
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_52e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_554

    .line 534
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 540
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 541
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBT(Landroid/content/ComponentName;I)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 537
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_554
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_545

    .line 547
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_556
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_580

    .line 550
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 555
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_56d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 556
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 553
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_580
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_56d

    .line 562
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_582
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a8

    .line 565
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 571
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 572
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;I)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 568
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_5a8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_599

    .line 578
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_5aa
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d4

    .line 581
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 586
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_5c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 587
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 584
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_5d4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_5c1

    .line 593
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_5d6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5fc

    .line 596
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 602
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_5ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 603
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;I)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 599
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_5fc
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_5ed

    .line 609
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_5fe
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_628

    .line 612
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 617
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_615
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCameraStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 618
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 615
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_628
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_615

    .line 624
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_62a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_650

    .line 627
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 633
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 634
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;I)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 630
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_650
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_641

    .line 640
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_652
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_67c

    .line 643
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 648
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_669
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 649
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 646
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_67c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_669

    .line 655
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_67e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6a4

    .line 658
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 664
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 665
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;I)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 661
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_6a4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_695

    .line 671
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_6a6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6d0

    .line 674
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 679
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_6bd
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 680
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 677
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_6d0
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_6bd

    .line 686
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_6d2
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6f8

    .line 689
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 695
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_6e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 696
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;I)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 692
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_6f8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_6e9

    .line 702
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_6fa
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_724

    .line 705
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 710
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_711
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 711
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 708
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_724
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_711

    .line 717
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_726
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_74f

    .line 720
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 726
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_73d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_751

    const/4 v5, 0x1

    .line 727
    .local v5, _arg1:Z
    :goto_744
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSDEncryptionEnable(Landroid/content/ComponentName;Z)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 723
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_74f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_73d

    .line 726
    :cond_751
    const/4 v5, 0x0

    goto :goto_744

    .line 733
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_753
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_77e

    .line 736
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 741
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_76a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSDEncryptionEnable(Landroid/content/ComponentName;)Z

    move-result v16

    .line 742
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    if-eqz v16, :cond_780

    const/4 v3, 0x1

    :goto_776
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 739
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_77e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_76a

    .line 743
    .restart local v16       #_result:Z
    :cond_780
    const/4 v3, 0x0

    goto :goto_776

    .line 748
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_782
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7ab

    .line 751
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 757
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7ad

    const/4 v5, 0x1

    .line 758
    .restart local v5       #_arg1:Z
    :goto_7a0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDiskEncryptionEnable(Landroid/content/ComponentName;Z)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 754
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_7ab
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_799

    .line 757
    :cond_7ad
    const/4 v5, 0x0

    goto :goto_7a0

    .line 764
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_7af
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7da

    .line 767
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 772
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_7c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDiskEncryptionEnable(Landroid/content/ComponentName;)Z

    move-result v16

    .line 773
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    if-eqz v16, :cond_7dc

    const/4 v3, 0x1

    :goto_7d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 770
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_7da
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_7c6

    .line 774
    .restart local v16       #_result:Z
    :cond_7dc
    const/4 v3, 0x0

    goto :goto_7d2

    .line 779
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_7de
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_804

    .line 782
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 788
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_7f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 789
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowGPS(Landroid/content/ComponentName;I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 785
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_804
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_7f5

    .line 795
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_806
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_830

    .line 798
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 803
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_81d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 804
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 801
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_830
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_81d

    .line 810
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_832
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_858

    .line 813
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 819
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 820
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowVzwLBS(Landroid/content/ComponentName;I)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 816
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_858
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_849

    .line 826
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_85a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_884

    .line 829
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 834
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_871
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 835
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 832
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_884
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_871

    .line 841
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_886
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8ac

    .line 844
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 850
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_89d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 851
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowGoogleLBS(Landroid/content/ComponentName;I)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 847
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_8ac
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_89d

    .line 857
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_8ae
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8d8

    .line 860
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 865
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_8c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 866
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 863
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_8d8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_8c5

    .line 872
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_8da
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_900

    .line 875
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 881
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_8f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 882
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowLTE(Landroid/content/ComponentName;I)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 878
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_900
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_8f1

    .line 888
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_902
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_92c

    .line 891
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 896
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_919
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v16

    .line 897
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 894
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_92c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_919

    .line 903
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_92e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v16

    .line 905
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v16, :cond_947

    const/4 v3, 0x1

    :goto_93f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 906
    :cond_947
    const/4 v3, 0x0

    goto :goto_93f

    .line 911
    .end local v16           #_result:Z
    :sswitch_949
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v16

    .line 913
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 919
    .end local v16           #_result:I
    :sswitch_961
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_987

    .line 922
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 928
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 929
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 925
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    :cond_987
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_978

    .line 935
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_989
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9b3

    .line 938
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 943
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_9a0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v16

    .line 944
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 941
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:I
    :cond_9b3
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_9a0

    .line 950
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_9b5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 955
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v16

    .line 956
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    if-eqz v16, :cond_9d8

    const/4 v3, 0x1

    :goto_9d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 957
    :cond_9d8
    const/4 v3, 0x0

    goto :goto_9d0

    .line 962
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_9da
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a00

    .line 965
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 971
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_9f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 972
    .restart local v14       #_arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 968
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v14           #_arg1:J
    :cond_a00
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_9f1

    .line 978
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_a02
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a2c

    .line 981
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 986
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_a19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v16

    .line 987
    .local v16, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 989
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 984
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:J
    :cond_a2c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_a19

    .line 993
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_a2e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1000
    :sswitch_a3e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1003
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1009
    .end local v4           #_arg0:I
    :sswitch_a54
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a8f

    .line 1012
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1018
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_a6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1020
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1021
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 1022
    .local v16, _result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    if-eqz v16, :cond_a91

    .line 1024
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1030
    :goto_a8c
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1015
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Landroid/content/ComponentName;
    :cond_a8f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_a6b

    .line 1028
    .restart local v5       #_arg1:Ljava/lang/String;
    .restart local v6       #_arg2:Ljava/lang/String;
    .restart local v16       #_result:Landroid/content/ComponentName;
    :cond_a91
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a8c

    .line 1034
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Landroid/content/ComponentName;
    :sswitch_a98
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v16

    .line 1036
    .restart local v16       #_result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    if-eqz v16, :cond_ab9

    .line 1038
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1044
    :goto_ab6
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1042
    :cond_ab9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ab6

    .line 1048
    .end local v16           #_result:Landroid/content/ComponentName;
    :sswitch_ac0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_af1

    .line 1051
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1057
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_ad7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_af3

    const/4 v5, 0x1

    .line 1058
    .local v5, _arg1:Z
    :goto_ade
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v16

    .line 1059
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1054
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    .end local v16           #_result:I
    :cond_af1
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_ad7

    .line 1057
    :cond_af3
    const/4 v5, 0x0

    goto :goto_ade

    .line 1065
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_af5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b20

    .line 1068
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1073
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_b0c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v16

    .line 1074
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v16, :cond_b22

    const/4 v3, 0x1

    :goto_b18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1071
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_b20
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_b0c

    .line 1075
    .restart local v16       #_result:Z
    :cond_b22
    const/4 v3, 0x0

    goto :goto_b18

    .line 1080
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_b24
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus()I

    move-result v16

    .line 1082
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1088
    .end local v16           #_result:I
    :sswitch_b3c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b65

    .line 1091
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1097
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_b53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b67

    const/4 v5, 0x1

    .line 1098
    .restart local v5       #_arg1:Z
    :goto_b5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1094
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_b65
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_b53

    .line 1097
    :cond_b67
    const/4 v5, 0x0

    goto :goto_b5a

    .line 1104
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_b69
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b94

    .line 1107
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1112
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_b80
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v16

    .line 1113
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    if-eqz v16, :cond_b96

    const/4 v3, 0x1

    :goto_b8c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1110
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_b94
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_b80

    .line 1114
    .restart local v16       #_result:Z
    :cond_b96
    const/4 v3, 0x0

    goto :goto_b8c

    .line 1119
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_b98
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bc1

    .line 1122
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1128
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_baf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bc3

    const/4 v5, 0x1

    .line 1129
    .restart local v5       #_arg1:Z
    :goto_bb6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1125
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Z
    :cond_bc1
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_baf

    .line 1128
    :cond_bc3
    const/4 v5, 0x0

    goto :goto_bb6

    .line 1135
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_bc5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bf0

    .line 1138
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1143
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_bdc
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v16

    .line 1144
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    if-eqz v16, :cond_bf2

    const/4 v3, 0x1

    :goto_be8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1141
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :cond_bf0
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_bdc

    .line 1145
    .restart local v16       #_result:Z
    :cond_bf2
    const/4 v3, 0x0

    goto :goto_be8

    .line 1150
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v16           #_result:Z
    :sswitch_bf4
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v18

    .line 1152
    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1154
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1158
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_c0c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1161
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v16

    .line 1162
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    if-eqz v16, :cond_c2b

    const/4 v3, 0x1

    :goto_c23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1163
    :cond_c2b
    const/4 v3, 0x0

    goto :goto_c23

    .line 1168
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_c2d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c5f

    .line 1171
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1177
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_c44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c61

    .line 1178
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1183
    .local v5, _arg1:Landroid/os/RemoteCallback;
    :goto_c54
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1174
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Landroid/os/RemoteCallback;
    :cond_c5f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_c44

    .line 1181
    :cond_c61
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_c54

    .line 1189
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_c63
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c85

    .line 1192
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1197
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_c7a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1195
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :cond_c85
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_c7a

    .line 1203
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_c87
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cb6

    .line 1206
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1212
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_c9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1213
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1214
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    if-eqz v16, :cond_cb8

    const/4 v3, 0x1

    :goto_cae
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1209
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :cond_cb6
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_c9e

    .line 1215
    .restart local v5       #_arg1:I
    .restart local v16       #_result:Z
    :cond_cb8
    const/4 v3, 0x0

    goto :goto_cae

    .line 1220
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_cba
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1224
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1226
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1228
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1230
    .local v7, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1232
    .local v8, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1234
    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1236
    .local v10, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg7:I
    move-object/from16 v3, p0

    .line 1237
    invoke-virtual/range {v3 .. v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIII)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1243
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    :sswitch_cec
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1247
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1249
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1251
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1253
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1255
    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1257
    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1259
    .restart local v10       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1261
    .restart local v11       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg8:I
    move-object/from16 v3, p0

    .line 1262
    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState2(IIIIIIIII)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1268
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    .end local v12           #_arg8:I
    :sswitch_d22
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1272
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1274
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1276
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1278
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1280
    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1282
    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1284
    .restart local v10       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1286
    .restart local v11       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1288
    .restart local v12       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d5f

    const/4 v13, 0x1

    .local v13, _arg9:Z
    :goto_d54
    move-object/from16 v3, p0

    .line 1289
    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->htcSetActivePasswordState(IIIIIIIIIZ)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1288
    .end local v13           #_arg9:Z
    :cond_d5f
    const/4 v13, 0x0

    goto :goto_d54

    .line 1295
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v11           #_arg7:I
    .end local v12           #_arg8:I
    :sswitch_d61
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1302
    :sswitch_d71
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1309
    :sswitch_d81
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1313
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1315
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dab

    .line 1316
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1321
    .local v6, _arg2:Landroid/content/Intent;
    :goto_da0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->responseAsyncResult(IILandroid/content/Intent;)V

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1319
    .end local v6           #_arg2:Landroid/content/Intent;
    :cond_dab
    const/4 v6, 0x0

    .restart local v6       #_arg2:Landroid/content/Intent;
    goto :goto_da0

    .line 1327
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Landroid/content/Intent;
    :sswitch_dad
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dcf

    .line 1330
    sget-object v3, Lcom/htc/app/admin/EasAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/EasAccountInfo;

    .line 1335
    .local v4, _arg0:Lcom/htc/app/admin/EasAccountInfo;
    :goto_dc4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEasAccount(Lcom/htc/app/admin/EasAccountInfo;)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1333
    .end local v4           #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    :cond_dcf
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    goto :goto_dc4

    .line 1341
    .end local v4           #_arg0:Lcom/htc/app/admin/EasAccountInfo;
    :sswitch_dd1
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteEasAccount(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1350
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_de7
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveSyncDeviceId()V

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1357
    :sswitch_df7
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e19

    .line 1360
    sget-object v3, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/VpnConfigInfo;

    .line 1365
    .local v4, _arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :goto_e0e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->addVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1363
    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :cond_e19
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    goto :goto_e0e

    .line 1371
    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :sswitch_e1b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e3d

    .line 1374
    sget-object v3, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/VpnConfigInfo;

    .line 1379
    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :goto_e32
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->deleteVPN(Lcom/htc/app/admin/VpnConfigInfo;)V

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1377
    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :cond_e3d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    goto :goto_e32

    .line 1385
    .end local v4           #_arg0:Lcom/htc/app/admin/VpnConfigInfo;
    :sswitch_e3f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1388
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getVPNByConfigId(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1394
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_e55
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeAllSDcards()V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1401
    :sswitch_e65
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e87

    .line 1404
    sget-object v3, Lcom/htc/app/admin/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/admin/CertInfo;

    .line 1409
    .local v4, _arg0:Lcom/htc/app/admin/CertInfo;
    :goto_e7c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertification(Lcom/htc/app/admin/CertInfo;)V

    .line 1410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1407
    .end local v4           #_arg0:Lcom/htc/app/admin/CertInfo;
    :cond_e87
    const/4 v4, 0x0

    .restart local v4       #_arg0:Lcom/htc/app/admin/CertInfo;
    goto :goto_e7c

    .line 1415
    .end local v4           #_arg0:Lcom/htc/app/admin/CertInfo;
    :sswitch_e89
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->encryptSDcards()I

    move-result v16

    .line 1417
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1423
    .end local v16           #_result:I
    :sswitch_ea1
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEdmVersion()Ljava/lang/String;

    move-result-object v16

    .line 1425
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1427
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 42
    nop

    :sswitch_data_eba
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_38
        0x3 -> :sswitch_63
        0x4 -> :sswitch_8a
        0x5 -> :sswitch_b6
        0x6 -> :sswitch_de
        0x7 -> :sswitch_10a
        0x8 -> :sswitch_132
        0x9 -> :sswitch_15e
        0xa -> :sswitch_186
        0xb -> :sswitch_1b2
        0xc -> :sswitch_1da
        0xd -> :sswitch_206
        0xe -> :sswitch_22e
        0xf -> :sswitch_25a
        0x10 -> :sswitch_282
        0x11 -> :sswitch_2ae
        0x12 -> :sswitch_2d6
        0x13 -> :sswitch_302
        0x14 -> :sswitch_32a
        0x15 -> :sswitch_356
        0x16 -> :sswitch_382
        0x17 -> :sswitch_3aa
        0x18 -> :sswitch_3d6
        0x19 -> :sswitch_3fe
        0x1a -> :sswitch_42a
        0x1b -> :sswitch_452
        0x1c -> :sswitch_47e
        0x1d -> :sswitch_4ab
        0x1e -> :sswitch_4da
        0x1f -> :sswitch_502
        0x20 -> :sswitch_52e
        0x21 -> :sswitch_556
        0x22 -> :sswitch_582
        0x23 -> :sswitch_5aa
        0x24 -> :sswitch_5d6
        0x25 -> :sswitch_5fe
        0x26 -> :sswitch_62a
        0x27 -> :sswitch_652
        0x28 -> :sswitch_67e
        0x29 -> :sswitch_6a6
        0x2a -> :sswitch_6d2
        0x2b -> :sswitch_6fa
        0x2c -> :sswitch_726
        0x2d -> :sswitch_753
        0x2e -> :sswitch_782
        0x2f -> :sswitch_7af
        0x30 -> :sswitch_7de
        0x31 -> :sswitch_806
        0x32 -> :sswitch_832
        0x33 -> :sswitch_85a
        0x34 -> :sswitch_886
        0x35 -> :sswitch_8ae
        0x36 -> :sswitch_8da
        0x37 -> :sswitch_902
        0x38 -> :sswitch_92e
        0x39 -> :sswitch_949
        0x3a -> :sswitch_961
        0x3b -> :sswitch_989
        0x3c -> :sswitch_9b5
        0x3d -> :sswitch_9da
        0x3e -> :sswitch_a02
        0x3f -> :sswitch_a2e
        0x40 -> :sswitch_a3e
        0x41 -> :sswitch_a54
        0x42 -> :sswitch_a98
        0x43 -> :sswitch_ac0
        0x44 -> :sswitch_af5
        0x45 -> :sswitch_b24
        0x46 -> :sswitch_b3c
        0x47 -> :sswitch_b69
        0x48 -> :sswitch_b98
        0x49 -> :sswitch_bc5
        0x4a -> :sswitch_bf4
        0x4b -> :sswitch_c0c
        0x4c -> :sswitch_c2d
        0x4d -> :sswitch_c63
        0x4e -> :sswitch_c87
        0x4f -> :sswitch_cba
        0x50 -> :sswitch_cec
        0x51 -> :sswitch_d22
        0x52 -> :sswitch_d61
        0x53 -> :sswitch_d71
        0x54 -> :sswitch_d81
        0x55 -> :sswitch_dad
        0x56 -> :sswitch_dd1
        0x57 -> :sswitch_de7
        0x58 -> :sswitch_df7
        0x59 -> :sswitch_e1b
        0x5a -> :sswitch_e3f
        0x5b -> :sswitch_e55
        0x5c -> :sswitch_e65
        0x5d -> :sswitch_e89
        0x5e -> :sswitch_ea1
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
