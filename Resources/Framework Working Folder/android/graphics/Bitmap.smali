.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/tracker/ObjectTracker$Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$BitmapStackTrace;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static sBitmapSize:I

.field private static volatile sDefaultDensity:I

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;

.field private static sStackTraces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap$BitmapStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static sZygoteBitmapSize:I


# instance fields
.field private mBitmapSize:I

.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private mInUse:Z

.field private final mIsMutable:Z

.field private mIsPreloading:Z

.field private mIsPurgeable:Z

.field private mIsRestorable:Z

.field public final mNativeBitmap:I

.field private mNativeBitmapFreed:Z

.field private mNinePatchChunk:[B

.field private mPixelsIsAllocated:Z

.field private mRecycled:Z

.field private mRestorePolicyInfo:Ljava/lang/String;

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 92
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    .line 102
    sput v1, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 103
    sput v1, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    .line 1413
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .registers 13
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "density"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v4, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 79
    iput v4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 83
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    sput v4, Landroid/graphics/Bitmap;->sDefaultDensity:I

    iput v4, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 91
    iput-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 95
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 96
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    .line 97
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    .line 99
    iput-object v5, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    .line 101
    iput v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    .line 112
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 114
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsPurgeable:Z

    .line 118
    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 274
    if-nez p1, :cond_2f

    .line 275
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "internal error: native bitmap is 0"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_2f
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 280
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 281
    new-instance v4, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v4, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 283
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 284
    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 285
    if-ltz p5, :cond_42

    .line 286
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 290
    :cond_42
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_100

    .line 291
    :cond_4e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmapSize()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    if-le v4, v5, :cond_100

    .line 292
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 293
    .local v1, elems:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 294
    .local v3, items:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v4, " Bytes, Width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v4, " , Height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v4, " , Hash code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v4, "\n This bitmap was created in:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 305
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b5
    array-length v4, v1

    if-ge v2, v4, :cond_c5

    .line 306
    add-int/lit8 v4, v2, 0x1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 308
    :cond_c5
    new-instance v4, Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/Bitmap$BitmapStackTrace;-><init>(Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 309
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 310
    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 311
    :try_start_e2
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v4, :cond_ed

    .line 312
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    .line 313
    :cond_ed
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v6, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_12c

    .line 317
    :cond_f5
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v4, :cond_100

    .line 318
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 323
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #elems:[Ljava/lang/StackTraceElement;
    .end local v2           #i:I
    .end local v3           #items:[Ljava/lang/String;
    :cond_100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    .line 324
    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 325
    :try_start_10e
    iget-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v4, :cond_11c

    .line 326
    sget v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v4, v6

    sput v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 327
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 329
    :cond_11c
    monitor-exit v5
    :try_end_11d
    .catchall {:try_start_10e .. :try_end_11d} :catchall_12f

    .line 330
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget v5, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapSize(I)V

    .line 331
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v5, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 334
    return-void

    .line 314
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #elems:[Ljava/lang/StackTraceElement;
    .restart local v2       #i:I
    .restart local v3       #items:[Ljava/lang/String;
    :catchall_12c
    move-exception v4

    :try_start_12d
    monitor-exit v5
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw v4

    .line 329
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #elems:[Ljava/lang/StackTraceElement;
    .end local v2           #i:I
    .end local v3           #items:[Ljava/lang/String;
    :catchall_12f
    move-exception v4

    :try_start_130
    monitor-exit v5
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v4
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$420(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sub-int/2addr v0, p0

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    return v0
.end method

.method static synthetic access$500(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1308
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_12

    .line 1310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_21

    .line 1313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_21
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "offset"
    .parameter "stride"
    .parameter "pixels"

    .prologue
    .line 1331
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1332
    if-gez p3, :cond_e

    .line 1333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1335
    :cond_e
    if-gez p4, :cond_19

    .line 1336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1338
    :cond_19
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2a

    .line 1339
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1342
    :cond_2a
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3b

    .line 1343
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    :cond_3b
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_49

    .line 1347
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    :cond_49
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1350
    .local v0, lastScanline:I
    array-length v1, p7

    .line 1351
    .local v1, length:I
    if-ltz p5, :cond_5b

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5b

    if-ltz v0, :cond_5b

    add-int v2, v0, p3

    if-le v2, v1, :cond_61

    .line 1354
    :cond_5b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1356
    :cond_61
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .registers 3
    .parameter "errorMessage"

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_a

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_a
    return-void
.end method

.method private static checkWidthHeight(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 529
    if-gtz p0, :cond_b

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_b
    if-gtz p1, :cond_16

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_16
    return-void
.end method

.method private static checkXYSign(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 514
    if-gez p0, :cond_b

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_b
    if-gez p1, :cond_16

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_16
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 897
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    .line 914
    if-lez p0, :cond_4

    if-gtz p1, :cond_d

    .line 915
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_d
    if-nez p2, :cond_17

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 923
    .local v7, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p2, v0, :cond_35

    if-nez p3, :cond_35

    .line 924
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 925
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p3}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 932
    :cond_35
    return-object v7
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 757
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 773
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 876
    if-eqz p5, :cond_f

    .line 877
    iget v5, p5, Landroid/graphics/Matrix;->native_instance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 884
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_e
    return-object v7

    .line 880
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_f
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_e
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 956
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 957
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_11

    .line 958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_11
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p2

    add-int v7, p1, v0

    .line 961
    .local v7, lastScanline:I
    array-length v8, p0

    .line 962
    .local v8, length:I
    if-ltz p1, :cond_23

    add-int v0, p1, p3

    if-gt v0, v8, :cond_23

    if-ltz v7, :cond_23

    add-int v0, v7, p3

    if-le v0, v8, :cond_29

    .line 964
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 966
    :cond_29
    if-lez p3, :cond_2d

    if-gtz p4, :cond_36

    .line 967
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_36
    iget v5, p5, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 989
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 712
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 713
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 714
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v5, v0, v2

    .line 715
    .local v5, sx:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v6, v0, v2

    .local v6, sy:F
    move-object v0, p0

    move v2, v1

    move v7, p3

    .line 744
    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 748
    .local v8, b:Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private static dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .registers 10
    .parameter "stackTrace"
    .parameter "unrecycled"

    .prologue
    .line 1530
    if-eqz p1, :cond_2f

    .line 1531
    const-string v5, "Bitmap"

    const-string v6, "Detect unrecycled bitmap.\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :goto_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v2

    .line 1535
    .local v2, items:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v3, :cond_37

    aget-object v4, v0, v1

    .line 1536
    .local v4, str:Ljava/lang/String;
    const-string v5, "Bitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1533
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #items:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_2f
    const-string v5, "Bitmap"

    const-string v6, "Detect out of memory. Dump bitmap stack trace\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1537
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #items:[Ljava/lang/String;
    .restart local v3       #len$:I
    :cond_37
    const-string v5, "Bitmap"

    const-string v6, "_"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void
.end method

.method public static dumpStackTrace(Ljava/io/PrintWriter;)V
    .registers 11
    .parameter "pw"

    .prologue
    .line 1562
    sget-object v8, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1563
    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v7, :cond_e

    .line 1564
    const-string v7, "      None"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    monitor-exit v8

    .line 1575
    :goto_d
    return-void

    .line 1567
    :cond_e
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1568
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1569
    .local v5, stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    invoke-virtual {v5}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v3

    .line 1570
    .local v3, items:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v4, :cond_49

    aget-object v6, v0, v2

    .line 1571
    .local v6, str:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1572
    .end local v6           #str:Ljava/lang/String;
    :cond_49
    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    .line 1574
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    :catchall_4f
    move-exception v7

    monitor-exit v8
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v7

    :cond_52
    :try_start_52
    monitor-exit v8
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    goto :goto_d
.end method

.method private static dumpStackTraces()V
    .registers 4

    .prologue
    .line 1545
    const-string v2, "Bitmap"

    const-string v3, "dumpStackTraces"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1547
    :try_start_a
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v2, :cond_10

    .line 1548
    monitor-exit v3

    .line 1554
    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    return-void

    .line 1549
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_10
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1550
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1551
    .local v1, stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    goto :goto_1b

    .line 1553
    .end local v1           #stackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw v2

    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    goto :goto_f
.end method

.method public static freeNativeBitmap(Landroid/graphics/Bitmap;)V
    .registers 1
    .parameter "bitmap"

    .prologue
    .line 436
    if-nez p0, :cond_3

    .line 439
    :goto_2
    return-void

    .line 438
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    goto :goto_2
.end method

.method static getDefaultDensity()I
    .registers 1

    .prologue
    .line 225
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_7

    .line 226
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 229
    :goto_6
    return v0

    .line 228
    :cond_7
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 229
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_6
.end method

.method public static getTotalBitmapSize()I
    .registers 3

    .prologue
    .line 108
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sget v2, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 110
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeGetStreamLength(I)I
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)V
.end method

.method private static native nativeReleasePixel(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .registers 5
    .parameter "size"
    .parameter "sdensity"
    .parameter "tdensity"

    .prologue
    .line 1178
    if-eqz p1, :cond_4

    if-ne p1, p2, :cond_5

    .line 1183
    .end local p0
    :cond_4
    :goto_4
    return p0

    .restart local p0
    :cond_5
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_4
.end method

.method public static setDefaultDensity(I)V
    .registers 1
    .parameter "density"

    .prologue
    .line 221
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 222
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .registers 7
    .parameter "format"
    .parameter "quality"
    .parameter "stream"

    .prologue
    .line 1038
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1040
    if-nez p3, :cond_d

    .line 1041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1043
    :cond_d
    if-ltz p2, :cond_13

    const/16 v0, 0x64

    if-le p2, v0, :cond_1c

    .line 1044
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_1c
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z
    .registers 16
    .parameter "format"
    .parameter "quality"
    .parameter "stream"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 1052
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1054
    if-nez p3, :cond_d

    .line 1055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1057
    :cond_d
    if-ltz p2, :cond_13

    const/16 v0, 0x64

    if-le p2, v0, :cond_1c

    .line 1058
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v0, p1, :cond_28

    .line 1062
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must be PNG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_28
    array-length v0, p5

    if-le p6, v0, :cond_34

    .line 1066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_34
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_43

    .line 1070
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chung tag\'s length must be 4.Otherwise the PC\'s imageviewer can\'t see it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 1074
    const/4 v8, 0x0

    .line 1076
    .local v8, result:Z
    :try_start_47
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v4, v2, [B

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_5c

    move-result v8

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    .line 1081
    return v8

    .line 1079
    :catchall_5c
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mInUse:Z

    throw v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;[BI)Z
    .registers 18
    .parameter "format"
    .parameter "quality"
    .parameter "szAbolutePath"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 1085
    const/4 v10, 0x0

    .line 1086
    .local v10, outStream:Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 1087
    .local v7, bRes:Z
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v9, file:Ljava/io/File;
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_27

    .line 1091
    .end local v10           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_c
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z

    move-result v7

    .line 1092
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1093
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1094
    const-string v0, "Bitmap"

    const-string v1, "Save Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_31

    .line 1099
    :goto_26
    return v7

    .line 1095
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    :catch_27
    move-exception v8

    move-object v3, v10

    .line 1096
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    .local v8, e:Ljava/lang/Exception;
    :goto_29
    const-string v0, "Bitmap"

    const-string v1, "Error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 1095
    .end local v8           #e:Ljava/lang/Exception;
    :catch_31
    move-exception v8

    goto :goto_29
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "config"
    .parameter "isMutable"

    .prologue
    .line 692
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 693
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 695
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 697
    :cond_13
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .registers 10
    .parameter "src"

    .prologue
    .line 655
    const-string v6, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v6}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 659
    .local v4, elements:I
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_22

    .line 660
    const/4 v5, 0x0

    .line 669
    .local v5, shift:I
    :goto_e
    int-to-long v6, v4

    shl-long v2, v6, v5

    .line 670
    .local v2, bufferBytes:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v0, v6

    .line 672
    .local v0, bitmapBytes:J
    cmp-long v6, v2, v0

    if-gez v6, :cond_37

    .line 673
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 661
    .end local v0           #bitmapBytes:J
    .end local v2           #bufferBytes:J
    .end local v5           #shift:I
    :cond_22
    instance-of v6, p1, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_28

    .line 662
    const/4 v5, 0x1

    .restart local v5       #shift:I
    goto :goto_e

    .line 663
    .end local v5           #shift:I
    :cond_28
    instance-of v6, p1, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2e

    .line 664
    const/4 v5, 0x2

    .restart local v5       #shift:I
    goto :goto_e

    .line 666
    .end local v5           #shift:I
    :cond_2e
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported Buffer subclass"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 676
    .restart local v0       #bitmapBytes:J
    .restart local v2       #bufferBytes:J
    .restart local v5       #shift:I
    :cond_37
    iget v6, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v6, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 677
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .parameter "dst"

    .prologue
    .line 621
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 623
    .local v2, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_1d

    .line 624
    const/4 v6, 0x0

    .line 633
    .local v6, shift:I
    :goto_9
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 634
    .local v0, bufferSize:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 636
    .local v3, pixelSize:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_32

    .line 637
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 625
    .end local v0           #bufferSize:J
    .end local v3           #pixelSize:J
    .end local v6           #shift:I
    :cond_1d
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_23

    .line 626
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_9

    .line 627
    .end local v6           #shift:I
    :cond_23
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_29

    .line 628
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_9

    .line 630
    .end local v6           #shift:I
    :cond_29
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 640
    .restart local v0       #bufferSize:J
    .restart local v3       #pixelSize:J
    .restart local v6       #shift:I
    :cond_32
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 643
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 644
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 645
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 646
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1437
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .registers 4
    .parameter "c"

    .prologue
    .line 1246
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_13
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 1251
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1460
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "paint"
    .parameter "offsetXY"

    .prologue
    .line 1489
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1490
    if-eqz p1, :cond_19

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1491
    .local v1, nativePaint:I
    :goto_9
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1492
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1b

    .line 1493
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1490
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #nativePaint:I
    :cond_19
    const/4 v1, 0x0

    goto :goto_9

    .line 1495
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #nativePaint:I
    :cond_1b
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1496
    return-object v0
.end method

.method public freeNativeBitmap()V
    .registers 6

    .prologue
    .line 442
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v2, :cond_38

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v2, :cond_38

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v2, :cond_38

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mInUse:Z

    if-nez v2, :cond_38

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 453
    .local v0, startTime:J
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->nativeReleasePixel(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 456
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 458
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 459
    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 460
    :try_start_28
    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_37

    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v2, :cond_37

    .line 461
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 462
    :cond_37
    monitor-exit v3

    .line 473
    .end local v0           #startTime:J
    :cond_38
    return-void

    .line 462
    .restart local v0       #startTime:J
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public final getByteCount()I
    .registers 3

    .prologue
    .line 1203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .prologue
    .line 1211
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .registers 2

    .prologue
    .line 494
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .registers 3

    .prologue
    .line 1117
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_d
.end method

.method public getNinePatchChunk()[B
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1264
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1266
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .registers 16
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1292
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1293
    if-eqz p6, :cond_9

    if-nez p7, :cond_a

    .line 1299
    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1296
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1297
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_9
.end method

.method public final getRowBytes()I
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .registers 4
    .parameter "targetDensity"

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .registers 5
    .parameter "canvas"

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .registers 5
    .parameter "metrics"

    .prologue
    .line 1149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .registers 4
    .parameter "targetDensity"

    .prologue
    .line 1160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .registers 5
    .parameter "canvas"

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .registers 5
    .parameter "metrics"

    .prologue
    .line 1141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 3

    .prologue
    .line 1112
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_d
.end method

.method public final hasAlpha()Z
    .registers 2

    .prologue
    .line 1223
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .registers 2

    .prologue
    .line 1107
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method isPurgeable()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsPurgeable:Z

    return v0
.end method

.method public final isRecycled()Z
    .registers 2

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method isRestorable()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    return v0
.end method

.method final ni()I
    .registers 2

    .prologue
    .line 1721
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .registers 2

    .prologue
    .line 1520
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1521
    return-void
.end method

.method public recycle()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 402
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_b
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_1a

    .line 404
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_1a
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_2a

    .line 407
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapRecycled(Z)V

    .line 408
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 411
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_58

    .line 414
    :cond_2b
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_57

    .line 416
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_32
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_4b

    .line 418
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 420
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_4b

    .line 421
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 424
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_5b

    .line 426
    iput-object v3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 427
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)V

    .line 428
    iput-object v3, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 429
    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 432
    :cond_57
    return-void

    .line 411
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 424
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 1505
    if-eq p0, p1, :cond_e

    if-eqz p1, :cond_10

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setBitmapBuffer([BI)V
    .registers 8
    .parameter "buffer"
    .parameter "decodeTime"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v0, :cond_60

    .line 127
    if-eqz p1, :cond_85

    .line 128
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v0, :cond_30

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Not Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_30
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_5e

    .line 130
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    .line 131
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 132
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_44
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_5d

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_5d

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 134
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_82

    .line 141
    :cond_5e
    iput-boolean v3, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    .line 147
    :cond_60
    :goto_60
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_63
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_b0

    if-nez p1, :cond_b0

    .line 149
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    .line 155
    :cond_73
    :goto_73
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_7e

    .line 156
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    .line 157
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_c1

    .line 158
    iput-object p1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 160
    return-void

    .line 135
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    .line 143
    :cond_85
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_ad

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Already Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_ad
    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    goto :goto_60

    .line 151
    :cond_b0
    :try_start_b0
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v0, :cond_73

    if-eqz p1, :cond_73

    .line 152
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    goto :goto_73

    .line 157
    :catchall_c1
    move-exception v0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public setDensity(I)V
    .registers 2
    .parameter "density"

    .prologue
    .line 374
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 375
    return-void
.end method

.method public setHasAlpha(Z)V
    .registers 3
    .parameter "hasAlpha"

    .prologue
    .line 1237
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 1238
    return-void
.end method

.method public setNinePatchChunk([B)V
    .registers 2
    .parameter "chunk"

    .prologue
    .line 385
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 386
    return-void
.end method

.method public setPixel(III)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "color"

    .prologue
    .line 1370
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1372
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1374
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1375
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 1376
    return-void
.end method

.method public setPixels([IIIIIII)V
    .registers 16
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1401
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1403
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1405
    :cond_11
    if-eqz p6, :cond_15

    if-nez p7, :cond_16

    .line 1411
    :cond_15
    :goto_15
    return-void

    :cond_16
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1408
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1409
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_15
.end method

.method public setPreloading(Z)V
    .registers 5
    .parameter "isPreloading"

    .prologue
    .line 198
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    .line 199
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    .line 200
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_d
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_1c

    .line 202
    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_1c
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_26

    .line 205
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    .line 207
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_31

    .line 209
    :cond_27
    if-eqz p1, :cond_30

    .line 211
    sget v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    iget v1, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v1

    sput v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    .line 213
    :cond_30
    return-void

    .line 207
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public setRestorable(Z)V
    .registers 3
    .parameter "isRestorable"

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    .line 185
    if-eqz p1, :cond_c

    .line 186
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    .line 190
    :goto_b
    return-void

    .line 188
    :cond_c
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    goto :goto_b
.end method

.method public setRestoreInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "restorePolicyInfo"

    .prologue
    .line 167
    iput-object p1, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n File: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 171
    :cond_2a
    return-void
.end method

.method public visit()V
    .registers 1

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    .line 260
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 1446
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1447
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_1a
    return-void
.end method
