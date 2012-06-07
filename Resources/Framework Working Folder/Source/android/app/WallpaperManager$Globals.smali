.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mRtnOpaque:Z

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .parameter "looper"

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    .line 221
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 223
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 240
    return-void
.end method

.method static synthetic access$1100(Landroid/app/WallpaperManager$Globals;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 208
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    return v0
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManager$Globals;->peekOpaqueWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 335
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v5, params:Landroid/os/Bundle;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentWallpaperLocked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_28
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 338
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_ab

    .line 339
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 340
    .local v6, width:I
    const-string/jumbo v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 341
    .local v3, height:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentWallpaperLocked w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6a} :catch_c1

    .line 344
    :cond_6a
    :try_start_6a
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_ad
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6a .. :try_end_7b} :catch_8f

    move-result-object v7

    .line 352
    :try_start_7c
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getCurrentWallpaperLocked fd.close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_8b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8e} :catch_c3
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8e} :catch_c1

    .line 362
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :goto_8e
    return-object v7

    .line 348
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_8f
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_90
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_ad

    .line 352
    :try_start_99
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "getCurrentWallpaperLocked fd.close"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_a8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ab} :catch_c5
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_ab} :catch_c1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :cond_ab
    :goto_ab
    move-object v7, v8

    .line 362
    goto :goto_8e

    .line 351
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catchall_ad
    move-exception v7

    .line 352
    :try_start_ae
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_bd

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getCurrentWallpaperLocked fd.close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_bd
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c0} :catch_c7
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_c0} :catch_c1

    .line 351
    :goto_c0
    :try_start_c0
    throw v7
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c1} :catch_c1

    .line 359
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :catch_c1
    move-exception v7

    goto :goto_ab

    .line 354
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_c3
    move-exception v8

    goto :goto_8e

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_c5
    move-exception v7

    goto :goto_ab

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_c7
    move-exception v9

    goto :goto_c0
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 367
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultWallpaperLocked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_23
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_a7

    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 371
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 372
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v2

    .line 373
    .local v2, height:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultWallpaperLocked Cust w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_69} :catch_11e

    .line 375
    :cond_69
    :try_start_69
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 376
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_10d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_69 .. :try_end_7d} :catch_8e

    move-result-object v6

    .line 381
    :try_start_7e
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getDefaultWallpaperLocked decode complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_8d} :catch_11e

    .line 411
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :cond_8d
    :goto_8d
    return-object v6

    .line 378
    .restart local v2       #height:I
    .restart local v5       #width:I
    :catch_8e
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_8f
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_10d

    .line 381
    :try_start_98
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "getDefaultWallpaperLocked decode complete"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_a7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x108021b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 388
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_11f

    .line 389
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 390
    .restart local v5       #width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v2

    .line 391
    .restart local v2       #height:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_ea

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultWallpaperLocked w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_ea} :catch_11e

    .line 394
    :cond_ea
    :try_start_ea
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 395
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_f7
    .catchall {:try_start_ea .. :try_end_f7} :catchall_141
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ea .. :try_end_f7} :catch_122

    move-result-object v6

    .line 401
    :try_start_f8
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_107

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getDefaultWallpaperLocked is.close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_107
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_10a} :catch_10b
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_10a} :catch_11e

    goto :goto_8d

    .line 403
    :catch_10b
    move-exception v7

    goto :goto_8d

    .line 381
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_10d
    move-exception v6

    :try_start_10e
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_11d

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getDefaultWallpaperLocked decode complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    throw v6
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_11e} :catch_11e

    .line 408
    .end local v2           #height:I
    .end local v5           #width:I
    :catch_11e
    move-exception v6

    :cond_11f
    :goto_11f
    move-object v6, v7

    .line 411
    goto/16 :goto_8d

    .line 397
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_122
    move-exception v1

    .line 398
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :try_start_123
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_123 .. :try_end_12c} :catchall_141

    .line 401
    :try_start_12c
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_13b

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "getDefaultWallpaperLocked is.close"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_13b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_13e} :catch_13f
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_13e} :catch_11e

    goto :goto_11f

    .line 403
    :catch_13f
    move-exception v6

    goto :goto_11f

    .line 400
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_141
    move-exception v6

    .line 401
    :try_start_142
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_151

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getDefaultWallpaperLocked is.close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_151
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_154} :catch_155
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_154} :catch_11e

    .line 400
    :goto_154
    :try_start_154
    throw v6
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_155} :catch_11e

    .line 403
    :catch_155
    move-exception v8

    goto :goto_154
.end method

.method private peekOpaqueWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 258
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap  @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_21
    monitor-enter p0

    .line 260
    :try_start_22
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_45
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    .line 262
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap set mRtnOpaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_6b
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_73

    .line 264
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 287
    :goto_72
    return-object v1

    .line 266
    :cond_73
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7e

    .line 267
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_72

    .line 288
    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_22 .. :try_end_7d} :catchall_7b

    throw v1

    .line 269
    :cond_7e
    const/4 v1, 0x0

    :try_start_7f
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_7b

    .line 271
    :try_start_81
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_81 .. :try_end_87} :catch_bd

    .line 275
    :goto_87
    if-eqz p2, :cond_cb

    .line 276
    :try_start_89
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c8

    .line 277
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    .line 279
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap set mRtnOpaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_b9
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_72

    .line 272
    :catch_bd
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    .line 282
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_c8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 285
    :cond_cb
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    .line 286
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap set mRtnOpaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_f1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_89 .. :try_end_f4} :catchall_7b

    goto/16 :goto_72
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .registers 4

    .prologue
    .line 325
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forgetLoadedWallpaper  @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_20
    monitor-enter p0

    .line 327
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forgetLoadedWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 330
    monitor-exit p0

    .line 331
    return-void

    .line 330
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onWallpaperChanged()V
    .registers 3

    .prologue
    .line 248
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onWallpaperChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_10
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 293
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekWallpaperBitmap  @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_21
    monitor-enter p0

    .line 295
    :try_start_22
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekWallpaperBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_45
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    .line 299
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekOpaqueWallpaperBitmap set mRtnOpaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6b
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_73

    .line 301
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 320
    :goto_72
    return-object v1

    .line 303
    :cond_73
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7e

    .line 304
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_72

    .line 321
    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_22 .. :try_end_7d} :catchall_7b

    throw v1

    .line 306
    :cond_7e
    const/4 v1, 0x0

    :try_start_7f
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_7b

    .line 308
    :try_start_81
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_81 .. :try_end_87} :catch_97

    .line 312
    :goto_87
    if-eqz p2, :cond_a5

    .line 313
    :try_start_89
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a2

    .line 314
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 315
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_72

    .line 309
    :catch_97
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    .line 317
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_a2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 320
    :cond_a5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_89 .. :try_end_a8} :catchall_7b

    goto :goto_72
.end method
