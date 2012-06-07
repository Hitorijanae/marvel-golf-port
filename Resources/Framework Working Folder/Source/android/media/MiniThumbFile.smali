.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 139
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 140
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .registers 6
    .parameter "uri"

    .prologue
    .line 71
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, type:Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 73
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_3f

    .line 74
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 76
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 78
    :cond_3f
    monitor-exit v3

    return-object v0

    .line 71
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .registers 8

    .prologue
    .line 101
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_58

    .line 102
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 103
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 105
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 107
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, f:Ljava/io/File;
    :try_start_42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_71
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_5b

    .line 126
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 127
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    :goto_56
    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 134
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_58
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 114
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_5b
    move-exception v1

    .line 118
    .local v1, ex:Ljava/io/IOException;
    :try_start_5c
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_71
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_7f

    .line 126
    :goto_66
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 127
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    goto :goto_56

    .line 126
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_71
    move-exception v4

    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_7e

    .line 127
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 126
    :cond_7e
    throw v4

    .line 119
    .restart local v1       #ex:Ljava/io/IOException;
    :catch_7f
    move-exception v4

    goto :goto_66
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .registers 5
    .parameter "version"

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .registers 4

    .prologue
    .line 89
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, oldPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 93
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 98
    :cond_13
    :goto_13
    return-void

    .line 94
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 64
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 65
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 64
    .end local v0           #file:Landroid/media/MiniThumbFile;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 67
    :cond_20
    :try_start_20
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 68
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    .line 145
    :try_start_5
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_12

    .line 151
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 143
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public declared-synchronized getMagic(J)J
    .registers 14
    .parameter "id"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    .line 159
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 160
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_5a

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_93

    if-eqz v0, :cond_5a

    .line 161
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 162
    .local v1, pos:J
    const/4 v7, 0x0

    .line 164
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_13
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 167
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 170
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v10, :cond_9a

    .line 171
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v9, :cond_9a

    .line 173
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_45} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_45} :catch_5d

    move-result-wide v3

    .line 184
    if-eqz v7, :cond_4b

    :try_start_48
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_93
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_98

    .line 191
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-wide v3

    .line 176
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_4d
    move-exception v6

    .line 177
    .local v6, ex:Ljava/io/IOException;
    :try_start_4e
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_8c

    .line 184
    if-eqz v7, :cond_5a

    :try_start_57
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_93
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_8a

    .line 191
    .end local v1           #pos:J
    .end local v6           #ex:Ljava/io/IOException;
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_5a
    :goto_5a
    const-wide/16 v3, 0x0

    goto :goto_4b

    .line 178
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_5d
    move-exception v6

    .line 180
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_5e
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_8c

    .line 184
    if-eqz v7, :cond_5a

    :try_start_86
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_93
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_5a

    .line 186
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_8a
    move-exception v0

    goto :goto_5a

    .line 183
    :catchall_8c
    move-exception v0

    .line 184
    if-eqz v7, :cond_92

    :try_start_8f
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_96

    .line 183
    :cond_92
    :goto_92
    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 159
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :catch_96
    move-exception v3

    goto :goto_92

    :catch_98
    move-exception v0

    goto :goto_4b

    .line 184
    :cond_9a
    if-eqz v7, :cond_5a

    :try_start_9c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_93
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_8a

    goto :goto_5a
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .registers 20
    .parameter "id"
    .parameter "data"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_dc

    if-nez v2, :cond_b

    const/16 p3, 0x0

    .line 291
    .end local p3
    :cond_9
    :goto_9
    monitor-exit p0

    return-object p3

    .line 257
    .restart local p3
    :cond_b
    :try_start_b
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_dc

    move-result-object v14

    .line 258
    .local v14, r:Ljava/io/RandomAccessFile;
    if-nez v14, :cond_14

    const/16 p3, 0x0

    goto :goto_9

    .line 260
    :cond_14
    const-wide/16 v5, 0x2710

    mul-long v3, p1, v5

    .line 261
    .local v3, pos:J
    const/4 v11, 0x0

    .line 263
    .local v11, lock:Ljava/nio/channels/FileLock;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v15

    .line 266
    .local v15, size:I
    const/16 v2, 0xd

    if-le v15, v2, :cond_e1

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 269
    .local v9, flag:B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 270
    .local v12, magic:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 272
    .local v10, length:I
    add-int/lit8 v2, v10, 0xd

    if-lt v15, v2, :cond_e1

    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v2, v10, :cond_e1

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v5, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_6e
    .catchall {:try_start_19 .. :try_end_6e} :catchall_d5
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_6e} :catch_76
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_6e} :catch_a4

    .line 285
    if-eqz v11, :cond_9

    :try_start_70
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_9

    .line 287
    :catch_74
    move-exception v2

    goto :goto_9

    .line 277
    .end local v9           #flag:B
    .end local v10           #length:I
    .end local v12           #magic:J
    .end local v15           #size:I
    :catch_76
    move-exception v8

    .line 278
    .local v8, ex:Ljava/io/IOException;
    :try_start_77
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_77 .. :try_end_9b} :catchall_d5

    .line 285
    if-eqz v11, :cond_a0

    :try_start_9d
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_d3

    .line 291
    .end local v8           #ex:Ljava/io/IOException;
    :cond_a0
    :goto_a0
    const/16 p3, 0x0

    goto/16 :goto_9

    .line 279
    :catch_a4
    move-exception v8

    .line 281
    .local v8, ex:Ljava/lang/RuntimeException;
    :try_start_a5
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_a5 .. :try_end_cd} :catchall_d5

    .line 285
    if-eqz v11, :cond_a0

    :try_start_cf
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_a0

    .line 287
    .end local v8           #ex:Ljava/lang/RuntimeException;
    :catch_d3
    move-exception v2

    goto :goto_a0

    .line 284
    :catchall_d5
    move-exception v2

    .line 285
    if-eqz v11, :cond_db

    :try_start_d8
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_df

    .line 284
    :cond_db
    :goto_db
    :try_start_db
    throw v2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    .line 254
    .end local v3           #pos:J
    .end local v11           #lock:Ljava/nio/channels/FileLock;
    .end local v14           #r:Ljava/io/RandomAccessFile;
    :catchall_dc
    move-exception v2

    monitor-exit p0

    throw v2

    .line 287
    .restart local v3       #pos:J
    .restart local v11       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #r:Ljava/io/RandomAccessFile;
    :catch_df
    move-exception v5

    goto :goto_db

    .line 285
    .restart local v15       #size:I
    :cond_e1
    if-eqz v11, :cond_a0

    :try_start_e3
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_d3

    goto :goto_a0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .registers 15
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    .line 200
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_55

    if-nez v0, :cond_9

    .line 240
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 203
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_55

    move-result-object v8

    .line 204
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_7

    .line 206
    mul-long v1, p2, v3

    .line 207
    .local v1, pos:J
    const/4 v7, 0x0

    .line 209
    .local v7, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_4f

    .line 210
    :try_start_14
    array-length v0, p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_78
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_15} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_15} :catch_7f

    const/16 v3, 0x2703

    if-le v0, v3, :cond_1f

    .line 234
    if-eqz v7, :cond_7

    :try_start_1b
    throw v7
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_55
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 236
    :catch_1d
    move-exception v0

    goto :goto_7

    .line 214
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 215
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 217
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 222
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4f
    .catchall {:try_start_1f .. :try_end_4f} :catchall_78
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_4f} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_4f} :catch_7f

    .line 234
    :cond_4f
    if-eqz v7, :cond_7

    :try_start_51
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_1d

    goto :goto_7

    .line 200
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :catch_58
    move-exception v6

    .line 225
    .local v6, ex:Ljava/io/IOException;
    :try_start_59
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    throw v6
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_78

    .line 233
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_78
    move-exception v0

    .line 234
    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_55
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_ad

    .line 233
    :cond_7e
    :goto_7e
    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_55

    .line 228
    :catch_7f
    move-exception v6

    .line 230
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_80
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_80 .. :try_end_a6} :catchall_78

    .line 234
    if-eqz v7, :cond_7

    :try_start_a8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_55
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_1d

    goto/16 :goto_7

    .line 236
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_ad
    move-exception v3

    goto :goto_7e
.end method
