.class public abstract Landroid/database/IContentObserver$Stub;
.super Landroid/os/Binder;
.source "IContentObserver.java"

# interfaces
.implements Landroid/database/IContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/IContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/IContentObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.database.IContentObserver"

.field static final TRANSACTION_onChange:I = 0x1

.field static final TRANSACTION_onChangeUri:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.database.IContentObserver"

    invoke-virtual {p0, p0, v0}, Landroid/database/IContentObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;
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
    const-string v1, "android.database.IContentObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/database/IContentObserver;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/database/IContentObserver;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/database/IContentObserver$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/database/IContentObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_44

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 45
    :sswitch_a
    const-string v3, "android.database.IContentObserver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.database.IContentObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    move v0, v2

    .line 53
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/database/IContentObserver$Stub;->onChange(Z)V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_20
    move v0, v3

    .line 52
    goto :goto_1c

    .line 58
    :sswitch_22
    const-string v4, "android.database.IContentObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 61
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 67
    .local v0, _arg0:Landroid/net/Uri;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    move v1, v2

    .line 68
    .local v1, _arg1:Z
    :goto_3c
    invoke-virtual {p0, v0, v1}, Landroid/database/IContentObserver$Stub;->onChangeUri(Landroid/net/Uri;Z)V

    goto :goto_9

    .line 64
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Z
    :cond_40
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_35

    :cond_42
    move v1, v3

    .line 67
    goto :goto_3c

    .line 41
    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
