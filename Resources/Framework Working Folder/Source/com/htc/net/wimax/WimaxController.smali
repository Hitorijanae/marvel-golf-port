.class public Lcom/htc/net/wimax/WimaxController;
.super Ljava/lang/Object;
.source "WimaxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxController$1;,
        Lcom/htc/net/wimax/WimaxController$WimaxLock;
    }
.end annotation


# static fields
.field public static final AUTH_NAI_REJECTED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

.field public static final AUTH_STATE_FAIL_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

.field public static final CURRENT_WIMAX_ENABLED_STATE:Ljava/lang/String; = "curWimaxEnabledState"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_NAPID:Ljava/lang/String; = "napId"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI_LEVEL:Ljava/lang/String; = "newRssiLevel"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NSPID:Ljava/lang/String; = "nspId"

.field public static final EXTRA_WXCM_CONNECTED:Ljava/lang/String; = "connected"

.field private static LOCAL_LOGD:Z = false

.field private static final MAX_RSSI:I = 0x20

.field private static final MIN_RSSI:I = 0x5

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.STATE_CHANGE"

.field public static final ON_BACKOFF_STATE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

.field public static final PICK_WIMAX_NETWORK_ACTION:Ljava/lang/String; = "com.htc.net.wimax.PICK_WIMAX_NETWORK"

.field public static final PREVIOUS_WIMAX_ENABLED_STATE:Ljava/lang/String; = "preWimaxEnabledState"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.RSSI_CHANGED"

.field public static final RSSI_LEVEL:I = 0x4

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.SCAN_RESULTS_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "WimaxController"

.field public static final WIMAX_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field public static final WIMAX_ENABLED_STATE_DISABLED:I = 0x1

.field public static final WIMAX_ENABLED_STATE_DISABLING:I = 0x0

.field public static final WIMAX_ENABLED_STATE_ENABLED:I = 0x3

.field public static final WIMAX_ENABLED_STATE_ENABLING:I = 0x2

.field public static final WIMAX_ENABLED_STATE_UNKNOWN:I = 0x4

.field public static final WXCM_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wimax.wxcm.CONNECTION_CHANGE"

.field public static final WXCM_ERROR_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcmError"

.field public static final WXCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcm.STATE_CHANGED"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/htc/net/wimax/IWimaxController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .registers 5
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    .line 305
    iput-object p2, p0, Lcom/htc/net/wimax/WimaxController;->mHandler:Landroid/os/Handler;

    .line 306
    sget-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v0, :cond_12

    const-string v0, "WimaxController"

    const-string v1, "WimaxController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_12
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .registers 15
    .parameter "rssi100x"
    .parameter "cinr100x"

    .prologue
    const/16 v12, -0x4b

    const/4 v7, 0x3

    const/16 v11, 0x8

    const/4 v10, 0x6

    const/4 v6, 0x0

    .line 322
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x50

    if-ne v8, v9, :cond_e2

    .line 326
    div-int/lit8 v4, p0, 0x64

    .line 327
    .local v4, rssi:I
    div-int/lit8 v2, p1, 0x64

    .line 333
    .local v2, cinr:I
    const/4 v8, 0x5

    new-array v1, v8, [[B

    new-array v8, v10, [B

    fill-array-data v8, :array_22a

    aput-object v8, v1, v6

    const/4 v8, 0x1

    new-array v9, v10, [B

    fill-array-data v9, :array_232

    aput-object v9, v1, v8

    const/4 v8, 0x2

    new-array v9, v10, [B

    fill-array-data v9, :array_23a

    aput-object v9, v1, v8

    new-array v8, v10, [B

    fill-array-data v8, :array_242

    aput-object v8, v1, v7

    const/4 v8, 0x4

    new-array v9, v10, [B

    fill-array-data v9, :array_24a

    aput-object v9, v1, v8

    .line 343
    .local v1, antennaBarMatrix_KT:[[B
    const/4 v5, 0x0

    .local v5, rssiIdx:I
    const/4 v3, 0x0

    .line 344
    .local v3, cinrIdx:I
    const/16 v8, 0xf

    if-le v2, v8, :cond_54

    const/4 v3, 0x0

    .line 352
    :goto_41
    const/16 v7, -0x37

    if-le v4, v7, :cond_7a

    const/4 v5, 0x0

    .line 358
    :goto_46
    const/4 v7, -0x1

    if-eq v3, v7, :cond_4c

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9c

    .line 359
    :cond_4c
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v5           #rssiIdx:I
    :cond_53
    :goto_53
    return v6

    .line 345
    .restart local v1       #antennaBarMatrix_KT:[[B
    .restart local v2       #cinr:I
    .restart local v3       #cinrIdx:I
    .restart local v5       #rssiIdx:I
    :cond_54
    const/16 v8, 0xf

    if-lt v8, v2, :cond_5e

    const/16 v8, 0xa

    if-le v2, v8, :cond_5e

    const/4 v3, 0x1

    goto :goto_41

    .line 346
    :cond_5e
    const/16 v8, 0xa

    if-lt v8, v2, :cond_66

    if-le v2, v7, :cond_66

    const/4 v3, 0x2

    goto :goto_41

    .line 347
    :cond_66
    if-lt v7, v2, :cond_6c

    if-lez v2, :cond_6c

    const/4 v3, 0x3

    goto :goto_41

    .line 348
    :cond_6c
    if-gtz v2, :cond_73

    const/4 v7, -0x3

    if-le v2, v7, :cond_73

    const/4 v3, 0x4

    goto :goto_41

    .line 349
    :cond_73
    const/4 v7, -0x3

    if-le v7, v2, :cond_78

    const/4 v3, 0x5

    goto :goto_41

    .line 350
    :cond_78
    const/4 v3, -0x1

    goto :goto_41

    .line 353
    :cond_7a
    const/16 v7, -0x37

    if-lt v7, v4, :cond_84

    const/16 v7, -0x41

    if-le v4, v7, :cond_84

    const/4 v5, 0x1

    goto :goto_46

    .line 354
    :cond_84
    const/16 v7, -0x41

    if-lt v7, v4, :cond_8c

    if-le v4, v12, :cond_8c

    const/4 v5, 0x2

    goto :goto_46

    .line 355
    :cond_8c
    if-lt v12, v4, :cond_94

    const/16 v7, -0x50

    if-le v4, v7, :cond_94

    const/4 v5, 0x3

    goto :goto_46

    .line 356
    :cond_94
    const/16 v7, -0x50

    if-lt v7, v4, :cond_9a

    const/4 v5, 0x4

    goto :goto_46

    .line 357
    :cond_9a
    const/4 v5, -0x1

    goto :goto_46

    .line 362
    :cond_9c
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_dc

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[KT]antennaBarMatrix_KT["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    aget-byte v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_dc
    aget-object v6, v1, v5

    aget-byte v6, v6, v3

    goto/16 :goto_53

    .line 369
    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_e2
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x51

    if-ne v8, v9, :cond_20f

    .line 375
    div-int/lit8 v4, p0, 0x64

    .line 376
    .restart local v4       #rssi:I
    div-int/lit8 v8, p1, 0xa

    int-to-float v8, v8

    const/high16 v9, 0x4120

    div-float v2, v8, v9

    .line 382
    .local v2, cinr:F
    new-array v0, v10, [[B

    new-array v8, v11, [B

    fill-array-data v8, :array_252

    aput-object v8, v0, v6

    const/4 v8, 0x1

    new-array v9, v11, [B

    fill-array-data v9, :array_25a

    aput-object v9, v0, v8

    const/4 v8, 0x2

    new-array v9, v11, [B

    fill-array-data v9, :array_262

    aput-object v9, v0, v8

    new-array v8, v11, [B

    fill-array-data v8, :array_26a

    aput-object v8, v0, v7

    const/4 v7, 0x4

    new-array v8, v11, [B

    fill-array-data v8, :array_272

    aput-object v8, v0, v7

    const/4 v7, 0x5

    new-array v8, v11, [B

    fill-array-data v8, :array_27a

    aput-object v8, v0, v7

    .line 392
    .local v0, antennaBarMatrix_KDDI:[[B
    const/4 v5, 0x0

    .restart local v5       #rssiIdx:I
    const/4 v3, 0x0

    .line 393
    .restart local v3       #cinrIdx:I
    const/16 v7, -0x5d

    if-lt v7, v4, :cond_13d

    const/4 v5, 0x0

    .line 403
    :goto_128
    const/4 v7, 0x0

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_17f

    const/4 v3, 0x0

    .line 410
    :goto_12e
    const/4 v7, -0x1

    if-eq v3, v7, :cond_134

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1c9

    .line 411
    :cond_134
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 394
    :cond_13d
    const/16 v7, -0x5c

    if-gt v7, v4, :cond_147

    const/16 v7, -0x5a

    if-gt v4, v7, :cond_147

    const/4 v5, 0x1

    goto :goto_128

    .line 395
    :cond_147
    const/16 v7, -0x59

    if-gt v7, v4, :cond_151

    const/16 v7, -0x56

    if-gt v4, v7, :cond_151

    const/4 v5, 0x2

    goto :goto_128

    .line 396
    :cond_151
    const/16 v7, -0x55

    if-gt v7, v4, :cond_15b

    const/16 v7, -0x4c

    if-gt v4, v7, :cond_15b

    const/4 v5, 0x3

    goto :goto_128

    .line 397
    :cond_15b
    if-gt v12, v4, :cond_163

    const/16 v7, -0x42

    if-gt v4, v7, :cond_163

    const/4 v5, 0x4

    goto :goto_128

    .line 398
    :cond_163
    const/16 v7, -0x41

    if-gt v7, v4, :cond_16d

    const/16 v7, -0x38

    if-gt v4, v7, :cond_16d

    const/4 v5, 0x5

    goto :goto_128

    .line 399
    :cond_16d
    const/16 v7, -0x37

    if-gt v7, v4, :cond_177

    const/16 v7, -0x2e

    if-gt v4, v7, :cond_177

    const/4 v5, 0x6

    goto :goto_128

    .line 400
    :cond_177
    const/16 v7, -0x2d

    if-gt v7, v4, :cond_17d

    const/4 v5, 0x7

    goto :goto_128

    .line 401
    :cond_17d
    const/4 v5, -0x1

    goto :goto_128

    .line 404
    :cond_17f
    const v7, 0x3dcccccd

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_18e

    const/high16 v7, 0x4080

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_18e

    const/4 v3, 0x1

    goto :goto_12e

    .line 405
    :cond_18e
    const v7, 0x40833333

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_19d

    const/high16 v7, 0x4120

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_19d

    const/4 v3, 0x2

    goto :goto_12e

    .line 406
    :cond_19d
    const v7, 0x4121999a

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1ac

    const/high16 v7, 0x4170

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1ac

    const/4 v3, 0x3

    goto :goto_12e

    .line 407
    :cond_1ac
    const v7, 0x4171999a

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1bc

    const/high16 v7, 0x41a0

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1bc

    const/4 v3, 0x4

    goto/16 :goto_12e

    .line 408
    :cond_1bc
    const v7, 0x41a0cccd

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1c6

    const/4 v3, 0x5

    goto/16 :goto_12e

    .line 409
    :cond_1c6
    const/4 v3, -0x1

    goto/16 :goto_12e

    .line 414
    :cond_1c9
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_209

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Default)[KDDI]antennaBarMatrix_KDDI["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    aget-byte v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_209
    aget-object v6, v0, v3

    aget-byte v6, v6, v5

    goto/16 :goto_53

    .line 446
    .end local v0           #antennaBarMatrix_KDDI:[[B
    .end local v2           #cinr:F
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_20f
    div-int/lit8 v4, p0, 0x64

    .line 447
    .restart local v4       #rssi:I
    const/16 v8, -0x5d

    if-lt v4, v8, :cond_53

    .line 449
    if-ge v4, v12, :cond_21a

    .line 450
    const/4 v6, 0x1

    goto/16 :goto_53

    .line 451
    :cond_21a
    const/16 v8, -0x3c

    if-ge v4, v8, :cond_221

    .line 452
    const/4 v6, 0x2

    goto/16 :goto_53

    .line 453
    :cond_221
    const/16 v8, -0x3c

    if-gt v8, v4, :cond_53

    if-gtz v4, :cond_53

    move v6, v7

    .line 454
    goto/16 :goto_53

    .line 333
    :array_22a
    .array-data 0x1
        0x4t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data

    nop

    :array_232
    .array-data 0x1
        0x4t
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_23a
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_242
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 382
    nop

    :array_252
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_25a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_262
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    :array_26a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_272
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
    .end array-data

    :array_27a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method private debugChange()V
    .registers 4

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, wimax_debug:Ljava/lang/String;
    const-string/jumbo v1, "wimax.debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_19

    :try_start_a
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19

    .line 547
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V

    .line 552
    :goto_18
    return-void

    .line 549
    :cond_19
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_18

    .line 551
    :catch_20
    move-exception v1

    goto :goto_18
.end method


# virtual methods
.method public cancelAlarmDhcpRenew()V
    .registers 2

    .prologue
    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmDhcpRenew()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 580
    :goto_5
    return-void

    .line 579
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public cancelAlarmScanRetry()V
    .registers 2

    .prologue
    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmScanRetry()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 566
    :goto_5
    return-void

    .line 565
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public connectToDcs()Z
    .registers 3

    .prologue
    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->connectToDcs()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 588
    :goto_6
    return v1

    .line 587
    :catch_7
    move-exception v0

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createWimaxLock(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxController$WimaxLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 921
    new-instance v0, Lcom/htc/net/wimax/WimaxController$WimaxLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/wimax/WimaxController$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;Lcom/htc/net/wimax/WimaxController$1;)V

    return-object v0
.end method

.method public dcIsConnected()Z
    .registers 3

    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->dcIsConnected()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 754
    :goto_6
    return v1

    .line 753
    :catch_7
    move-exception v0

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnectFromDcs()Z
    .registers 3

    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->disconnectFromDcs()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 597
    :goto_6
    return v1

    .line 596
    :catch_7
    move-exception v0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBoardName(Ljava/lang/String;)Z
    .registers 4
    .parameter "boardName"

    .prologue
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getBoardName(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 792
    :goto_6
    return v1

    .line 791
    :catch_7
    move-exception v0

    .line 792
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRfChipName(Ljava/lang/String;)Z
    .registers 4
    .parameter "rfChipName"

    .prologue
    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getRfChipName(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 801
    :goto_6
    return v1

    .line 800
    :catch_7
    move-exception v0

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxState()I
    .registers 3

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 528
    :goto_6
    return v1

    .line 527
    :catch_7
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public isBackoffState()Z
    .registers 3

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isBackoffState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 513
    :goto_6
    return v1

    .line 512
    :catch_7
    move-exception v0

    .line 513
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDeviceReady()Z
    .registers 3

    .prologue
    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isDeviceReady()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 763
    :goto_6
    return v1

    .line 762
    :catch_7
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWimaxEnabled()Z
    .registers 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public mgtSetSsStarted(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->mgtSetSsStarted(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 641
    :goto_6
    return v1

    .line 640
    :catch_7
    move-exception v0

    .line 641
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAlarmDhcpRenew(J)V
    .registers 4
    .parameter "duration"

    .prologue
    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmDhcpRenew(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 573
    :goto_5
    return-void

    .line 572
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAlarmScanRetry(J)V
    .registers 4
    .parameter "duration"

    .prologue
    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmScanRetry(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 559
    :goto_5
    return-void

    .line 558
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWimaxDunMode(Z)V
    .registers 3
    .parameter "isDunMode"

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxDunMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 507
    :goto_5
    return-void

    .line 505
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWimaxEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 468
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 469
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    .line 473
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 475
    :goto_c
    return v1

    .line 474
    :catch_d
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setWimaxEnabledPersist(ZZ)Z
    .registers 5
    .parameter "enabled"
    .parameter "persist"

    .prologue
    .line 481
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 482
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    .line 486
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 488
    :goto_c
    return v1

    .line 487
    :catch_d
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public wimaxRescan()I
    .registers 3

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 497
    :goto_6
    return v1

    .line 496
    :catch_7
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, -0x9

    goto :goto_6
.end method