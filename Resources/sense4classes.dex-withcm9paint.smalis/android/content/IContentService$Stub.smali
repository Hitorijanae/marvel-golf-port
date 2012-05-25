.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xa

.field static final TRANSACTION_addStatusChangeListener:I = 0x15

.field static final TRANSACTION_cancelSync:I = 0x5

.field static final TRANSACTION_getCurrentSyncs:I = 0x11

.field static final TRANSACTION_getIsSyncable:I = 0xc

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0xf

.field static final TRANSACTION_getPeriodicSyncs:I = 0x9

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x12

.field static final TRANSACTION_getSyncAutomatically:I = 0x6

.field static final TRANSACTION_getSyncStatus:I = 0x13

.field static final TRANSACTION_isSyncActive:I = 0x10

.field static final TRANSACTION_isSyncPending:I = 0x14

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x1

.field static final TRANSACTION_registerSetSyncAfterOnAccountUpdate:I = 0x8

.field static final TRANSACTION_removePeriodicSync:I = 0xb

.field static final TRANSACTION_removeStatusChangeListener:I = 0x16

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0xd

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0xe

.field static final TRANSACTION_setSyncAutomatically:I = 0x7

.field static final TRANSACTION_unregisterContentObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/IContentService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_31c

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 45
    :sswitch_a
    const-string v0, "android.content.IContentService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_39

    .line 53
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 59
    .local v1, _arg0:Landroid/net/Uri;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b

    move v2, v9

    .line 61
    .local v2, _arg1:Z
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 62
    .local v3, _arg2:Landroid/database/IContentObserver;
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v1           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/database/IContentObserver;
    :cond_39
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;
    goto :goto_23

    :cond_3b
    move v2, v0

    .line 59
    goto :goto_2a

    .line 68
    .end local v1           #_arg0:Landroid/net/Uri;
    :sswitch_3d
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    .line 71
    .local v1, _arg0:Landroid/database/IContentObserver;
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 77
    .end local v1           #_arg0:Landroid/database/IContentObserver;
    :sswitch_51
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_81

    .line 80
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 86
    .local v1, _arg0:Landroid/net/Uri;
    :goto_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 88
    .local v2, _arg1:Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_83

    move v3, v9

    .line 90
    .local v3, _arg2:Z
    :goto_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_85

    move v4, v9

    .line 91
    .local v4, _arg3:Z
    :goto_7a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v1           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Landroid/database/IContentObserver;
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    :cond_81
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;
    goto :goto_64

    .restart local v2       #_arg1:Landroid/database/IContentObserver;
    :cond_83
    move v3, v0

    .line 88
    goto :goto_73

    .restart local v3       #_arg2:Z
    :cond_85
    move v4, v0

    .line 90
    goto :goto_7a

    .line 97
    .end local v1           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Landroid/database/IContentObserver;
    .end local v3           #_arg2:Z
    :sswitch_87
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b4

    .line 100
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 106
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b6

    .line 109
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 114
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_ac
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 103
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :cond_b4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_9a

    .line 112
    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_b6
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_ac

    .line 120
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_b8
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d7

    .line 123
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 129
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_d7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_cb

    .line 136
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_d9
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_ff

    .line 139
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 145
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 147
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_fa

    move v0, v9

    :cond_fa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_ff
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_ec

    .line 153
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_101
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_127

    .line 156
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 162
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_129

    move v3, v9

    .line 165
    .local v3, _arg2:Z
    :goto_11f
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Z
    :cond_127
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_114

    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_129
    move v3, v0

    .line 164
    goto :goto_11f

    .line 171
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_12b
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14a

    .line 174
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 180
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_14a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_13e

    .line 187
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_14c
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16f

    .line 190
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 196
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 198
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 193
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_16f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_15f

    .line 204
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_171
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a3

    .line 207
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 213
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a5

    .line 216
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 222
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg3:J
    move-object v0, p0

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 210
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:J
    :cond_1a3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_184

    .line 219
    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_1a5
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_196

    .line 229
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_1a7
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d4

    .line 232
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 238
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d6

    .line 241
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 246
    .restart local v3       #_arg2:Landroid/os/Bundle;
    :goto_1cc
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 235
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :cond_1d4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_1ba

    .line 244
    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_1d6
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_1cc

    .line 252
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_1d8
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fb

    .line 255
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 261
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    .line 263
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 258
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :cond_1fb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_1eb

    .line 269
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_1fd
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_220

    .line 272
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 278
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 275
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :cond_220
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_210

    .line 287
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_222
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_236

    move v1, v9

    .line 290
    .local v1, _arg0:Z
    :goto_22e
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_236
    move v1, v0

    .line 289
    goto :goto_22e

    .line 296
    :sswitch_238
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v6

    .line 298
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v6, :cond_247

    move v0, v9

    :cond_247
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 304
    .end local v6           #_result:Z
    :sswitch_24c
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_272

    .line 307
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 313
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_25f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 315
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v6, :cond_26d

    move v0, v9

    :cond_26d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 310
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_272
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_25f

    .line 321
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_274
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v8

    .line 323
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 329
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_285
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 331
    .local v6, _result:[Landroid/content/SyncAdapterType;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v6, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 337
    .end local v6           #_result:[Landroid/content/SyncAdapterType;
    :sswitch_296
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2be

    .line 340
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 346
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 348
    .local v6, _result:Landroid/content/SyncStatusInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v6, :cond_2c0

    .line 350
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v6, p3, v9}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 343
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Landroid/content/SyncStatusInfo;
    :cond_2be
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_2a9

    .line 354
    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v6       #_result:Landroid/content/SyncStatusInfo;
    :cond_2c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 360
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Landroid/content/SyncStatusInfo;
    :sswitch_2c5
    const-string v10, "android.content.IContentService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2eb

    .line 363
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 369
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 371
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v6, :cond_2e6

    move v0, v9

    :cond_2e6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 366
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_2eb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_2d8

    .line 377
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_2ed
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 382
    .local v2, _arg1:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 388
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ISyncStatusObserver;
    :sswitch_306
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 391
    .local v1, _arg0:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_31c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_51
        0x4 -> :sswitch_87
        0x5 -> :sswitch_b8
        0x6 -> :sswitch_d9
        0x7 -> :sswitch_101
        0x8 -> :sswitch_12b
        0x9 -> :sswitch_14c
        0xa -> :sswitch_171
        0xb -> :sswitch_1a7
        0xc -> :sswitch_1d8
        0xd -> :sswitch_1fd
        0xe -> :sswitch_222
        0xf -> :sswitch_238
        0x10 -> :sswitch_24c
        0x11 -> :sswitch_274
        0x12 -> :sswitch_285
        0x13 -> :sswitch_296
        0x14 -> :sswitch_2c5
        0x15 -> :sswitch_2ed
        0x16 -> :sswitch_306
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
