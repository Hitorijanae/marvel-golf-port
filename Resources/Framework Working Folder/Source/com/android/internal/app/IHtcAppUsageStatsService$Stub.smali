.class public abstract Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;
.super Landroid/os/Binder;
.source "IHtcAppUsageStatsService.java"

# interfaces
.implements Lcom/android/internal/app/IHtcAppUsageStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IHtcAppUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHtcAppUsageStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IHtcAppUsageStatsService"

.field static final TRANSACTION_getAllAppUsageStats:I = 0x1

.field static final TRANSACTION_noteAppDied:I = 0x8

.field static final TRANSACTION_notePauseActivity:I = 0x7

.field static final TRANSACTION_noteResumeActivity:I = 0x4

.field static final TRANSACTION_noteResumeActivity_pkg:I = 0x5

.field static final TRANSACTION_noteResumeActivity_pkg_frag:I = 0x6

.field static final TRANSACTION_registerAppLaunchObserver:I = 0x2

.field static final TRANSACTION_unregisterAppLaunchObserver:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_fc

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;

    move-result-object v7

    .line 49
    .local v7, _result:[Lcom/android/internal/os/HtcAppUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 55
    .end local v7           #_result:[Lcom/android/internal/os/HtcAppUsageStats;
    :sswitch_20
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IHtcAppLaunchObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IHtcAppLaunchObserver;

    move-result-object v1

    .line 58
    .local v1, _arg0:Lcom/android/internal/os/IHtcAppLaunchObserver;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->registerAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    .end local v1           #_arg0:Lcom/android/internal/os/IHtcAppLaunchObserver;
    :sswitch_34
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IHtcAppLaunchObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IHtcAppLaunchObserver;

    move-result-object v1

    .line 67
    .restart local v1       #_arg0:Lcom/android/internal/os/IHtcAppLaunchObserver;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->unregisterAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    .end local v1           #_arg0:Lcom/android/internal/os/IHtcAppLaunchObserver;
    :sswitch_48
    const-string v9, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6a

    move v3, v8

    .line 81
    .local v3, _arg2:Z
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6c

    move v4, v8

    .line 82
    .local v4, _arg3:Z
    :goto_63
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->noteResumeActivity(ILjava/lang/String;ZZ)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    :cond_6a
    move v3, v0

    .line 79
    goto :goto_5c

    .restart local v3       #_arg2:Z
    :cond_6c
    move v4, v0

    .line 81
    goto :goto_63

    .line 88
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Z
    :sswitch_6e
    const-string v9, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_96

    move v4, v8

    .line 98
    .restart local v4       #_arg3:Z
    :goto_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_98

    move v5, v8

    .local v5, _arg4:Z
    :goto_8d
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    :cond_96
    move v4, v0

    .line 96
    goto :goto_86

    .restart local v4       #_arg3:Z
    :cond_98
    move v5, v0

    .line 98
    goto :goto_8d

    .line 105
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    :sswitch_9a
    const-string v9, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d0

    move v4, v8

    .line 115
    .restart local v4       #_arg3:Z
    :goto_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d2

    move v5, v8

    .line 117
    .restart local v5       #_arg4:Z
    :goto_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d4

    .line 118
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, _arg5:Landroid/os/Bundle;
    :goto_c7
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :cond_d0
    move v4, v0

    .line 113
    goto :goto_b2

    .restart local v4       #_arg3:Z
    :cond_d2
    move v5, v0

    .line 115
    goto :goto_b9

    .line 121
    .restart local v5       #_arg4:Z
    :cond_d4
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/os/Bundle;
    goto :goto_c7

    .line 129
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :sswitch_d6
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->notePauseActivity(ILjava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_eb
    const-string v0, "com.android.internal.app.IHtcAppUsageStatsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->noteAppDied(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_fc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_34
        0x4 -> :sswitch_48
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_d6
        0x8 -> :sswitch_eb
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method