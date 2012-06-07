.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFlags:I

.field private final mTag:Ljava/lang/String;

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 227
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .parameter "tag"
    .parameter "millis"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_f
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 107
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 108
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 109
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .registers 9
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_10
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_32

    move v2, v0

    :goto_15
    if-nez p4, :cond_34

    :goto_17
    if-eq v2, v0, :cond_36

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move v2, v1

    .line 148
    goto :goto_15

    :cond_34
    move v0, v1

    goto :goto_17

    .line 152
    :cond_36
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 153
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 155
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 156
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .registers 9
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_e
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2b
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 168
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 170
    const/high16 v0, 0x1000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 171
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .parameter "tag"
    .parameter "millis"
    .parameter "text"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_e
    if-nez p4, :cond_19

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_19
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 119
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 120
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .registers 9
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_10
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_32

    move v2, v0

    :goto_15
    if-nez p4, :cond_34

    :goto_17
    if-eq v2, v0, :cond_36

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move v2, v1

    .line 131
    goto :goto_15

    :cond_34
    move v0, v1

    goto :goto_17

    .line 135
    :cond_36
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 136
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 137
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 139
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 140
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 177
    :cond_9
    :goto_9
    return-void

    .line 176
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v1, :cond_18

    .line 218
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    .local v0, is:Ljava/io/InputStream;
    :goto_b
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_17

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v0           #is:Ljava/io/InputStream;
    :cond_17
    :goto_17
    return-object v0

    .line 219
    :cond_18
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_24

    .line 220
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_b

    .line 222
    .end local v0           #is:Ljava/io/InputStream;
    :cond_24
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .registers 11
    .parameter "maxBytes"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 193
    iget v6, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_9

    .line 208
    :cond_8
    :goto_8
    return-object v5

    .line 194
    :cond_9
    iget-object v6, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v6, :cond_1c

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iget-object v7, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    array-length v7, v7

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v5, v6, v8, v7}, Ljava/lang/String;-><init>([BII)V

    goto :goto_8

    .line 196
    :cond_1c
    const/4 v2, 0x0

    .line 198
    .local v2, is:Ljava/io/InputStream;
    :try_start_1d
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_48

    move-result-object v2

    .line 199
    if-nez v2, :cond_2b

    .line 210
    if-eqz v2, :cond_8

    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v6

    goto :goto_8

    .line 200
    :cond_2b
    :try_start_2b
    new-array v0, p1, [B

    .line 201
    .local v0, buf:[B
    const/4 v4, 0x0

    .line 202
    .local v4, readBytes:I
    const/4 v3, 0x0

    .line 203
    .local v3, n:I
    :goto_2f
    if-ltz v3, :cond_3b

    add-int/2addr v4, v3

    if-ge v4, p1, :cond_3b

    .line 204
    sub-int v6, p1, v4

    invoke-virtual {v2, v0, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_2f

    .line 206
    :cond_3b
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_41} :catch_48

    .line 210
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_58

    :cond_46
    :goto_46
    move-object v5, v6

    .line 206
    goto :goto_8

    .line 207
    .end local v0           #buf:[B
    .end local v3           #n:I
    .end local v4           #readBytes:I
    :catch_48
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_8

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_29

    goto :goto_8

    .end local v1           #e:Ljava/io/IOException;
    :catchall_4f
    move-exception v5

    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    throw v5

    :catch_56
    move-exception v6

    goto :goto_55

    .restart local v0       #buf:[B
    .restart local v3       #n:I
    .restart local v4       #readBytes:I
    :catch_58
    move-exception v5

    goto :goto_46
.end method

.method public getTimeMillis()J
    .registers 3

    .prologue
    .line 183
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 246
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    .line 249
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_1a
    return-void

    .line 252
    :cond_1b
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1a
.end method
