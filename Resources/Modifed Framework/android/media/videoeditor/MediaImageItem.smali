.class public Landroid/media/videoeditor/MediaImageItem;
.super Landroid/media/videoeditor/MediaItem;
.source "MediaImageItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaImageItem"

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private final mAspectRatio:I

.field private mDecodedFilename:Ljava/lang/String;

.field private mDurationMs:J

.field private mFileName:Ljava/lang/String;

.field private mGeneratedClipHeight:I

.field private mGeneratedClipWidth:I

.field private final mHeight:I

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mScaledFilename:Ljava/lang/String;

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaImageItem;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 32
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "durationMs"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, p1

    .line 102
    check-cast v7, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v7}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 103
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 105
    :try_start_21
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v23

    .line 107
    .local v23, properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    packed-switch v7, :pswitch_data_238

    .line 114
    :pswitch_3a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported Input File Type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_42} :catch_42

    .line 117
    .end local v23           #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_42
    move-exception v17

    .line 118
    .local v17, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported file or file not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v23       #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :pswitch_5e
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaImageItem;->mFileName:Ljava/lang/String;

    .line 124
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v15, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    iget v7, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    .line 129
    iget v7, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    .line 130
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "decoded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".rgb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    .line 135
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    invoke-virtual {v7, v8, v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mAspectRatio:I
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_d1} :catch_1ff

    .line 140
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 141
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    .line 147
    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/videoeditor/MediaImageItem;->mAspectRatio:I

    invoke-static {v7}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v24

    .line 153
    .local v24, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v21, v24, v7

    .line 157
    .local v21, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v8, v7, :cond_10a

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v8, v7, :cond_208

    .line 161
    :cond_10a
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8, v7}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    .local v5, imageBitmap:Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "scaled"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".JPG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    .line 165
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_18c

    .line 166
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 167
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 168
    .local v18, f1:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    move-object/from16 v0, v18

    invoke-virtual {v5, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 171
    .end local v18           #f1:Ljava/io/FileOutputStream;
    :cond_18c
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    .line 172
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    .line 179
    :goto_1a4
    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    .line 180
    .local v11, newWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    move/from16 v22, v0

    .line 181
    .local v22, newHeight:I
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_233

    .line 182
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 183
    .local v19, fl:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
    .local v16, dos:Ljava/io/DataOutputStream;
    new-array v6, v11, [I

    .line 185
    .local v6, framingBuffer:[I
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 187
    .local v14, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    .line 188
    .local v13, array:[B
    const/4 v10, 0x0

    .line 189
    .local v10, tmp:I
    :goto_1df
    move/from16 v0, v22

    if-ge v10, v0, :cond_230

    .line 190
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 192
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    .line 193
    .local v20, intBuffer:Ljava/nio/IntBuffer;
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7, v11}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 194
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 195
    add-int/lit8 v10, v10, 0x1

    goto :goto_1df

    .line 136
    .end local v5           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v6           #framingBuffer:[I
    .end local v10           #tmp:I
    .end local v11           #newWidth:I
    .end local v13           #array:[B
    .end local v14           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v16           #dos:Ljava/io/DataOutputStream;
    .end local v19           #fl:Ljava/io/FileOutputStream;
    .end local v20           #intBuffer:Ljava/nio/IntBuffer;
    .end local v21           #maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v22           #newHeight:I
    .end local v24           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_1ff
    move-exception v17

    .line 137
    .local v17, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Null width and height"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v21       #maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v24       #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_208
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    .line 176
    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    .line 177
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #imageBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1a4

    .line 197
    .restart local v6       #framingBuffer:[I
    .restart local v10       #tmp:I
    .restart local v11       #newWidth:I
    .restart local v13       #array:[B
    .restart local v14       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v16       #dos:Ljava/io/DataOutputStream;
    .restart local v19       #fl:Ljava/io/FileOutputStream;
    .restart local v22       #newHeight:I
    :cond_230
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 199
    .end local v6           #framingBuffer:[I
    .end local v10           #tmp:I
    .end local v13           #array:[B
    .end local v14           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v16           #dos:Ljava/io/DataOutputStream;
    .end local v19           #fl:Ljava/io/FileOutputStream;
    :cond_233
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    return-void

    .line 107
    nop

    :pswitch_data_238
    .packed-switch 0x5
        :pswitch_5e
        :pswitch_3a
        :pswitch_3a
        :pswitch_5e
    .end packed-switch
.end method

.method private adjustEffects()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, adjustedEffects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getAllEffects()Ljava/util/List;

    move-result-object v6

    .line 437
    .local v6, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 442
    .local v1, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_51

    .line 443
    const-wide/16 v4, 0x0

    .line 452
    .local v4, effectStartTimeMs:J
    :goto_27
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_56

    .line 453
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 458
    .local v2, effectDurationMs:J
    :goto_3a
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-nez v8, :cond_4a

    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_d

    .line 460
    :cond_4a
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/media/videoeditor/Effect;->setStartTimeAndDuration(JJ)V

    .line 461
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 445
    .end local v2           #effectDurationMs:J
    .end local v4           #effectStartTimeMs:J
    :cond_51
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v4

    .restart local v4       #effectStartTimeMs:J
    goto :goto_27

    .line 455
    :cond_56
    invoke-virtual {v1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    .restart local v2       #effectDurationMs:J
    goto :goto_3a

    .line 465
    .end local v1           #effect:Landroid/media/videoeditor/Effect;
    .end local v2           #effectDurationMs:J
    .end local v4           #effectStartTimeMs:J
    :cond_5b
    return-object v0
.end method

.method private adjustOverlays()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, adjustedOverlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getAllOverlays()Ljava/util/List;

    move-result-object v7

    .line 476
    .local v7, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 481
    .local v2, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_51

    .line 482
    const-wide/16 v5, 0x0

    .line 491
    .local v5, overlayStartTimeMs:J
    :goto_27
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v8

    add-long/2addr v8, v5

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_56

    .line 492
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v8

    sub-long v3, v8, v5

    .line 497
    .local v3, overlayDurationMs:J
    :goto_3a
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_4a

    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-eqz v8, :cond_d

    .line 499
    :cond_4a
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/media/videoeditor/Overlay;->setStartTimeAndDuration(JJ)V

    .line 500
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 484
    .end local v3           #overlayDurationMs:J
    .end local v5           #overlayStartTimeMs:J
    :cond_51
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v5

    .restart local v5       #overlayStartTimeMs:J
    goto :goto_27

    .line 494
    :cond_56
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v3

    .restart local v3       #overlayDurationMs:J
    goto :goto_3a

    .line 504
    .end local v2           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v3           #overlayDurationMs:J
    .end local v5           #overlayStartTimeMs:J
    :cond_5b
    return-object v0
.end method

.method private getKenBurns(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .registers 12
    .parameter "effectKB"

    .prologue
    const/4 v9, 0x0

    .line 760
    const/4 v6, 0x0

    .local v6, width:I
    const/4 v4, 0x0

    .line 761
    .local v4, height:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 762
    .local v5, start:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 763
    .local v3, end:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 764
    .local v2, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .end local v2           #clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 780
    .restart local v2       #clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p1, v5, v3}, Landroid/media/videoeditor/EffectKenBurns;->getKenBurnsSettings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 781
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getWidth()I

    move-result v6

    .line 782
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getHeight()I

    move-result v4

    .line 783
    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-gt v7, v6, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ltz v7, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v7, v6, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ltz v7, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-gt v7, v4, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ltz v7, :cond_5e

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v4, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-gt v7, v6, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-ltz v7, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v7, v6, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-ltz v7, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-gt v7, v4, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ltz v7, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_66

    .line 788
    :cond_5e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Illegal arguments for KebBurns"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 791
    :cond_66
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int v7, v6, v7

    if-eqz v7, :cond_78

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int v7, v4, v7

    if-nez v7, :cond_ca

    :cond_78
    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int v7, v6, v7

    if-eqz v7, :cond_8a

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int v7, v4, v7

    if-nez v7, :cond_ca

    .line 793
    :cond_8a
    invoke-virtual {p0, v9}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    .line 794
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 795
    const/4 v7, 0x5

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 796
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 797
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 798
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 799
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 800
    iput-boolean v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 801
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 802
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 803
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 804
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 805
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 806
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 807
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getRenderingMode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 810
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 811
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    .line 838
    :goto_c9
    return-object v2

    .line 816
    :cond_ca
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    div-int v0, v7, v6

    .line 817
    .local v0, PanZoomXa:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    div-int v1, v7, v6

    .line 819
    .local v1, PanZoomXb:I
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 820
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getFileType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 821
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 822
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 823
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 824
    iput v9, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 825
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 826
    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 827
    iget v7, v5, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v7, v7, 0x3e8

    div-int/2addr v7, v6

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 828
    iget v7, v5, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v7, v7, 0x3e8

    div-int/2addr v7, v4

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 829
    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 830
    iget v7, v3, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v7, v7, 0x3e8

    div-int/2addr v7, v6

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 831
    iget v7, v3, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v7, v7, 0x3e8

    div-int/2addr v7, v4

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 832
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getRenderingMode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 835
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 836
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    goto :goto_c9
.end method

.method private getWidthByAspectRatioAndHeight(II)I
    .registers 7
    .parameter "aspectRatio"
    .parameter "height"

    .prologue
    const/16 v3, 0x2d0

    const/16 v2, 0x1e0

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, width:I
    packed-switch p1, :pswitch_data_48

    .line 553
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal arguments for aspectRatio"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :pswitch_10
    if-ne p2, v2, :cond_15

    .line 519
    const/16 v0, 0x2d0

    .line 558
    :cond_14
    :goto_14
    return v0

    .line 520
    :cond_15
    if-ne p2, v3, :cond_14

    .line 521
    const/16 v0, 0x438

    goto :goto_14

    .line 525
    :pswitch_1a
    const/16 v1, 0x168

    if-ne p2, v1, :cond_21

    .line 526
    const/16 v0, 0x280

    goto :goto_14

    .line 527
    :cond_21
    if-ne p2, v2, :cond_26

    .line 528
    const/16 v0, 0x356

    goto :goto_14

    .line 529
    :cond_26
    if-ne p2, v3, :cond_2b

    .line 530
    const/16 v0, 0x500

    goto :goto_14

    .line 531
    :cond_2b
    const/16 v1, 0x438

    if-ne p2, v1, :cond_14

    .line 532
    const/16 v0, 0x780

    goto :goto_14

    .line 536
    :pswitch_32
    if-ne p2, v2, :cond_36

    .line 537
    const/16 v0, 0x280

    .line 538
    :cond_36
    if-ne p2, v3, :cond_14

    .line 539
    const/16 v0, 0x3c0

    goto :goto_14

    .line 543
    :pswitch_3b
    if-ne p2, v2, :cond_14

    .line 544
    const/16 v0, 0x320

    goto :goto_14

    .line 548
    :pswitch_40
    const/16 v1, 0x90

    if-ne p2, v1, :cond_14

    .line 549
    const/16 v0, 0xb0

    goto :goto_14

    .line 516
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_32
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method private invalidateBeginTransition(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .local p2, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v5, :cond_54

    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 351
    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    .line 357
    .local v3, transitionDurationMs:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 361
    .local v0, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_16

    .line 362
    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 367
    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    :cond_2f
    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 372
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 376
    .local v2, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_3b

    .line 377
    iget-object v5, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 383
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v3           #transitionDurationMs:J
    :cond_54
    return-void
.end method

.method private invalidateEndTransition()V
    .registers 12

    .prologue
    .line 390
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v7, :cond_6c

    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 391
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    .line 397
    .local v5, transitionDurationMs:J
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 402
    .local v0, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v9

    add-long/2addr v7, v9

    iget-wide v9, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v9, v5

    cmp-long v7, v7, v9

    if-lez v7, :cond_1a

    .line 404
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 409
    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    :cond_3b
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 414
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getAllOverlays()Ljava/util/List;

    move-result-object v4

    .line 415
    .local v4, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 419
    .local v3, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v7

    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v9

    add-long/2addr v7, v9

    iget-wide v9, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v9, v5

    cmp-long v7, v7, v9

    if-lez v7, :cond_4b

    .line 421
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 427
    .end local v1           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v4           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v5           #transitionDurationMs:J
    :cond_6c
    return-void
.end method

.method public static nextPowerOf2(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 1013
    add-int/lit8 p0, p0, -0x1

    .line 1014
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1015
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1016
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1017
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1018
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1019
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 936
    .local v5, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 937
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 939
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 940
    .local v9, nativeWidth:I
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 941
    .local v8, nativeHeight:I
    const-string v13, "MediaImageItem"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 942
    const-string v13, "MediaImageItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateThumbnail: Input: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", resize to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_56
    move/from16 v0, p2

    if-gt v9, v0, :cond_5e

    move/from16 v0, p3

    if-le v8, v0, :cond_ee

    .line 949
    :cond_5e
    int-to-float v13, v9

    move/from16 v0, p2

    int-to-float v14, v0

    div-float v6, v13, v14

    .line 950
    .local v6, dx:F
    int-to-float v13, v8

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v7, v13, v14

    .line 952
    .local v7, dy:F
    cmpl-float v13, v6, v7

    if-lez v13, :cond_d0

    .line 953
    move/from16 v0, p2

    int-to-float v3, v0

    .line 955
    .local v3, bitmapWidth:F
    int-to-float v13, v8

    div-float/2addr v13, v6

    move/from16 v0, p3

    int-to-float v14, v0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_c7

    .line 956
    int-to-float v13, v8

    div-float/2addr v13, v6

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v2, v13

    .line 974
    .local v2, bitmapHeight:F
    :goto_82
    int-to-float v13, v9

    div-float/2addr v13, v3

    int-to-float v14, v8

    div-float/2addr v14, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    .line 977
    .local v11, sampleSize:I
    invoke-static {v11}, Landroid/media/videoeditor/MediaImageItem;->nextPowerOf2(I)I

    move-result v11

    .line 978
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 979
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 980
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 988
    .end local v6           #dx:F
    .end local v7           #dy:F
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #sampleSize:I
    .local v12, srcBitmap:Landroid/graphics/Bitmap;
    :goto_a1
    if-nez v12, :cond_f9

    .line 989
    const-string v13, "MediaImageItem"

    const-string v14, "generateThumbnail: Cannot decode image bytes"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot decode file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 958
    .end local v2           #bitmapHeight:F
    .end local v12           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #dx:F
    .restart local v7       #dy:F
    :cond_c7
    int-to-float v13, v8

    div-float/2addr v13, v6

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v2, v13

    .restart local v2       #bitmapHeight:F
    goto :goto_82

    .line 962
    .end local v2           #bitmapHeight:F
    .end local v3           #bitmapWidth:F
    :cond_d0
    int-to-float v13, v9

    div-float/2addr v13, v7

    move/from16 v0, p2

    int-to-float v14, v0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_e5

    .line 963
    int-to-float v13, v9

    div-float/2addr v13, v7

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v3, v13

    .line 968
    .restart local v3       #bitmapWidth:F
    :goto_e1
    move/from16 v0, p3

    int-to-float v2, v0

    .restart local v2       #bitmapHeight:F
    goto :goto_82

    .line 965
    .end local v2           #bitmapHeight:F
    .end local v3           #bitmapWidth:F
    :cond_e5
    int-to-float v13, v9

    div-float/2addr v13, v7

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v3, v13

    .restart local v3       #bitmapWidth:F
    goto :goto_e1

    .line 982
    .end local v3           #bitmapWidth:F
    .end local v6           #dx:F
    .end local v7           #dy:F
    :cond_ee
    move/from16 v0, p2

    int-to-float v3, v0

    .line 983
    .restart local v3       #bitmapWidth:F
    move/from16 v0, p3

    int-to-float v2, v0

    .line 984
    .restart local v2       #bitmapHeight:F
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_a1

    .line 996
    :cond_f9
    float-to-int v13, v3

    float-to-int v14, v2

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 999
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    .local v4, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    float-to-int v0, v3

    move/from16 v17, v0

    float-to-int v0, v2

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v15, Landroid/media/videoeditor/MediaImageItem;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1004
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1008
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 1009
    return-object v1
.end method


# virtual methods
.method generateKenburnsClip(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .registers 8
    .parameter "effectKB"

    .prologue
    const/4 v5, 0x0

    .line 848
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 849
    .local v1, editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 850
    const/4 v2, 0x0

    .line 851
    .local v2, output:Ljava/lang/String;
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 852
    .local v0, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaImageItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 853
    iget-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaImageItem;->getKenBurns(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v4

    aput-object v4, v3, v5

    .line 854
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_62

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getRegenerateClip()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 855
    iget-object v3, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3, v1, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0, v5}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    .line 858
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 859
    iput v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 861
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 862
    iget-object v3, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v3}, Landroid/media/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result v3

    iget v4, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    invoke-direct {p0, v3, v4}, Landroid/media/videoeditor/MediaImageItem;->getWidthByAspectRatioAndHeight(II)I

    move-result v3

    iput v3, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    .line 877
    :goto_4c
    iget-object v3, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getRenderingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 878
    iput v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 879
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 881
    return-object v0

    .line 865
    :cond_62
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7e

    .line 866
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 867
    const/4 v3, 0x5

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 869
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 870
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    goto :goto_4c

    .line 873
    :cond_7e
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 874
    iput v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    goto :goto_4c
.end method

.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mAspectRatio:I

    return v0
.end method

.method getDecodedImageFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 591
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    return-wide v0
.end method

.method public getFileType()I
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 209
    :cond_28
    const/4 v0, 0x5

    .line 213
    :goto_29
    return v0

    .line 210
    :cond_2a
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    const-string v1, ".PNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 211
    :cond_3e
    const/16 v0, 0x8

    goto :goto_29

    .line 213
    :cond_41
    const/16 v0, 0xff

    goto :goto_29
.end method

.method getGeneratedClipHeight()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    return v0
.end method

.method getGeneratedClipWidth()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    return v0
.end method

.method getGeneratedImageClip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 583
    invoke-super {p0}, Landroid/media/videoeditor/MediaItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    return v0
.end method

.method getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .registers 9

    .prologue
    .line 890
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 891
    .local v0, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    const/4 v4, 0x0

    .line 892
    .local v4, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    const/4 v2, 0x0

    .line 893
    .local v2, effectKB:Landroid/media/videoeditor/EffectKenBurns;
    const/4 v3, 0x0

    .line 895
    .local v3, effectKBPresent:Z
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getAllEffects()Ljava/util/List;

    move-result-object v4

    .line 896
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 897
    .local v1, effect:Landroid/media/videoeditor/Effect;
    instance-of v6, v1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v6, :cond_10

    move-object v2, v1

    .line 898
    check-cast v2, Landroid/media/videoeditor/EffectKenBurns;

    .line 899
    const/4 v3, 0x1

    .line 904
    .end local v1           #effect:Landroid/media/videoeditor/Effect;
    :cond_24
    if-eqz v3, :cond_2b

    .line 905
    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaImageItem;->generateKenburnsClip(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    .line 921
    :goto_2a
    return-object v0

    .line 910
    :cond_2b
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaImageItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 911
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 912
    const/4 v6, 0x5

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 913
    const/4 v6, 0x0

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 914
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 915
    iget-object v6, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getRenderingMode()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v6

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 917
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v6

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 918
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v6

    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    goto :goto_2a
.end method

.method public getScaledHeight()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    return v0
.end method

.method getScaledImageFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getScaledWidth()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    return v0
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 608
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_14
.end method

.method public getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .registers 27
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"
    .parameter "indices"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_26

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaImageItem;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 628
    .local v16, thumbnail:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_15
    move-object/from16 v0, p8

    array-length v3, v0

    if-ge v15, v3, :cond_5c

    .line 629
    aget v3, p8, v15

    move-object/from16 v0, p9

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v3}, Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    .line 628
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 632
    .end local v15           #i:I
    .end local v16           #thumbnail:Landroid/graphics/Bitmap;
    :cond_26
    cmp-long v3, p3, p5

    if-lez v3, :cond_32

    .line 633
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Start time is greater than end time"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 636
    :cond_32
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_42

    .line 637
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "End time is greater than file duration"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 640
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v3 .. v14}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 643
    :cond_5c
    return-void
.end method

.method public getTimelineDuration()J
    .registers 3

    .prologue
    .line 599
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    return v0
.end method

.method invalidate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 734
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 735
    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    .line 739
    :cond_1a
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 740
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    if-eq v0, v1, :cond_2e

    .line 741
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 743
    :cond_2e
    iput-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    .line 746
    :cond_30
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 747
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 748
    iput-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    .line 750
    :cond_40
    return-void
.end method

.method invalidateTransitions(JJ)V
    .registers 14
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    .line 653
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1a

    .line 654
    const-wide/16 v5, 0x0

    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 655
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 659
    :cond_1a
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_38

    .line 660
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 661
    .local v7, transitionDurationMs:J
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v0

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 663
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 666
    .end local v7           #transitionDurationMs:J
    :cond_38
    return-void
.end method

.method invalidateTransitions(JJJJ)V
    .registers 20
    .parameter "oldStartTimeMs"
    .parameter "oldDurationMs"
    .parameter "newStartTimeMs"
    .parameter "newDurationMs"

    .prologue
    .line 677
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_25

    .line 678
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 679
    .local v7, transitionDurationMs:J
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 681
    .local v10, oldOverlap:Z
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 691
    .local v9, newOverlap:Z
    if-eq v9, v10, :cond_4f

    .line 692
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 702
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_4e

    .line 703
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 704
    .restart local v7       #transitionDurationMs:J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 706
    .restart local v10       #oldOverlap:Z
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaImageItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 716
    .restart local v9       #newOverlap:Z
    if-eq v9, v10, :cond_67

    .line 717
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 726
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_4e
    :goto_4e
    return-void

    .line 693
    .restart local v7       #transitionDurationMs:J
    .restart local v9       #newOverlap:Z
    .restart local v10       #oldOverlap:Z
    :cond_4f
    if-eqz v9, :cond_25

    .line 694
    cmp-long v0, p1, p5

    if-nez v0, :cond_61

    add-long v0, p1, p3

    cmp-long v0, v0, v7

    if-lez v0, :cond_61

    add-long v0, p5, p7

    cmp-long v0, v0, v7

    if-gtz v0, :cond_25

    .line 697
    :cond_61
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_25

    .line 718
    :cond_67
    if-eqz v9, :cond_4e

    .line 719
    add-long v0, p1, p3

    add-long v2, p5, p7

    cmp-long v0, v0, v2

    if-nez v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p5, v0

    if-lez v0, :cond_4e

    .line 722
    :cond_7f
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_4e
.end method

.method public setDuration(J)V
    .registers 8
    .parameter "durationMs"

    .prologue
    const/4 v4, 0x1

    .line 292
    iget-wide v2, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    .line 340
    :goto_7
    return-void

    .line 296
    :cond_8
    iget-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 310
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->invalidateEndTransition()V

    .line 312
    iput-wide p1, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    .line 314
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->adjustTransitions()V

    .line 315
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->adjustOverlays()Ljava/util/List;

    move-result-object v1

    .line 316
    .local v1, adjustedOverlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->adjustEffects()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, adjustedEffects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaImageItem;->invalidateBeginTransition(Ljava/util/List;Ljava/util/List;)V

    .line 327
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->invalidateEndTransition()V

    .line 328
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 332
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 337
    invoke-super {p0, v4}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    .line 339
    :cond_3c
    iget-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v2}, Landroid/media/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    goto :goto_7
.end method

.method setGeneratedImageClip(Ljava/lang/String;)V
    .registers 4
    .parameter "generatedFilePath"

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/media/videoeditor/MediaItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    iput v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 573
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result v0

    iget v1, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaImageItem;->getWidthByAspectRatioAndHeight(II)I

    move-result v0

    iput v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    .line 575
    return-void
.end method
