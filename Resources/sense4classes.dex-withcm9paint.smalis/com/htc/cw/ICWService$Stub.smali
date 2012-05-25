.class public abstract Lcom/htc/cw/ICWService$Stub;
.super Landroid/os/Binder;
.source "ICWService.java"

# interfaces
.implements Lcom/htc/cw/ICWService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cw/ICWService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cw/ICWService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.cw.ICWService"

.field static final TRANSACTION_bye:I = 0x5

.field static final TRANSACTION_invite:I = 0x4

.field static final TRANSACTION_queryCWState:I = 0x6

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_registerExpire:I = 0x2

.field static final TRANSACTION_unRegister:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.cw.ICWService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/cw/ICWService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/cw/ICWService;
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
    const-string v1, "com.htc.cw.ICWService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/htc/cw/ICWService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/htc/cw/ICWService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/htc/cw/ICWService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/cw/ICWService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_5c

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 42
    :sswitch_9
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->register()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    :sswitch_1b
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->registerExpire()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 61
    :sswitch_27
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->unRegister()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    :sswitch_33
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->invite()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 75
    :sswitch_3f
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->bye()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 82
    :sswitch_4b
    const-string v2, "com.htc.cw.ICWService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/cw/ICWService$Stub;->queryCWState()I

    move-result v0

    .line 84
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x4 -> :sswitch_33
        0x5 -> :sswitch_3f
        0x6 -> :sswitch_4b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
