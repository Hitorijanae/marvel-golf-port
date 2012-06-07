.class public Landroid/app/ActivityManager$RunningTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningTaskInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public description:Ljava/lang/CharSequence;

.field public id:I

.field public numActivities:I

.field public numRunning:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 478
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 442
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 487
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 488
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 489
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 466
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 467
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 469
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 473
    :goto_22
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 476
    return-void

    .line 471
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_22
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 451
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 452
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    .line 453
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 458
    :goto_1d
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 460
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    return-void

    .line 456
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d
.end method
