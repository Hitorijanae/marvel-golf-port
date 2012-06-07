.class public Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
.super Ljava/lang/Object;
.source "DLNARemotePlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public containerID:Ljava/lang/String;

.field public contentID:Ljava/lang/String;

.field public direction:I

.field public durationMillis:J

.field public endIndex:J

.field public filterCapability:I

.field public serverID:Ljava/lang/String;

.field public startIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_30} :catch_31

    .line 59
    :goto_30
    return-void

    .line 54
    :catch_31
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_30
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v1, p0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_29

    .line 84
    :goto_28
    return-void

    .line 79
    :catch_29
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_28
.end method
