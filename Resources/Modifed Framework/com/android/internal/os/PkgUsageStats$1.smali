.class final Lcom/android/internal/os/PkgUsageStats$1;
.super Ljava/lang/Object;
.source "PkgUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PkgUsageStats;
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
        "Lcom/android/internal/os/PkgUsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PkgUsageStats;
    .registers 3
    .parameter "in"

    .prologue
    .line 39
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PkgUsageStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/os/PkgUsageStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/os/PkgUsageStats;
    .registers 3
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Lcom/android/internal/os/PkgUsageStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/os/PkgUsageStats$1;->newArray(I)[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    return-object v0
.end method
