.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x31

.field static final TRANSACTION_addPermission:I = 0x11

.field static final TRANSACTION_addPermissionAsync:I = 0x4e

.field static final TRANSACTION_addPreferredActivity:I = 0x34

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkAppDirectedSmsExisted:I = 0x29

.field static final TRANSACTION_checkPermission:I = 0xf

.field static final TRANSACTION_checkSignatures:I = 0x14

.field static final TRANSACTION_checkUidPermission:I = 0x10

.field static final TRANSACTION_checkUidSignatures:I = 0x15

.field static final TRANSACTION_clearApplicationUserData:I = 0x40

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x36

.field static final TRANSACTION_createUser:I = 0x51

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x3f

.field static final TRANSACTION_deletePackage:I = 0x2f

.field static final TRANSACTION_enterSafeMode:I = 0x45

.field static final TRANSACTION_finishPackageInstall:I = 0x2d

.field static final TRANSACTION_freeStorage:I = 0x3e

.field static final TRANSACTION_freeStorageAndNotify:I = 0x3d

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x3b

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getCachedAppName:I = 0x2b

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x39

.field static final TRANSACTION_getDirectedSmsReceivers:I = 0x28

.field static final TRANSACTION_getInstallLocation:I = 0x50

.field static final TRANSACTION_getInstalledApplications:I = 0x21

.field static final TRANSACTION_getInstalledHTCPackages:I = 0x58

.field static final TRANSACTION_getInstalledPackages:I = 0x1f

.field static final TRANSACTION_getInstalledSkinPackages:I = 0x20

.field static final TRANSACTION_getInstallerPackageName:I = 0x30

.field static final TRANSACTION_getInstrumentationInfo:I = 0x26

.field static final TRANSACTION_getNameForUid:I = 0x17

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x41

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x16

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x22

.field static final TRANSACTION_getPreferredActivities:I = 0x37

.field static final TRANSACTION_getPreferredPackages:I = 0x33

.field static final TRANSACTION_getProviderInfo:I = 0xe

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x43

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x42

.field static final TRANSACTION_getUidForSharedUser:I = 0x18

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x55

.field static final TRANSACTION_hasSystemFeature:I = 0x44

.field static final TRANSACTION_hasSystemUidErrors:I = 0x48

.field static final TRANSACTION_installPackage:I = 0x2c

.field static final TRANSACTION_installPackageWithVerification:I = 0x53

.field static final TRANSACTION_isFirstBoot:I = 0x56

.field static final TRANSACTION_isProtectedBroadcast:I = 0x13

.field static final TRANSACTION_isSafeMode:I = 0x46

.field static final TRANSACTION_movePackage:I = 0x4d

.field static final TRANSACTION_nextPackageToClean:I = 0x4c

.field static final TRANSACTION_performBootDexOpt:I = 0x49

.field static final TRANSACTION_performDexOpt:I = 0x4a

.field static final TRANSACTION_queryContentProviders:I = 0x25

.field static final TRANSACTION_queryInstrumentation:I = 0x27

.field static final TRANSACTION_queryIntentActivities:I = 0x1a

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x1b

.field static final TRANSACTION_queryIntentReceivers:I = 0x1c

.field static final TRANSACTION_queryIntentServices:I = 0x1e

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x24

.field static final TRANSACTION_removePackageFromPreferred:I = 0x32

.field static final TRANSACTION_removePermission:I = 0x12

.field static final TRANSACTION_removeUser:I = 0x52

.field static final TRANSACTION_replacePreferredActivity:I = 0x35

.field static final TRANSACTION_resolveContentProvider:I = 0x23

.field static final TRANSACTION_resolveIntent:I = 0x19

.field static final TRANSACTION_resolveService:I = 0x1d

.field static final TRANSACTION_setAppName:I = 0x2a

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x3a

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x38

.field static final TRANSACTION_setEnabledSettingEx:I = 0x57

.field static final TRANSACTION_setInstallLocation:I = 0x4f

.field static final TRANSACTION_setInstallerPackageName:I = 0x2e

.field static final TRANSACTION_setPackageStoppedState:I = 0x3c

.field static final TRANSACTION_systemReady:I = 0x47

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x4b

.field static final TRANSACTION_verifyPendingInstall:I = 0x54


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
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
    .line 44
    sparse-switch p1, :sswitch_data_ce8

    .line 1249
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 48
    :sswitch_8
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_7

    .line 53
    :sswitch_11
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 59
    .local v15, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v15, :cond_39

    .line 61
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_37
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    :cond_39
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 71
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_40
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v15

    .line 75
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v2, 0x1

    goto :goto_7

    .line 81
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_5b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v15

    .line 85
    .local v15, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    const/4 v2, 0x1

    goto :goto_7

    .line 91
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:[I
    :sswitch_76
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 101
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_92
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3       #_arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 105
    .restart local v15       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 111
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_ae
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .line 117
    .local v15, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v15, :cond_d7

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_d4
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 123
    :cond_d7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d4

    .line 129
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_de
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 135
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 141
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_100
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v15

    .line 147
    .local v15, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v15, :cond_129

    .line 149
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 153
    :cond_129
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_126

    .line 159
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_130
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v19

    .line 163
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 169
    .end local v3           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_14e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 175
    .local v15, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v15, :cond_177

    .line 177
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_174
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 181
    :cond_177
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_174

    .line 187
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_17e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b3

    .line 190
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 196
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 198
    .local v15, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v15, :cond_1b5

    .line 200
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_1b0
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 193
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_195

    .line 204
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b0

    .line 210
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1bc
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f1

    .line 213
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 219
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_1d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 221
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v15, :cond_1f3

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_1ee
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 216
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d3

    .line 227
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ee

    .line 233
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1fa
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22f

    .line 236
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 242
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v15

    .line 244
    .local v15, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v15, :cond_231

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_22c
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 239
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ServiceInfo;
    :cond_22f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_211

    .line 250
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ServiceInfo;
    :cond_231
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22c

    .line 256
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_238
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26d

    .line 259
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 265
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_24f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    .line 267
    .local v15, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v15, :cond_26f

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_26a
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 262
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :cond_26d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_24f

    .line 273
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ProviderInfo;
    :cond_26f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26a

    .line 279
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_276
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 285
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 291
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_296
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    .line 297
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 303
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:I
    :sswitch_2b6
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e1

    .line 306
    sget-object v2, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 311
    .local v3, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_2cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v15

    .line 312
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v15, :cond_2e3

    const/4 v2, 0x1

    :goto_2d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 309
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :cond_2e1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_2cd

    .line 313
    .restart local v15       #_result:Z
    :cond_2e3
    const/4 v2, 0x0

    goto :goto_2d9

    .line 318
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :sswitch_2e5
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 327
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_2fb
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v15

    .line 331
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v15, :cond_31a

    const/4 v2, 0x1

    :goto_312
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 332
    :cond_31a
    const/4 v2, 0x0

    goto :goto_312

    .line 337
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_31c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 343
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 349
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_33c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 354
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v15

    .line 355
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 361
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v15           #_result:I
    :sswitch_35c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 371
    .end local v3           #_arg0:I
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_378
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 381
    .end local v3           #_arg0:I
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_394
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v15

    .line 385
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 391
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_3b0
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e9

    .line 394
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 400
    .local v3, _arg0:Landroid/content/Intent;
    :goto_3c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 403
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 404
    .local v15, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v15, :cond_3eb

    .line 406
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    :goto_3e6
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 397
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :cond_3e9
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_3c7

    .line 410
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:I
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    :cond_3eb
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e6

    .line 416
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_3f2
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_424

    .line 419
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 425
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 427
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 428
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 429
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 431
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 422
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_424
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_409

    .line 435
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_426
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_476

    .line 438
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 444
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_43d
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    .line 446
    .local v4, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_478

    .line 449
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 455
    .local v6, _arg3:Landroid/content/Intent;
    :goto_45b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg5:I
    move-object/from16 v2, p0

    .line 458
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 459
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 461
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 441
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:[Landroid/content/Intent;
    .end local v5           #_arg2:[Ljava/lang/String;
    .end local v6           #_arg3:Landroid/content/Intent;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_476
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_43d

    .line 452
    .restart local v4       #_arg1:[Landroid/content/Intent;
    .restart local v5       #_arg2:[Ljava/lang/String;
    :cond_478
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/Intent;
    goto :goto_45b

    .line 465
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:[Landroid/content/Intent;
    .end local v5           #_arg2:[Ljava/lang/String;
    .end local v6           #_arg3:Landroid/content/Intent;
    :sswitch_47a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4ac

    .line 468
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 474
    .local v3, _arg0:Landroid/content/Intent;
    :goto_491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 477
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 478
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 480
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 471
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4ac
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_491

    .line 484
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_4ae
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e7

    .line 487
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 493
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_4c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 495
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 496
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 497
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v15, :cond_4e9

    .line 499
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_4e4
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 490
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :cond_4e7
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_4c5

    .line 503
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:I
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    :cond_4e9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e4

    .line 509
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_4f0
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_522

    .line 512
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 518
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 520
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 521
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 522
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 524
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 515
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_522
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_507

    .line 528
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_524
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 532
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 534
    .local v15, _result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v15, :cond_54d

    .line 536
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    :goto_54a
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 540
    :cond_54d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54a

    .line 546
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_554
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstalledSkinPackages()Ljava/util/List;

    move-result-object v18

    .line 548
    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 554
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_56c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 558
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 559
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 560
    .restart local v15       #_result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v15, :cond_595

    .line 562
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 568
    :goto_592
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 566
    :cond_595
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_592

    .line 572
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_59c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 575
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v16

    .line 576
    .local v16, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 578
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 582
    .end local v3           #_arg0:I
    .end local v16           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_5ba
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 587
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    .line 588
    .local v15, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    if-eqz v15, :cond_5e3

    .line 590
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 596
    :goto_5e0
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 594
    :cond_5e3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e0

    .line 600
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_5ea
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 604
    .local v12, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 605
    .local v14, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 608
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 609
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 613
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_612
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 619
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v21

    .line 621
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 623
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 627
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_638
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66d

    .line 630
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 636
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_64f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 637
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v15

    .line 638
    .local v15, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v15, :cond_66f

    .line 640
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    :goto_66a
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 633
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_66d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_64f

    .line 644
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_66f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66a

    .line 650
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_676
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 655
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .line 656
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 658
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 662
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_698
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 665
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getDirectedSmsReceivers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 666
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 668
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 672
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_6b4
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 675
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->checkAppDirectedSmsExisted(Ljava/lang/String;)Z

    move-result v15

    .line 676
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    if-eqz v15, :cond_6d3

    const/4 v2, 0x1

    :goto_6cb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 677
    :cond_6d3
    const/4 v2, 0x0

    goto :goto_6cb

    .line 682
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_6d5
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 686
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setAppName(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 693
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    :sswitch_6ef
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 696
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getCachedAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 697
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 703
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_70b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_73d

    .line 706
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 712
    .local v3, _arg0:Landroid/net/Uri;
    :goto_722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v4

    .line 714
    .local v4, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 716
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 709
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    :cond_73d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/Uri;
    goto :goto_722

    .line 723
    .end local v3           #_arg0:Landroid/net/Uri;
    :sswitch_73f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 726
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 732
    .end local v3           #_arg0:I
    :sswitch_755
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 743
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    :sswitch_76f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 747
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v4

    .line 749
    .local v4, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 750
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 756
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v5           #_arg2:I
    :sswitch_791
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 759
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 760
    .restart local v15       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 766
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_7ad
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 769
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 775
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_7c3
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 778
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 784
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_7d9
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 787
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v18

    .line 788
    .restart local v18       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 790
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 794
    .end local v3           #_arg0:I
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_7f7
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_837

    .line 797
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 803
    .local v3, _arg0:Landroid/content/IntentFilter;
    :goto_80e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    .local v4, _arg1:I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    .line 807
    .local v5, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_839

    .line 808
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 813
    .local v6, _arg3:Landroid/content/ComponentName;
    :goto_82c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 800
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :cond_837
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    goto :goto_80e

    .line 811
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    :cond_839
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/ComponentName;
    goto :goto_82c

    .line 819
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :sswitch_83b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_87b

    .line 822
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 828
    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    :goto_852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 830
    .restart local v4       #_arg1:I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    .line 832
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_87d

    .line 833
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 838
    .restart local v6       #_arg3:Landroid/content/ComponentName;
    :goto_870
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 825
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :cond_87b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    goto :goto_852

    .line 836
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    :cond_87d
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/ComponentName;
    goto :goto_870

    .line 844
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :sswitch_87f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 853
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_895
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v11, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v13, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v15

    .line 861
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 864
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 865
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 869
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v11           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v13           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v15           #_result:I
    :sswitch_8c5
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8ef

    .line 872
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 878
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_8dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 880
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 881
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 875
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_8ef
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_8dc

    .line 887
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_8f1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_919

    .line 890
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 895
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_908
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v15

    .line 896
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 893
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_919
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_908

    .line 902
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_91b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 908
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 909
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 915
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_939
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 918
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v15

    .line 919
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 925
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_955
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 929
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_972

    const/4 v4, 0x1

    .line 930
    .local v4, _arg1:Z
    :goto_967
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 929
    .end local v4           #_arg1:Z
    :cond_972
    const/4 v4, 0x0

    goto :goto_967

    .line 936
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_974
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 940
    .local v9, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 941
    .local v4, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 947
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v9           #_arg0:J
    :sswitch_992
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 951
    .restart local v9       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9b8

    .line 952
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 957
    .local v4, _arg1:Landroid/content/IntentSender;
    :goto_9ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 955
    .end local v4           #_arg1:Landroid/content/IntentSender;
    :cond_9b8
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/content/IntentSender;
    goto :goto_9ad

    .line 963
    .end local v4           #_arg1:Landroid/content/IntentSender;
    .end local v9           #_arg0:J
    :sswitch_9ba
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 967
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 968
    .local v4, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 974
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_9d8
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 978
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 979
    .restart local v4       #_arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 985
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_9f6
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v4

    .line 990
    .local v4, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 996
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_a14
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v15

    .line 998
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1000
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1004
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_a2a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v15

    .line 1006
    .local v15, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1008
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v15           #_result:[Landroid/content/pm/FeatureInfo;
    :sswitch_a41
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1015
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 1016
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    if-eqz v15, :cond_a60

    const/4 v2, 0x1

    :goto_a58
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1017
    :cond_a60
    const/4 v2, 0x0

    goto :goto_a58

    .line 1022
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_a62
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1029
    :sswitch_a72
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v15

    .line 1031
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    if-eqz v15, :cond_a8b

    const/4 v2, 0x1

    :goto_a83
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1032
    :cond_a8b
    const/4 v2, 0x0

    goto :goto_a83

    .line 1037
    .end local v15           #_result:Z
    :sswitch_a8d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1044
    :sswitch_a9d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v15

    .line 1046
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v15, :cond_ab6

    const/4 v2, 0x1

    :goto_aae
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1047
    :cond_ab6
    const/4 v2, 0x0

    goto :goto_aae

    .line 1052
    .end local v15           #_result:Z
    :sswitch_ab8
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1059
    :sswitch_ac8
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1062
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v15

    .line 1063
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    if-eqz v15, :cond_ae7

    const/4 v2, 0x1

    :goto_adf
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1064
    :cond_ae7
    const/4 v2, 0x0

    goto :goto_adf

    .line 1069
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_ae9
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b09

    const/4 v3, 0x1

    .line 1073
    .local v3, _arg0:Z
    :goto_af7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0b

    const/4 v4, 0x1

    .line 1074
    .local v4, _arg1:Z
    :goto_afe
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1071
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Z
    :cond_b09
    const/4 v3, 0x0

    goto :goto_af7

    .line 1073
    .restart local v3       #_arg0:Z
    :cond_b0b
    const/4 v4, 0x0

    goto :goto_afe

    .line 1080
    .end local v3           #_arg0:Z
    :sswitch_b0d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1084
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1086
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1090
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_b29
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v4

    .line 1096
    .local v4, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1097
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1103
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageMoveObserver;
    .end local v5           #_arg2:I
    :sswitch_b4b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b76

    .line 1106
    sget-object v2, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 1111
    .local v3, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_b62
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v15

    .line 1112
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v15, :cond_b78

    const/4 v2, 0x1

    :goto_b6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1109
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :cond_b76
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_b62

    .line 1113
    .restart local v15       #_result:Z
    :cond_b78
    const/4 v2, 0x0

    goto :goto_b6e

    .line 1118
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :sswitch_b7a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1121
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v15

    .line 1122
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    if-eqz v15, :cond_b99

    const/4 v2, 0x1

    :goto_b91
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1123
    :cond_b99
    const/4 v2, 0x0

    goto :goto_b91

    .line 1128
    .end local v3           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_b9b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v15

    .line 1130
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1136
    .end local v15           #_result:I
    :sswitch_bb1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1141
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 1142
    .local v15, _result:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    if-eqz v15, :cond_bda

    .line 1144
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1150
    :goto_bd7
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1148
    :cond_bda
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bd7

    .line 1154
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/UserInfo;
    :sswitch_be1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1157
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removeUser(I)Z

    move-result v15

    .line 1158
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    if-eqz v15, :cond_c00

    const/4 v2, 0x1

    :goto_bf8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1159
    :cond_c00
    const/4 v2, 0x0

    goto :goto_bf8

    .line 1164
    .end local v3           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_c02
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c54

    .line 1167
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1173
    .local v3, _arg0:Landroid/net/Uri;
    :goto_c19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v4

    .line 1175
    .local v4, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1177
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1179
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c56

    .line 1180
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1186
    .local v7, _arg4:Landroid/net/Uri;
    :goto_c39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c58

    .line 1187
    sget-object v2, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ManifestDigest;

    .local v8, _arg5:Landroid/content/pm/ManifestDigest;
    :goto_c49
    move-object/from16 v2, p0

    .line 1192
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/IPackageManager$Stub;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1170
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/net/Uri;
    .end local v8           #_arg5:Landroid/content/pm/ManifestDigest;
    :cond_c54
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/Uri;
    goto :goto_c19

    .line 1183
    .restart local v4       #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:Ljava/lang/String;
    :cond_c56
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/net/Uri;
    goto :goto_c39

    .line 1190
    :cond_c58
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/content/pm/ManifestDigest;
    goto :goto_c49

    .line 1198
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/net/Uri;
    .end local v8           #_arg5:Landroid/content/pm/ManifestDigest;
    :sswitch_c5a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1202
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1203
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1209
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    :sswitch_c74
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v15

    .line 1211
    .local v15, _result:Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    if-eqz v15, :cond_c93

    .line 1213
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1219
    :goto_c90
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1217
    :cond_c93
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c90

    .line 1223
    .end local v15           #_result:Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_c9a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v15

    .line 1225
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    if-eqz v15, :cond_cb3

    const/4 v2, 0x1

    :goto_cab
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1226
    :cond_cb3
    const/4 v2, 0x0

    goto :goto_cab

    .line 1231
    .end local v15           #_result:Z
    :sswitch_cb5
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, _arg0:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1236
    .local v4, _arg1:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setEnabledSettingEx([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1242
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v4           #_arg1:[Ljava/lang/String;
    :sswitch_ccf
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstalledHTCPackages()Ljava/util/List;

    move-result-object v23

    .line 1244
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1246
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 44
    nop

    :sswitch_data_ce8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_40
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_76
        0x5 -> :sswitch_92
        0x6 -> :sswitch_ae
        0x7 -> :sswitch_de
        0x8 -> :sswitch_100
        0x9 -> :sswitch_130
        0xa -> :sswitch_14e
        0xb -> :sswitch_17e
        0xc -> :sswitch_1bc
        0xd -> :sswitch_1fa
        0xe -> :sswitch_238
        0xf -> :sswitch_276
        0x10 -> :sswitch_296
        0x11 -> :sswitch_2b6
        0x12 -> :sswitch_2e5
        0x13 -> :sswitch_2fb
        0x14 -> :sswitch_31c
        0x15 -> :sswitch_33c
        0x16 -> :sswitch_35c
        0x17 -> :sswitch_378
        0x18 -> :sswitch_394
        0x19 -> :sswitch_3b0
        0x1a -> :sswitch_3f2
        0x1b -> :sswitch_426
        0x1c -> :sswitch_47a
        0x1d -> :sswitch_4ae
        0x1e -> :sswitch_4f0
        0x1f -> :sswitch_524
        0x20 -> :sswitch_554
        0x21 -> :sswitch_56c
        0x22 -> :sswitch_59c
        0x23 -> :sswitch_5ba
        0x24 -> :sswitch_5ea
        0x25 -> :sswitch_612
        0x26 -> :sswitch_638
        0x27 -> :sswitch_676
        0x28 -> :sswitch_698
        0x29 -> :sswitch_6b4
        0x2a -> :sswitch_6d5
        0x2b -> :sswitch_6ef
        0x2c -> :sswitch_70b
        0x2d -> :sswitch_73f
        0x2e -> :sswitch_755
        0x2f -> :sswitch_76f
        0x30 -> :sswitch_791
        0x31 -> :sswitch_7ad
        0x32 -> :sswitch_7c3
        0x33 -> :sswitch_7d9
        0x34 -> :sswitch_7f7
        0x35 -> :sswitch_83b
        0x36 -> :sswitch_87f
        0x37 -> :sswitch_895
        0x38 -> :sswitch_8c5
        0x39 -> :sswitch_8f1
        0x3a -> :sswitch_91b
        0x3b -> :sswitch_939
        0x3c -> :sswitch_955
        0x3d -> :sswitch_974
        0x3e -> :sswitch_992
        0x3f -> :sswitch_9ba
        0x40 -> :sswitch_9d8
        0x41 -> :sswitch_9f6
        0x42 -> :sswitch_a14
        0x43 -> :sswitch_a2a
        0x44 -> :sswitch_a41
        0x45 -> :sswitch_a62
        0x46 -> :sswitch_a72
        0x47 -> :sswitch_a8d
        0x48 -> :sswitch_a9d
        0x49 -> :sswitch_ab8
        0x4a -> :sswitch_ac8
        0x4b -> :sswitch_ae9
        0x4c -> :sswitch_b0d
        0x4d -> :sswitch_b29
        0x4e -> :sswitch_b4b
        0x4f -> :sswitch_b7a
        0x50 -> :sswitch_b9b
        0x51 -> :sswitch_bb1
        0x52 -> :sswitch_be1
        0x53 -> :sswitch_c02
        0x54 -> :sswitch_c5a
        0x55 -> :sswitch_c74
        0x56 -> :sswitch_c9a
        0x57 -> :sswitch_cb5
        0x58 -> :sswitch_ccf
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method