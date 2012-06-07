.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mLevelId:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 207
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;)V
    .registers 11
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "storageId"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "levelId"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 79
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 80
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 81
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    .line 82
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 83
    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 84
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;Landroid/os/storage/StorageVolume$1;)V
    .registers 12
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJ)V
    .registers 10
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 51
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 52
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 53
    const-string/jumbo v0, "none"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    .line 54
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 55
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJLjava/lang/String;)V
    .registers 10
    .parameter "path"
    .parameter "description"
    .parameter "removable"
    .parameter "emulated"
    .parameter "mtpReserveSpace"
    .parameter "allowMassStorage"
    .parameter "maxFileSize"
    .parameter "levelId"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 64
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 65
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 66
    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 67
    iput-object p9, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    .line 68
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 69
    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 70
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    .line 187
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 188
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 189
    .local v0, volume:Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 191
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isRemovable()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setStorageId(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 148
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageVolume [mAllowMassStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmulated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMtpReserveSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStorageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_3c

    :goto_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return-void

    :cond_38
    move v0, v2

    .line 236
    goto :goto_11

    :cond_3a
    move v0, v2

    .line 237
    goto :goto_19

    :cond_3c
    move v1, v2

    .line 240
    goto :goto_2a
.end method
