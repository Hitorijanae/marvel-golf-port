.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field public final isThemeable:Z

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 586
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const/high16 v3, 0x3f80

    .line 260
    const/4 v1, 0x4

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFZ)V

    .line 264
    return-void
.end method

.method private constructor <init>(IIFFZ)V
    .registers 6
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"
    .parameter "isThemeable"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 253
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 254
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 255
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 256
    iput-boolean p5, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 16
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, compatFlags:I
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->isThemeable:Z

    iput-boolean v9, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 105
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_14

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_14

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_54

    .line 108
    :cond_14
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_3e

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 111
    .local v7, required:I
    :goto_1a
    if-nez v7, :cond_1e

    .line 112
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 114
    :cond_1e
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_41

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 116
    .local v4, compat:I
    :goto_24
    if-ge v4, v7, :cond_27

    .line 117
    move v4, v7

    .line 119
    :cond_27
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 121
    .local v6, largest:I
    const/16 v9, 0x140

    if-le v7, v9, :cond_43

    .line 128
    or-int/lit8 v5, v5, 0x4

    .line 145
    :cond_2f
    :goto_2f
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 146
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 147
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 247
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :goto_3b
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 248
    return-void

    .line 108
    :cond_3e
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_1a

    .restart local v7       #required:I
    :cond_41
    move v4, v7

    .line 114
    goto :goto_24

    .line 129
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_43
    if-eqz v6, :cond_4a

    if-le p3, v6, :cond_4a

    .line 133
    or-int/lit8 v5, v5, 0xa

    goto :goto_2f

    .line 134
    :cond_4a
    if-lt v4, p3, :cond_4f

    .line 137
    or-int/lit8 v5, v5, 0x4

    goto :goto_2f

    .line 138
    :cond_4f
    if-eqz p4, :cond_2f

    .line 141
    or-int/lit8 v5, v5, 0x8

    goto :goto_2f

    .line 154
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :cond_54
    const/4 v0, 0x2

    .line 160
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 166
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 168
    .local v2, XLARGE_SCREENS:I
    const/4 v8, 0x0

    .line 172
    .local v8, sizeInfo:I
    const/4 v3, 0x0

    .line 174
    .local v3, anyResizeable:Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_68

    .line 175
    or-int/lit8 v8, v8, 0x8

    .line 176
    const/4 v3, 0x1

    .line 177
    if-nez p4, :cond_68

    .line 181
    or-int/lit8 v8, v8, 0x22

    .line 184
    :cond_68
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_74

    .line 185
    const/4 v3, 0x1

    .line 186
    if-nez p4, :cond_74

    .line 187
    or-int/lit8 v8, v8, 0x22

    .line 190
    :cond_74
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_7d

    .line 191
    const/4 v3, 0x1

    .line 192
    or-int/lit8 v8, v8, 0x2

    .line 195
    :cond_7d
    if-eqz p4, :cond_81

    .line 200
    and-int/lit8 v8, v8, -0x3

    .line 203
    :cond_81
    or-int/lit8 v5, v5, 0x8

    .line 204
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_e6

    .line 223
    :cond_88
    :goto_88
    const/high16 v9, 0x1000

    and-int/2addr v9, p2

    if-eqz v9, :cond_ca

    .line 224
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c5

    .line 225
    and-int/lit8 v5, v5, -0x9

    .line 234
    :cond_93
    :goto_93
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_cf

    .line 235
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 236
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 237
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_3b

    .line 206
    :pswitch_a6
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_ac

    .line 207
    and-int/lit8 v5, v5, -0x9

    .line 209
    :cond_ac
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_88

    .line 210
    or-int/lit8 v5, v5, 0x4

    goto :goto_88

    .line 214
    :pswitch_b6
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_bc

    .line 215
    and-int/lit8 v5, v5, -0x9

    .line 217
    :cond_bc
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_88

    .line 218
    or-int/lit8 v5, v5, 0x4

    goto :goto_88

    .line 226
    :cond_c5
    if-nez v3, :cond_93

    .line 227
    or-int/lit8 v5, v5, 0x2

    goto :goto_93

    .line 230
    :cond_ca
    and-int/lit8 v5, v5, -0x9

    .line 231
    or-int/lit8 v5, v5, 0x4

    goto :goto_93

    .line 239
    :cond_cf
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 240
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x4320

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 242
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 243
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_3b

    .line 204
    :pswitch_data_e6
    .packed-switch 0x3
        :pswitch_b6
        :pswitch_a6
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_25

    :goto_22
    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .line 603
    return-void

    .line 602
    :cond_25
    const/4 v0, 0x0

    goto :goto_22
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 16
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 482
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 483
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 485
    .local v1, height:I
    if-ge v11, v1, :cond_45

    .line 486
    move v9, v11

    .line 487
    .local v9, shortSize:I
    move v2, v1

    .line 492
    .local v2, longSize:I
    :goto_8
    const/high16 v12, 0x43a0

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 493
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 494
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_1f

    .line 495
    const v0, 0x3fe3bbbc

    .line 497
    :cond_1f
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 499
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_48

    .line 500
    move v6, v5

    .line 501
    .local v6, newWidth:I
    move v3, v4

    .line 507
    .local v3, newHeight:I
    :goto_29
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 508
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 509
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_4b

    move v7, v10

    .line 510
    .local v7, scale:F
    :goto_36
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3e

    .line 511
    const/high16 v7, 0x3f80

    .line 514
    :cond_3e
    if-eqz p1, :cond_44

    .line 515
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 516
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 519
    :cond_44
    return v7

    .line 489
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_45
    move v9, v1

    .line 490
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_8

    .line 503
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_48
    move v6, v4

    .line 504
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_29

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_4b
    move v7, v8

    .line 509
    goto :goto_36
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "inoutConfig"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 464
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 467
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 468
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 469
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 471
    :cond_1a
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x3f00

    .line 438
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_41

    .line 441
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 447
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 448
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 449
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 450
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 451
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 452
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 453
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 454
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 457
    .end local v0           #invertedRatio:F
    :cond_40
    return-void

    .line 443
    :cond_41
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 525
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 526
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_c

    .line 533
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_b
    :goto_b
    return v3

    .line 527
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_c
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_b

    .line 528
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 529
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 530
    iget-boolean v4, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    iget-boolean v5, v2, Landroid/content/res/CompatibilityInfo;->isThemeable:Z
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_26} :catch_2a

    if-ne v4, v5, :cond_b

    .line 531
    const/4 v3, 0x1

    goto :goto_b

    .line 532
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_2a
    move-exception v1

    .line 533
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_b
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 563
    const/16 v0, 0x11

    .line 564
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 565
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 566
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 567
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 568
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_27
    add-int v0, v2, v1

    .line 569
    return v0

    .line 568
    :cond_2a
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsScreen()Z
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 540
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 544
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 546
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 549
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 552
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 555
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 579
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 582
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 583
    iget-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    return-void

    .line 583
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
