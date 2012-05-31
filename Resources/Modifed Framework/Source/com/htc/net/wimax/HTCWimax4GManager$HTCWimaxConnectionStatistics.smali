.class public Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
.super Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;
.source "HTCWimax4GManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/HTCWimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HTCWimaxConnectionStatistics"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field protected static mService:Lcom/htc/net/wimax/IWimaxController;


# instance fields
.field private packetErrorRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    .line 59
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>(Landroid/os/Parcel;)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/wimax/HTCWimax4GManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getPacketErrorRate()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    .line 109
    return-void
.end method

.method public refresh(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p0, p1}, Lcom/htc/net/wimax/IWimaxController;->refreshConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 77
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public resetAllStatistics(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 86
    :try_start_0
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p0, p1}, Lcom/htc/net/wimax/IWimaxController;->resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 89
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPacketErrorRate(I)V
    .registers 2
    .parameter "packetErrorRate"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->packetErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
