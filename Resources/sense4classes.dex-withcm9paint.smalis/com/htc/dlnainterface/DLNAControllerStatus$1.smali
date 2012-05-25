.class final Lcom/htc/dlnainterface/DLNAControllerStatus$1;
.super Ljava/lang/Object;
.source "DLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/DLNAControllerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/dlnainterface/DLNAControllerStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    .registers 3
    .parameter "in"

    .prologue
    .line 37
    new-instance v0, Lcom/htc/dlnainterface/DLNAControllerStatus;

    invoke-direct {v0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/dlnainterface/DLNAControllerStatus;
    .registers 3
    .parameter "size"

    .prologue
    .line 41
    new-array v0, p1, [Lcom/htc/dlnainterface/DLNAControllerStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;->newArray(I)[Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method
