.class public abstract Landroid/os/IHDMIService$Stub;
.super Landroid/os/Binder;
.source "IHDMIService.java"

# interfaces
.implements Landroid/os/IHDMIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHDMIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHDMIService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHDMIService"

.field static final TRANSACTION_isHDMIConnected:I = 0x1

.field static final TRANSACTION_setActionsafeHeightRatio:I = 0x4

.field static final TRANSACTION_setActionsafeWidthRatio:I = 0x3

.field static final TRANSACTION_setHDMIOutput:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IHDMIService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHDMIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHDMIService;
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
    const-string v1, "android.os.IHDMIService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IHDMIService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/IHDMIService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/IHDMIService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IHDMIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_58

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/os/IHDMIService$Stub;->isHDMIConnected()Z

    move-result v1

    .line 52
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v1           #_result:Z
    :sswitch_23
    const-string v4, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    move v0, v3

    .line 61
    .local v0, _arg0:Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setHDMIOutput(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_36
    move v0, v2

    .line 60
    goto :goto_2f

    .line 67
    :sswitch_38
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 70
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setActionsafeWidthRatio(F)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    .end local v0           #_arg0:F
    :sswitch_48
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 79
    .restart local v0       #_arg0:F
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setActionsafeHeightRatio(F)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 41
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
