.class public abstract Landroid/os/IDisplayService$Stub;
.super Landroid/os/Binder;
.source "IDisplayService.java"

# interfaces
.implements Landroid/os/IDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDisplayService"

.field static final TRANSACTION_Get3DMode:I = 0x7

.field static final TRANSACTION_IsHDMIConnected:I = 0x3

.field static final TRANSACTION_IsHDMIEnable:I = 0x2

.field static final TRANSACTION_clearBitmapOnHDMI:I = 0x5

.field static final TRANSACTION_getTVMode:I = 0x9

.field static final TRANSACTION_set3DMode:I = 0x6

.field static final TRANSACTION_setHDMI:I = 0x1

.field static final TRANSACTION_setStereoDisplayMode:I = 0xb

.field static final TRANSACTION_setTVMode:I = 0x8

.field static final TRANSACTION_setTVoutMode:I = 0xa

.field static final TRANSACTION_showBitmapOnHDMI:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;
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
    const-string v1, "android.os.IDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDisplayService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/IDisplayService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/IDisplayService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_104

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    move v0, v3

    .line 54
    .local v0, _arg0:Z
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->setHDMI(ZLjava/lang/String;)I

    move-result v2

    .line 56
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 62
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_2b
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/os/IDisplayService$Stub;->IsHDMIEnable()Z

    move-result v2

    .line 64
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_3a

    move v0, v3

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v2           #_result:Z
    :sswitch_3e
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/IDisplayService$Stub;->IsHDMIConnected()Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_4d

    move v0, v3

    :cond_4d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v2           #_result:Z
    :sswitch_51
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_69
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDisplayService$Stub;->clearBitmapOnHDMI(Ljava/lang/String;)I

    move-result v2

    .line 94
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_7d
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->set3DMode(ILjava/lang/String;)I

    move-result v2

    .line 106
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_96
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/os/IDisplayService$Stub;->Get3DMode()I

    move-result v2

    .line 114
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v2           #_result:I
    :sswitch_a7
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->setTVMode(ILjava/lang/String;)I

    move-result v2

    .line 126
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_c0
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/os/IDisplayService$Stub;->getTVMode()I

    move-result v2

    .line 134
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 140
    .end local v2           #_result:I
    :sswitch_d1
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->setTVoutMode(ILjava/lang/String;)I

    move-result v2

    .line 146
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_ea
    const-string v4, "android.os.IDisplayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDisplayService$Stub;->setStereoDisplayMode(ILjava/lang/String;)I

    move-result v2

    .line 158
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_104
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_51
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_96
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_c0
        0xa -> :sswitch_d1
        0xb -> :sswitch_ea
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
