.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Landroid/app/HtcIfWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_RESUME_RENDER:Ljava/lang/String; = "android.wallpaper.resume.render"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_STOP_RENDER:Ljava/lang/String; = "android.wallpaper.stop.render"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static final CUSTOMIZED_FILENAME:Ljava/lang/String; = null

.field private static final CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File; = null

.field private static DEBUG:Z = false

.field private static final PROP_CUSTOMIZED_WALLPAPER:Ljava/lang/String; = "dev.defaultwallpaper"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 66
    const-string v1, "WallpaperManager"

    sput-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 67
    sput-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 73
    const-string v1, "dev.defaultwallpaper"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_FILENAME:Ljava/lang/String;

    .line 74
    sget-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_FILENAME:Ljava/lang/String;

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_FILENAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1b
    sput-object v0, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    .line 415
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 426
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 69
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 427
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 429
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 64
    sget-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/WallpaperManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/io/File;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/WallpaperManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    return v0
.end method

.method static synthetic access$900(Landroid/app/WallpaperManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    return v0
.end method

.method static generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    .line 883
    if-nez p0, :cond_5

    move-object p0, v8

    .line 953
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 886
    .restart local p0
    :cond_5
    sget-boolean v9, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v9, :cond_2f

    sget-object v9, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateBitmap "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-eqz v11, :cond_24

    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z
    invoke-static {v8}, Landroid/app/WallpaperManager$Globals;->access$1100(Landroid/app/WallpaperManager$Globals;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_24
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_2f
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 890
    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-eqz v8, :cond_40

    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z
    invoke-static {v8}, Landroid/app/WallpaperManager$Globals;->access$1100(Landroid/app/WallpaperManager$Globals;)Z

    move-result v8

    if-nez v8, :cond_94

    .line 892
    :cond_40
    if-lez p1, :cond_50

    if-lez p2, :cond_50

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p1, :cond_94

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v8, p2, :cond_94

    .line 894
    :cond_50
    sget-boolean v8, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v8, :cond_4

    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap return w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bmw="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bmh="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 900
    :cond_94
    :try_start_94
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 901
    .local v4, newbm:Landroid/graphics/Bitmap;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 903
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 904
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 905
    .local v7, targetRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 906
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 908
    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v8

    .line 909
    .local v2, deltaw:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v8

    .line 911
    .local v1, deltah:I
    sget-boolean v8, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v8, :cond_12d

    .line 912
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "tr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "tb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap deltaw="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "deltah="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_12d
    if-gtz v2, :cond_131

    if-lez v1, :cond_183

    .line 920
    :cond_131
    if-le v2, v1, :cond_1e3

    .line 921
    int-to-float v8, p1

    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 925
    .local v6, scale:F
    :goto_139
    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 926
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 927
    sget-boolean v8, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v8, :cond_17b

    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateBitmap scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " targetRect.right="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bottom="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_17b
    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v8

    .line 929
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v8

    .line 932
    .end local v6           #scale:F
    :cond_183
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 934
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 935
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 937
    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-eqz v8, :cond_1eb

    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mRtnOpaque:Z
    invoke-static {v8}, Landroid/app/WallpaperManager$Globals;->access$1100(Landroid/app/WallpaperManager$Globals;)Z

    move-result v8

    if-eqz v8, :cond_1eb

    .line 938
    const/high16 v8, -0x100

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 939
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 944
    :goto_1ae
    sget-boolean v8, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v8, :cond_1ca

    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawBitmap start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1ca
    const/4 v8, 0x0

    invoke-virtual {v0, p0, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 946
    sget-boolean v8, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v8, :cond_1d9

    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v9, "drawBitmap end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_1d9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 949
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p0, v4

    .line 950
    goto/16 :goto_4

    .line 923
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_1e3
    int-to-float v8, p2

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .restart local v6       #scale:F
    goto/16 :goto_139

    .line 943
    .end local v6           #scale:F
    .restart local v5       #paint:Landroid/graphics/Paint;
    :cond_1eb
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_1f5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_1f5} :catch_1f6

    goto :goto_1ae

    .line 951
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltah:I
    .end local v2           #deltaw:I
    .end local v4           #newbm:Landroid/graphics/Bitmap;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v7           #targetRect:Landroid/graphics/Rect;
    :catch_1f6
    move-exception v3

    .line 952
    .local v3, e:Ljava/lang/OutOfMemoryError;
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v9, "Can\'t generate default bitmap"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 435
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .registers 3
    .parameter "looper"

    .prologue
    .line 419
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_e

    .line 421
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 423
    :cond_e
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 8
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    sget-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v2, :cond_1f

    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWallpaper @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1f
    const v2, 0x8000

    new-array v1, v2, [B

    .line 701
    .local v1, buffer:[B
    :goto_24
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_4b

    .line 702
    sget-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v2, :cond_46

    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fos.write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_46
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_24

    .line 705
    :cond_4b
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    sget-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    if-eqz v1, :cond_35

    sget-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 871
    sget-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear setStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_2a
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Landroid/app/WallpaperManager;->CUSTOMIZED_WALLPAPER_FILE:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 873
    .local v0, is:Ljava/io/FileInputStream;
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 880
    .end local v0           #is:Ljava/io/FileInputStream;
    :goto_34
    return-void

    .line 876
    :cond_35
    const v1, 0x108021b

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->setResource(I)V

    goto :goto_34
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .parameter "windowToken"

    .prologue
    .line 853
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 858
    :goto_16
    return-void

    .line 855
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public forgetLoadedWallpaper()V
    .registers 4

    .prologue
    .line 550
    sget-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forgetLoadedWallpaper  @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1e
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 552
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 539
    sget-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmap  @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1e
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredMinimumHeight()I
    .registers 3

    .prologue
    .line 746
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 749
    :goto_a
    return v1

    .line 747
    :catch_b
    move-exception v0

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDesiredMinimumWidth()I
    .registers 3

    .prologue
    .line 723
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 726
    :goto_a
    return v1

    .line 724
    :catch_b
    move-exception v0

    .line 726
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 465
    sget-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v2, :cond_1e

    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable  @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1e
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 467
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 468
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 469
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 472
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_38
    return-object v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 509
    sget-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFastDrawable  @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1f
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 511
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_30

    .line 512
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 514
    :goto_2f
    return-object v1

    :cond_30
    move-object v1, v2

    goto :goto_2f
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .prologue
    .line 441
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getOpaqueFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 446
    sget-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpaqueFastDrawable  @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1f
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    #calls: Landroid/app/WallpaperManager$Globals;->peekOpaqueWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    invoke-static {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_30

    .line 449
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 451
    :goto_2f
    return-object v1

    :cond_30
    move-object v1, v2

    goto :goto_2f
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    .prologue
    .line 561
    :try_start_0
    sget-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperInfo  @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1e
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29

    move-result-object v1

    .line 564
    :goto_28
    return-object v1

    .line 563
    :catch_29
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 485
    sget-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v2, :cond_20

    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekDrawable  @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_20
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 488
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 489
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 492
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_38
    return-object v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 525
    sget-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_20

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekFastDrawable  @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_20
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 528
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 530
    :goto_30
    return-object v1

    :cond_31
    move-object v1, v2

    goto :goto_30
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 833
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 839
    :goto_14
    return-void

    .line 836
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    :try_start_0
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_29

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_29
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_a4

    move-result-object v1

    .line 632
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_37

    .line 655
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_36
    :goto_36
    return-void

    .line 635
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_37
    const/4 v2, 0x0

    .line 637
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_38
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_6c

    .line 638
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_3d
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_48

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "compress start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_48
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 640
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_5a

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "compress end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5a} :catch_bb

    .line 647
    :cond_5a
    if-eqz v3, :cond_6a

    .line 648
    :try_start_5c
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_67

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "fos.close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_67
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6a} :catch_a4

    :cond_6a
    move-object v2, v3

    .line 651
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_36

    .line 642
    :catch_6c
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/Exception;
    :goto_6d
    :try_start_6d
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_8a

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBitmap clearWallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_8a
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IWallpaperManager;->clearWallpaper()V
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_a6

    .line 647
    if-eqz v2, :cond_36

    .line 648
    :try_start_95
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_a0

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "fos.close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_a0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_36

    .line 652
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_a4
    move-exception v4

    goto :goto_36

    .line 647
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_a6
    move-exception v4

    :goto_a7
    if-eqz v2, :cond_b7

    .line 648
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_b4

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "fos.close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_b4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 647
    :cond_b7
    throw v4
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_b8} :catch_a4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_b8
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_a7

    .line 642
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_bb
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_6d
.end method

.method public setResource(I)V
    .registers 10
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    :try_start_0
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_29

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_29
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 594
    .local v4, resources:Landroid/content/res/Resources;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_a9

    move-result-object v1

    .line 596
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_70

    .line 597
    const/4 v2, 0x0

    .line 599
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_54
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_ab
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_71

    .line 600
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_59
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_c0

    .line 607
    if-eqz v3, :cond_70

    .line 608
    :try_start_62
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_6d

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "fos.close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_6d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_70} :catch_a9

    .line 616
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_70
    :goto_70
    return-void

    .line 602
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #resources:Landroid/content/res/Resources;
    :catch_71
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/Exception;
    :goto_72
    :try_start_72
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_8f

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setResource clearWallpaper "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_8f
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->clearWallpaper()V
    :try_end_98
    .catchall {:try_start_72 .. :try_end_98} :catchall_ab

    .line 607
    if-eqz v2, :cond_70

    .line 608
    :try_start_9a
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_a5

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "fos.close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_a5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_70

    .line 613
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #resources:Landroid/content/res/Resources;
    :catch_a9
    move-exception v5

    goto :goto_70

    .line 607
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #resources:Landroid/content/res/Resources;
    :catchall_ab
    move-exception v5

    :goto_ac
    if-eqz v2, :cond_bc

    .line 608
    sget-boolean v6, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v6, :cond_b9

    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "fos.close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_b9
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 607
    :cond_bc
    throw v5
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_bd} :catch_a9

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_bd
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_ac

    .line 602
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_c0
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_72
.end method

.method public setStream(Ljava/io/InputStream;)V
    .registers 9
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    :try_start_0
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_29

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_29
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_8a

    move-result-object v1

    .line 673
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_37

    .line 694
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_36
    :goto_36
    return-void

    .line 676
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_37
    const/4 v2, 0x0

    .line 678
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_38
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_52

    .line 679
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_3d
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_a1

    .line 686
    if-eqz v3, :cond_50

    .line 687
    :try_start_42
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_4d

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "fos.close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_4d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_50} :catch_8a

    :cond_50
    move-object v2, v3

    .line 690
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_36

    .line 681
    :catch_52
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Exception;
    :goto_53
    :try_start_53
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_70

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStream clearWallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_70
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IWallpaperManager;->clearWallpaper()V
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_8c

    .line 686
    if-eqz v2, :cond_36

    .line 687
    :try_start_7b
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_86

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "fos.close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_86
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_36

    .line 691
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_8a
    move-exception v4

    goto :goto_36

    .line 686
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_8c
    move-exception v4

    :goto_8d
    if-eqz v2, :cond_9d

    .line 687
    sget-boolean v5, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_9a

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "fos.close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_9a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 686
    :cond_9d
    throw v4
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_9e} :catch_8a

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_9e
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_8d

    .line 681
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_a1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_53
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 571
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 575
    :goto_9
    return-void

    .line 572
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setWallpaperOffsetSteps(FF)V
    .registers 3
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 812
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 813
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 814
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 9
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 783
    move-object v0, p1

    .line 784
    .local v0, fWindowToken:Landroid/os/IBinder;
    move v1, p2

    .line 785
    .local v1, fXOffset:F
    move v2, p3

    .line 786
    .local v2, fYOffset:F
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v3}, Landroid/app/WallpaperManager$Globals;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/app/WallpaperManager$1;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/app/WallpaperManager$1;-><init>(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method

.method public suggestDesiredDimensions(II)V
    .registers 4
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 763
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 767
    :goto_9
    return-void

    .line 764
    :catch_a
    move-exception v0

    goto :goto_9
.end method
