.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final MODEL_CARKIT:I = 0xb

.field public static final MODEL_HID:I = 0xc

.field public static final MODEL_HID_MOUSE:I = 0xd

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_BPP:I = 0x3

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "classInt"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .registers 7
    .parameter "profile"

    .prologue
    const/high16 v2, 0x20

    const/4 v4, 0x3

    const/16 v3, 0x500

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 313
    if-ne p1, v0, :cond_21

    .line 314
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 423
    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    return v0

    .line 320
    :cond_18
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_ca

    move v0, v1

    .line 327
    goto :goto_17

    .line 329
    :cond_21
    if-nez p1, :cond_34

    .line 331
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 333
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_dc

    move v0, v1

    .line 340
    goto :goto_17

    :cond_32
    move v0, v1

    .line 343
    goto :goto_17

    .line 344
    :cond_34
    const/4 v2, 0x2

    if-ne p1, v2, :cond_48

    .line 345
    const/high16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 349
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_ee

    move v0, v1

    .line 365
    goto :goto_17

    .line 367
    :cond_48
    if-ne p1, v4, :cond_54

    .line 368
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_17

    .line 369
    :cond_54
    const/4 v2, 0x4

    if-eq p1, v2, :cond_5a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_6e

    .line 371
    :cond_5a
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 374
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x300

    const/16 v3, 0x300

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_17

    .line 376
    :cond_6e
    if-ne p1, v4, :cond_79

    .line 382
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    packed-switch v2, :pswitch_data_124

    move v0, v1

    .line 386
    goto :goto_17

    .line 388
    :cond_79
    const/16 v2, 0xb

    if-ne p1, v2, :cond_9b

    .line 389
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x420

    if-eq v2, v3, :cond_17

    .line 393
    iget v2, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v3, 0xffe000

    and-int/2addr v2, v3

    const/high16 v3, 0x24

    if-eq v2, v3, :cond_98

    .line 395
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_12a

    move v0, v1

    .line 400
    goto :goto_17

    :cond_98
    move v0, v1

    .line 403
    goto/16 :goto_17

    .line 404
    :cond_9b
    const/16 v2, 0xc

    if-ne p1, v2, :cond_b2

    .line 405
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-ne v2, v3, :cond_af

    .line 406
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_134

    move v0, v1

    .line 412
    goto/16 :goto_17

    :cond_af
    move v0, v1

    .line 415
    goto/16 :goto_17

    .line 416
    :cond_b2
    const/16 v2, 0xd

    if-ne p1, v2, :cond_c7

    .line 417
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-ne v2, v3, :cond_c4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x580

    if-eq v2, v3, :cond_17

    :cond_c4
    move v0, v1

    .line 421
    goto/16 :goto_17

    :cond_c7
    move v0, v1

    .line 423
    goto/16 :goto_17

    .line 320
    :sswitch_data_ca
    .sparse-switch
        0x414 -> :sswitch_17
        0x418 -> :sswitch_17
        0x420 -> :sswitch_17
        0x428 -> :sswitch_17
    .end sparse-switch

    .line 333
    :sswitch_data_dc
    .sparse-switch
        0x404 -> :sswitch_17
        0x408 -> :sswitch_17
        0x418 -> :sswitch_17
        0x420 -> :sswitch_17
    .end sparse-switch

    .line 349
    :sswitch_data_ee
    .sparse-switch
        0x100 -> :sswitch_17
        0x104 -> :sswitch_17
        0x108 -> :sswitch_17
        0x10c -> :sswitch_17
        0x110 -> :sswitch_17
        0x114 -> :sswitch_17
        0x118 -> :sswitch_17
        0x200 -> :sswitch_17
        0x204 -> :sswitch_17
        0x208 -> :sswitch_17
        0x20c -> :sswitch_17
        0x210 -> :sswitch_17
        0x214 -> :sswitch_17
    .end sparse-switch

    .line 382
    :pswitch_data_124
    .packed-switch 0x600
        :pswitch_17
    .end packed-switch

    .line 395
    :sswitch_data_12a
    .sparse-switch
        0x408 -> :sswitch_17
        0x420 -> :sswitch_17
    .end sparse-switch

    .line 406
    :sswitch_data_134
    .sparse-switch
        0x540 -> :sswitch_17
        0x580 -> :sswitch_17
        0x5c0 -> :sswitch_17
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_e

    .line 68
    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1
    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 70
    :cond_e
    return v0
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
