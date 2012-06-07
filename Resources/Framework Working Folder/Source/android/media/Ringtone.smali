.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDrmUri:Ljava/lang/String;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 395
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 76
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 127
    .local v11, title:Ljava/lang/String;
    if-eqz p2, :cond_55

    .line 128
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 131
    if-eqz p3, :cond_55

    .line 132
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 134
    .local v7, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v7, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, actualTitle:Ljava/lang/String;
    const/4 v10, -0x1

    .line 142
    .local v10, prefix:I
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_64

    .line 143
    const v10, 0x4040016

    .line 152
    :cond_2d
    :goto_2d
    const/4 v1, -0x1

    if-eq v10, v1, :cond_7a

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    .end local v10           #prefix:I
    :cond_55
    :goto_55
    if-nez v11, :cond_62

    .line 182
    const v1, 0x10403ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 184
    if-nez v11, :cond_62

    .line 185
    const-string v11, ""

    :cond_62
    move-object v1, v11

    .line 189
    :cond_63
    :goto_63
    return-object v1

    .line 144
    .restart local v6       #actualTitle:Ljava/lang/String;
    .restart local v7       #actualUri:Landroid/net/Uri;
    .restart local v8       #authority:Ljava/lang/String;
    .restart local v10       #prefix:I
    :cond_64
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6d

    .line 145
    const v10, 0x4040017

    goto :goto_2d

    .line 146
    :cond_6d
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2d

    .line 149
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "No prefix"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 155
    :cond_7a
    move-object v11, v6

    goto :goto_55

    .line 160
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v10           #prefix:I
    :cond_7c
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 161
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 167
    :cond_8e
    :goto_8e
    if-eqz v9, :cond_b9

    :try_start_90
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b9

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9e
    .catchall {:try_start_90 .. :try_end_9e} :catchall_c3

    move-result-object v1

    .line 174
    if-eqz v9, :cond_63

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_63

    .line 162
    :cond_a5
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 163
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_8e

    .line 171
    :cond_b9
    :try_start_b9
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c3

    move-result-object v11

    .line 174
    if-eqz v9, :cond_55

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_55

    .line 174
    :catchall_c3
    move-exception v1

    if-eqz v9, :cond_c9

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_c9
    throw v1
.end method

.method private openMediaPlayer()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 196
    :cond_9
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 197
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 198
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 217
    :goto_1b
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 218
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 219
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    return-void

    .line 199
    :cond_2f
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3d

    .line 200
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1b

    .line 201
    :cond_3d
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_49

    .line 202
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1b

    .line 203
    :cond_49
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_7d

    .line 207
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_65

    .line 208
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1b

    .line 210
    :cond_65
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1b

    .line 215
    :cond_7d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wasDRMContent(Landroid/net/Uri;)Z
    .registers 5
    .parameter "uri"

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, wasDRMContent:Z
    if-eqz p1, :cond_d

    .line 261
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 265
    .end local v0           #authority:Ljava/lang/String;
    :cond_d
    return v1
.end method

.method private wasSystemSettingsValue(Landroid/net/Uri;)Z
    .registers 5
    .parameter "uri"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, wasSystemSettingsValue:Z
    if-eqz p1, :cond_d

    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://settings/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :cond_d
    return v0
.end method


# virtual methods
.method getDrmUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 336
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "title"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "content_offset"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "content_id"

    aput-object v4, v2, v1

    const/4 v1, 0x5

    const-string v4, "content_boundary_offset"

    aput-object v4, v2, v1

    .line 345
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, res:Landroid/content/ContentResolver;
    const-string/jumbo v5, "title"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 350
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 351
    .local v11, drmUri:Ljava/lang/String;
    if-eqz v9, :cond_97

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_97

    .line 352
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 355
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 362
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    :cond_97
    if-eqz v9, :cond_9d

    .line 363
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 364
    const/4 v9, 0x0

    .line 367
    :cond_9d
    return-object v11
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 309
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v1

    .line 314
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 320
    .local v7, settingsuUri:Ljava/lang/String;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_34

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    :cond_34
    if-eqz v6, :cond_3a

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    const/4 v6, 0x0

    .line 329
    :cond_3a
    return-object v7
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 118
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_6
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 229
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 230
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasSystemSettingsValue(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 237
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 239
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/Ringtone;->getDrmUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 243
    .end local v0           #value:Ljava/lang/String;
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 244
    return-void

    .line 240
    :cond_29
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 241
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getDrmUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    goto :goto_25
.end method

.method open(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 224
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 225
    return-void
.end method

.method public play()V
    .registers 5

    .prologue
    .line 272
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7

    .line 274
    :try_start_4
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_3d

    .line 280
    :cond_7
    :goto_7
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3c

    .line 283
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playing a tone with looping : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 288
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_3c

    .line 289
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 292
    :cond_3c
    return-void

    .line 275
    :catch_3d
    move-exception v0

    .line 276
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_7
.end method

.method public setLooping(Z)V
    .registers 2
    .parameter "isLooping"

    .prologue
    .line 390
    iput-boolean p1, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 391
    return-void
.end method

.method public setStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 86
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 88
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_9

    .line 94
    :try_start_6
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 99
    :cond_9
    :goto_9
    return-void

    .line 95
    :catch_a
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 380
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 299
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 300
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 303
    :cond_11
    return-void
.end method
