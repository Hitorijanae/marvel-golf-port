.class final Landroid/net/NetworkQuotaInfo$1;
.super Ljava/lang/Object;
.source "NetworkQuotaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkQuotaInfo;
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
        "Landroid/net/NetworkQuotaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkQuotaInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 74
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkQuotaInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/NetworkQuotaInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkQuotaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkQuotaInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 78
    new-array v0, p1, [Landroid/net/NetworkQuotaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/NetworkQuotaInfo$1;->newArray(I)[Landroid/net/NetworkQuotaInfo;

    move-result-object v0

    return-object v0
.end method