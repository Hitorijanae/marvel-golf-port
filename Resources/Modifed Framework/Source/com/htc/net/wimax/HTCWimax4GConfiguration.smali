.class public Lcom/htc/net/wimax/HTCWimax4GConfiguration;
.super Lcom/htc/net/wimax/Wimax4GConfiguration;
.source "HTCWimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>()V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    return-void
.end method
