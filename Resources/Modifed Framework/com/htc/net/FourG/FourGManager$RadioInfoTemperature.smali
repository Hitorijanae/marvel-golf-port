.class public Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;
.super Ljava/lang/Object;
.source "FourGManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioInfoTemperature"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:I

.field private isOverHeat:Z

.field private max:I

.field private min:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1038
    new-instance v0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature$1;

    invoke-direct {v0}, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature$1;-><init>()V

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 930
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    .line 932
    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    .line 933
    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    .line 935
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1050
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    .line 1055
    return-void

    .line 1054
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/FourG/FourGManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 943
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 971
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .prologue
    .line 957
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    return v0
.end method

.method public isRadioOverheat()Z
    .registers 2

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    .line 1035
    return-void

    .line 1034
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method refresh(Landroid/app/PendingIntent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 1000
    return-void
.end method

.method public resetMinMax(Landroid/app/PendingIntent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 1010
    return-void
.end method

.method public setCurrent(I)V
    .registers 2
    .parameter "current"

    .prologue
    .line 948
    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    .line 949
    return-void
.end method

.method public setMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 976
    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    .line 977
    return-void
.end method

.method public setMin(I)V
    .registers 2
    .parameter "min"

    .prologue
    .line 962
    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    .line 963
    return-void
.end method

.method public setRadioOverheat(Z)V
    .registers 2
    .parameter "isOverHeat"

    .prologue
    .line 990
    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    .line 991
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1022
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    return-void

    .line 1025
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
