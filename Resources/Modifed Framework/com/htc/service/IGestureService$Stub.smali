.class public abstract Lcom/htc/service/IGestureService$Stub;
.super Landroid/os/Binder;
.source "IGestureService.java"

# interfaces
.implements Lcom/htc/service/IGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/IGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/IGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.IGestureService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.service.IGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/IGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/IGestureService;
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
    const-string v1, "com.htc.service.IGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/htc/service/IGestureService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/htc/service/IGestureService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/htc/service/IGestureService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/IGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 6
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
    .line 41
    packed-switch p1, :pswitch_data_10

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 45
    :pswitch_8
    const-string v0, "com.htc.service.IGestureService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_7

    .line 41
    nop

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_8
    .end packed-switch
.end method
