.class public abstract Landroid/app/IProfileManager$Stub;
.super Landroid/os/Binder;
.source "IProfileManager.java"

# interfaces
.implements Landroid/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IProfileManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IProfileManager"

.field static final TRANSACTION_addNotificationGroup:I = 0xe

.field static final TRANSACTION_addProfile:I = 0x4

.field static final TRANSACTION_getActiveProfile:I = 0x3

.field static final TRANSACTION_getNotificationGroup:I = 0x12

.field static final TRANSACTION_getNotificationGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationGroups:I = 0xd

.field static final TRANSACTION_getProfile:I = 0x7

.field static final TRANSACTION_getProfileByName:I = 0x8

.field static final TRANSACTION_getProfiles:I = 0x9

.field static final TRANSACTION_notificationGroupExistsByName:I = 0xc

.field static final TRANSACTION_profileExists:I = 0xa

.field static final TRANSACTION_profileExistsByName:I = 0xb

.field static final TRANSACTION_removeNotificationGroup:I = 0xf

.field static final TRANSACTION_removeProfile:I = 0x5

.field static final TRANSACTION_resetAll:I = 0x13

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setActiveProfileByName:I = 0x2

.field static final TRANSACTION_updateNotificationGroup:I = 0x10

.field static final TRANSACTION_updateProfile:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IProfileManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IProfileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IProfileManager;
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
    const-string v1, "android.app.IProfileManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IProfileManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/app/IProfileManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/app/IProfileManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_236

    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 51
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 56
    .local v0, _arg0:Landroid/os/ParcelUuid;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->setActiveProfile(Landroid/os/ParcelUuid;)Z

    move-result v1

    .line 57
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_2d

    move v2, v3

    :cond_2d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 54
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_23

    .line 63
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_33
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->setActiveProfileByName(Ljava/lang/String;)Z

    move-result v1

    .line 67
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v1, :cond_46

    move v2, v3

    :cond_46
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_4a
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .line 75
    .local v1, _result:Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_5f

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 81
    :cond_5f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v1           #_result:Landroid/app/Profile;
    :sswitch_63
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    .line 90
    sget-object v4, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 95
    .local v0, _arg0:Landroid/app/Profile;
    :goto_76
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->addProfile(Landroid/app/Profile;)Z

    move-result v1

    .line 96
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_80

    move v2, v3

    :cond_80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v0           #_arg0:Landroid/app/Profile;
    .end local v1           #_result:Z
    :cond_84
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/Profile;
    goto :goto_76

    .line 102
    .end local v0           #_arg0:Landroid/app/Profile;
    :sswitch_86
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8

    .line 105
    sget-object v4, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 110
    .restart local v0       #_arg0:Landroid/app/Profile;
    :goto_99
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->removeProfile(Landroid/app/Profile;)Z

    move-result v1

    .line 111
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v1, :cond_a3

    move v2, v3

    :cond_a3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 108
    .end local v0           #_arg0:Landroid/app/Profile;
    .end local v1           #_result:Z
    :cond_a8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/Profile;
    goto :goto_99

    .line 117
    .end local v0           #_arg0:Landroid/app/Profile;
    :sswitch_aa
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c5

    .line 120
    sget-object v2, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 125
    .restart local v0       #_arg0:Landroid/app/Profile;
    :goto_bd
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->updateProfile(Landroid/app/Profile;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 123
    .end local v0           #_arg0:Landroid/app/Profile;
    :cond_c5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/Profile;
    goto :goto_bd

    .line 131
    .end local v0           #_arg0:Landroid/app/Profile;
    :sswitch_c7
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eb

    .line 134
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 139
    .local v0, _arg0:Landroid/os/ParcelUuid;
    :goto_da
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;

    move-result-object v1

    .line 140
    .local v1, _result:Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_ed

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 137
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Landroid/app/Profile;
    :cond_eb
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_da

    .line 146
    .restart local v1       #_result:Landroid/app/Profile;
    :cond_ed
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Landroid/app/Profile;
    :sswitch_f2
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getProfileByName(Ljava/lang/String;)Landroid/app/Profile;

    move-result-object v1

    .line 156
    .restart local v1       #_result:Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v1, :cond_10c

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 162
    :cond_10c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Landroid/app/Profile;
    :sswitch_111
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getProfiles()[Landroid/app/Profile;

    move-result-object v1

    .line 170
    .local v1, _result:[Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 176
    .end local v1           #_result:[Landroid/app/Profile;
    :sswitch_122
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_144

    .line 179
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 184
    .local v0, _arg0:Landroid/os/ParcelUuid;
    :goto_135
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->profileExists(Landroid/os/ParcelUuid;)Z

    move-result v1

    .line 185
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_13f

    move v2, v3

    :cond_13f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Z
    :cond_144
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_135

    .line 191
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_146
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->profileExistsByName(Ljava/lang/String;)Z

    move-result v1

    .line 195
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v1, :cond_159

    move v2, v3

    :cond_159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 201
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_15e
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->notificationGroupExistsByName(Ljava/lang/String;)Z

    move-result v1

    .line 205
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v1, :cond_171

    move v2, v3

    :cond_171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_176
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .line 213
    .local v1, _result:[Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 219
    .end local v1           #_result:[Landroid/app/NotificationGroup;
    :sswitch_187
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a2

    .line 222
    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 227
    .local v0, _arg0:Landroid/app/NotificationGroup;
    :goto_19a
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 225
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :cond_1a2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/NotificationGroup;
    goto :goto_19a

    .line 233
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :sswitch_1a4
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1bf

    .line 236
    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 241
    .restart local v0       #_arg0:Landroid/app/NotificationGroup;
    :goto_1b7
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 239
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :cond_1bf
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/NotificationGroup;
    goto :goto_1b7

    .line 247
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :sswitch_1c1
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1dc

    .line 250
    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 255
    .restart local v0       #_arg0:Landroid/app/NotificationGroup;
    :goto_1d4
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->updateNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 253
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :cond_1dc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/NotificationGroup;
    goto :goto_1d4

    .line 261
    .end local v0           #_arg0:Landroid/app/NotificationGroup;
    :sswitch_1de
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 265
    .local v1, _result:Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v1, :cond_1f8

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 271
    :cond_1f8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 277
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Landroid/app/NotificationGroup;
    :sswitch_1fd
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_221

    .line 280
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 285
    .local v0, _arg0:Landroid/os/ParcelUuid;
    :goto_210
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 286
    .restart local v1       #_result:Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v1, :cond_223

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 283
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Landroid/app/NotificationGroup;
    :cond_221
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_210

    .line 292
    .restart local v1       #_result:Landroid/app/NotificationGroup;
    :cond_223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 298
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_result:Landroid/app/NotificationGroup;
    :sswitch_228
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->resetAll()V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_236
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_63
        0x5 -> :sswitch_86
        0x6 -> :sswitch_aa
        0x7 -> :sswitch_c7
        0x8 -> :sswitch_f2
        0x9 -> :sswitch_111
        0xa -> :sswitch_122
        0xb -> :sswitch_146
        0xc -> :sswitch_15e
        0xd -> :sswitch_176
        0xe -> :sswitch_187
        0xf -> :sswitch_1a4
        0x10 -> :sswitch_1c1
        0x11 -> :sswitch_1de
        0x12 -> :sswitch_1fd
        0x13 -> :sswitch_228
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
