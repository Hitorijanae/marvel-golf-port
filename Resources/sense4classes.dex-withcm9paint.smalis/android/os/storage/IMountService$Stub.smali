.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_enableModemLink:I = 0x21

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x23

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x22

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountISO:I = 0x26

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setAutoMountISOEnabled:I = 0x1f

.field static final TRANSACTION_setMountISOEnabled:I = 0x20

.field static final TRANSACTION_setPCtoolISOEnabled:I = 0x25

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountISO:I = 0x27

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 928
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 929
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 917
    if-nez p0, :cond_4

    .line 918
    const/4 v0, 0x0

    .line 924
    :goto_3
    return-object v0

    .line 920
    :cond_4
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 921
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_13

    .line 922
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_3

    .line 924
    :cond_13
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 933
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
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
    .line 939
    sparse-switch p1, :sswitch_data_4ba

    .line 1296
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 941
    :sswitch_8
    const-string v3, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    const/4 v3, 0x1

    goto :goto_7

    .line 945
    :sswitch_11
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v15

    .line 948
    .local v15, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    const/4 v3, 0x1

    goto :goto_7

    .line 953
    .end local v15           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v15

    .line 956
    .restart local v15       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    const/4 v3, 0x1

    goto :goto_7

    .line 961
    .end local v15           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_43
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v26

    .line 963
    .local v26, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    if-eqz v26, :cond_5b

    const/4 v3, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v3, 0x1

    goto :goto_7

    .line 964
    :cond_5b
    const/4 v3, 0x0

    goto :goto_54

    .line 968
    .end local v26           #result:Z
    :sswitch_5d
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_75

    const/4 v11, 0x1

    .line 971
    .local v11, enable:Z
    :goto_6b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    const/4 v3, 0x1

    goto :goto_7

    .line 970
    .end local v11           #enable:Z
    :cond_75
    const/4 v11, 0x0

    goto :goto_6b

    .line 976
    :sswitch_77
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v26

    .line 978
    .restart local v26       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    if-eqz v26, :cond_90

    const/4 v3, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 979
    :cond_90
    const/4 v3, 0x0

    goto :goto_88

    .line 983
    .end local v26           #result:Z
    :sswitch_92
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 986
    .local v16, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v27

    .line 987
    .local v27, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 992
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v27           #resultCode:I
    :sswitch_b2
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 995
    .restart local v16       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_db

    const/4 v13, 0x1

    .line 996
    .local v13, force:Z
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dd

    const/16 v25, 0x1

    .line 997
    .local v25, removeEncrypt:Z
    :goto_cc
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v13, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 995
    .end local v13           #force:Z
    .end local v25           #removeEncrypt:Z
    :cond_db
    const/4 v13, 0x0

    goto :goto_c4

    .line 996
    .restart local v13       #force:Z
    :cond_dd
    const/16 v25, 0x0

    goto :goto_cc

    .line 1002
    .end local v13           #force:Z
    .end local v16           #mountPoint:Ljava/lang/String;
    :sswitch_e0
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1005
    .restart local v16       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v26

    .line 1006
    .local v26, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1011
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v26           #result:I
    :sswitch_100
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1014
    .local v23, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v24

    .line 1015
    .local v24, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1017
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1020
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #pids:[I
    :sswitch_120
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1023
    .restart local v16       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1024
    .local v28, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1026
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1029
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v28           #state:Ljava/lang/String;
    :sswitch_140
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1033
    .local v4, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1035
    .local v5, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1039
    .local v7, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, ownerUid:I
    move-object/from16 v3, p0

    .line 1040
    invoke-virtual/range {v3 .. v8}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v27

    .line 1041
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1046
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #sizeMb:I
    .end local v6           #fstype:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    .end local v27           #resultCode:I
    :sswitch_16e
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1049
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v27

    .line 1050
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1055
    .end local v4           #id:Ljava/lang/String;
    .end local v27           #resultCode:I
    :sswitch_18c
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1059
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b1

    const/4 v13, 0x1

    .line 1060
    .restart local v13       #force:Z
    :goto_19e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v27

    .line 1061
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1059
    .end local v13           #force:Z
    .end local v27           #resultCode:I
    :cond_1b1
    const/4 v13, 0x0

    goto :goto_19e

    .line 1066
    .end local v4           #id:Ljava/lang/String;
    :sswitch_1b3
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1070
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1073
    .restart local v8       #ownerUid:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    .line 1074
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1079
    .end local v4           #id:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    .end local v27           #resultCode:I
    :sswitch_1d9
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1083
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1fe

    const/4 v13, 0x1

    .line 1084
    .restart local v13       #force:Z
    :goto_1eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v27

    .line 1085
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1083
    .end local v13           #force:Z
    .end local v27           #resultCode:I
    :cond_1fe
    const/4 v13, 0x0

    goto :goto_1eb

    .line 1090
    .end local v4           #id:Ljava/lang/String;
    :sswitch_200
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1093
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v29

    .line 1094
    .local v29, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    if-eqz v29, :cond_21f

    const/4 v3, 0x1

    :goto_217
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1095
    :cond_21f
    const/4 v3, 0x0

    goto :goto_217

    .line 1099
    .end local v4           #id:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_221
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1103
    .local v21, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1104
    .local v18, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 1105
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1110
    .end local v18           #newId:Ljava/lang/String;
    .end local v21           #oldId:Ljava/lang/String;
    .end local v27           #resultCode:I
    :sswitch_247
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1113
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1114
    .restart local v23       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1119
    .end local v4           #id:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    :sswitch_265
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v14

    .line 1121
    .local v14, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1123
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1126
    .end local v14           #ids:[Ljava/lang/String;
    :sswitch_27b
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v20

    .line 1130
    .local v20, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1135
    .end local v20           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_297
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1141
    :sswitch_2a7
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1145
    .local v12, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1147
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v20

    .line 1149
    .local v20, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1150
    .local v19, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1155
    .end local v7           #key:Ljava/lang/String;
    .end local v12           #filename:Ljava/lang/String;
    .end local v19           #nonce:I
    .end local v20           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_2d1
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1159
    .restart local v12       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2fe

    const/4 v13, 0x1

    .line 1161
    .restart local v13       #force:Z
    :goto_2e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v20

    .line 1163
    .restart local v20       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1164
    .restart local v19       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1159
    .end local v13           #force:Z
    .end local v19           #nonce:I
    .end local v20           #observer:Landroid/os/storage/IObbActionListener;
    :cond_2fe
    const/4 v13, 0x0

    goto :goto_2e3

    .line 1169
    .end local v12           #filename:Ljava/lang/String;
    :sswitch_300
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1172
    .restart local v12       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v29

    .line 1173
    .restart local v29       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v29, :cond_31f

    const/4 v3, 0x1

    :goto_317
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1174
    :cond_31f
    const/4 v3, 0x0

    goto :goto_317

    .line 1178
    .end local v12           #filename:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_321
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1181
    .restart local v12       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1182
    .local v17, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1187
    .end local v12           #filename:Ljava/lang/String;
    .end local v17           #mountedPath:Ljava/lang/String;
    :sswitch_33f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v10

    .line 1189
    .local v10, emulated:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    if-eqz v10, :cond_358

    const/4 v3, 0x1

    :goto_350
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1190
    :cond_358
    const/4 v3, 0x0

    goto :goto_350

    .line 1194
    .end local v10           #emulated:Z
    :sswitch_35a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1196
    .local v22, password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v26

    .line 1197
    .restart local v26       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1202
    .end local v22           #password:Ljava/lang/String;
    .end local v26           #result:I
    :sswitch_37a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1204
    .restart local v22       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v26

    .line 1205
    .restart local v26       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1210
    .end local v22           #password:Ljava/lang/String;
    .end local v26           #result:I
    :sswitch_39a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1212
    .restart local v22       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(Ljava/lang/String;)I

    move-result v26

    .line 1213
    .restart local v26       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1218
    .end local v22           #password:Ljava/lang/String;
    .end local v26           #result:I
    :sswitch_3ba
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v26

    .line 1220
    .local v26, result:[Landroid/os/Parcelable;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1222
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1225
    .end local v26           #result:[Landroid/os/Parcelable;
    :sswitch_3d3
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1228
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1229
    .restart local v23       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1234
    .end local v4           #id:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    :sswitch_3f1
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v26

    .line 1236
    .local v26, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1242
    .end local v26           #result:I
    :sswitch_409
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_422

    const/4 v9, 0x1

    .line 1245
    .local v9, _arg0:Z
    :goto_417
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/os/storage/IMountService$Stub;->setAutoMountISOEnabled(Z)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1244
    .end local v9           #_arg0:Z
    :cond_422
    const/4 v9, 0x0

    goto :goto_417

    .line 1251
    :sswitch_424
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_445

    const/4 v11, 0x1

    .line 1254
    .restart local v11       #enable:Z
    :goto_432
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/storage/IMountService$Stub;->setMountISOEnabled(Z)I

    move-result v27

    .line 1255
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1253
    .end local v11           #enable:Z
    .end local v27           #resultCode:I
    :cond_445
    const/4 v11, 0x0

    goto :goto_432

    .line 1260
    :sswitch_447
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->enableModemLink()I

    move-result v27

    .line 1262
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1268
    .end local v27           #resultCode:I
    :sswitch_45f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_480

    const/4 v11, 0x1

    .line 1271
    .restart local v11       #enable:Z
    :goto_46d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/storage/IMountService$Stub;->setPCtoolISOEnabled(Z)I

    move-result v27

    .line 1272
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1270
    .end local v11           #enable:Z
    .end local v27           #resultCode:I
    :cond_480
    const/4 v11, 0x0

    goto :goto_46d

    .line 1278
    :sswitch_482
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1281
    .restart local v23       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountISO(Ljava/lang/String;)I

    move-result v27

    .line 1282
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1288
    .end local v23           #path:Ljava/lang/String;
    .end local v27           #resultCode:I
    :sswitch_4a2
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->unmountISO()I

    move-result v27

    .line 1290
    .restart local v27       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 939
    :sswitch_data_4ba
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_43
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_77
        0x6 -> :sswitch_92
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_e0
        0x9 -> :sswitch_100
        0xa -> :sswitch_120
        0xb -> :sswitch_140
        0xc -> :sswitch_16e
        0xd -> :sswitch_18c
        0xe -> :sswitch_1b3
        0xf -> :sswitch_1d9
        0x10 -> :sswitch_200
        0x11 -> :sswitch_221
        0x12 -> :sswitch_247
        0x13 -> :sswitch_265
        0x14 -> :sswitch_27b
        0x15 -> :sswitch_297
        0x16 -> :sswitch_2a7
        0x17 -> :sswitch_2d1
        0x18 -> :sswitch_300
        0x19 -> :sswitch_321
        0x1a -> :sswitch_33f
        0x1b -> :sswitch_35a
        0x1c -> :sswitch_37a
        0x1d -> :sswitch_39a
        0x1e -> :sswitch_3ba
        0x1f -> :sswitch_409
        0x20 -> :sswitch_424
        0x21 -> :sswitch_447
        0x22 -> :sswitch_3d3
        0x23 -> :sswitch_3f1
        0x25 -> :sswitch_45f
        0x26 -> :sswitch_482
        0x27 -> :sswitch_4a2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
