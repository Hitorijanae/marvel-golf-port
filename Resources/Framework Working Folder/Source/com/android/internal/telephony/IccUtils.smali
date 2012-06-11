.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 181
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_a
    return-object v0
.end method

.method private static adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 302
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 303
    .local v1, resource:Landroid/content/res/Resources;
    const-string v0, ""

    .line 305
    .local v0, defaultCharset:Ljava/lang/String;
    const v2, 0x1040020

    :try_start_9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_c} :catch_16

    move-result-object v0

    .line 310
    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 307
    :catch_16
    move-exception v2

    goto :goto_d
.end method

.method public static adnStringFieldToStringKsc5601Support([BII)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 197
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_20

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/SimRegionCache;->getRegion()I

    move-result v4

    const/16 v5, 0x1c2

    if-ne v4, v5, :cond_29

    .line 202
    move v1, p1

    .line 203
    .local v1, len:I
    const/4 v3, -0x1

    .line 204
    .local v3, stop:B
    :goto_10
    if-ge v1, p2, :cond_19

    :try_start_12
    aget-byte v4, p0, v1

    if-eq v4, v3, :cond_19

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 207
    :cond_19
    new-instance v2, Ljava/lang/String;

    .end local v2           #s:Ljava/lang/String;
    const-string v4, "KSC5601"

    invoke-direct {v2, p0, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_20} :catch_21

    .line 215
    .end local v1           #len:I
    .end local v3           #stop:B
    :cond_20
    :goto_20
    return-object v2

    .line 208
    .restart local v1       #len:I
    .restart local v3       #stop:B
    :catch_21
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #len:I
    .end local v3           #stop:B
    :cond_29
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_20
.end method

.method private static adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;
    .registers 14
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 220
    if-nez p2, :cond_5

    .line 221
    const-string v8, ""

    .line 297
    :goto_4
    return-object v8

    .line 223
    :cond_5
    const/4 v8, 0x1

    if-lt p2, v8, :cond_45

    .line 224
    aget-byte v8, p0, p1

    const/16 v9, -0x80

    if-ne v8, v9, :cond_45

    .line 225
    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v7, v8, 0x2

    .line 226
    .local v7, ucslen:I
    const/4 v5, 0x0

    .line 229
    .local v5, ret:Ljava/lang/String;
    :try_start_13
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v8, p1, 0x1

    mul-int/lit8 v9, v7, 0x2

    const-string/jumbo v10, "utf-16be"

    invoke-direct {v6, p0, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1f} :catch_36

    .end local v5           #ret:Ljava/lang/String;
    .local v6, ret:Ljava/lang/String;
    move-object v5, v6

    .line 235
    .end local v6           #ret:Ljava/lang/String;
    .restart local v5       #ret:Ljava/lang/String;
    :goto_20
    if-eqz v5, :cond_45

    .line 238
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 239
    :goto_26
    if-lez v7, :cond_3f

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xffff

    if-ne v8, v9, :cond_3f

    .line 240
    add-int/lit8 v7, v7, -0x1

    goto :goto_26

    .line 230
    :catch_36
    move-exception v2

    .line 231
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    const-string v8, "IccUtils"

    const-string v9, "implausible UnsupportedEncodingException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 242
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_3f
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 247
    .end local v5           #ret:Ljava/lang/String;
    .end local v7           #ucslen:I
    :cond_45
    const/4 v3, 0x0

    .line 248
    .local v3, isucs2:Z
    const/4 v0, 0x0

    .line 249
    .local v0, base:C
    const/4 v4, 0x0

    .line 251
    .local v4, len:I
    const/4 v8, 0x3

    if-lt p2, v8, :cond_8f

    aget-byte v8, p0, p1

    const/16 v9, -0x7f

    if-ne v8, v9, :cond_8f

    .line 252
    add-int/lit8 v8, p1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v4, v8, 0xff

    .line 253
    add-int/lit8 v8, p2, -0x3

    if-le v4, v8, :cond_5d

    .line 254
    add-int/lit8 v4, p2, -0x3

    .line 256
    :cond_5d
    add-int/lit8 v8, p1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x7

    int-to-char v0, v8

    .line 257
    add-int/lit8 p1, p1, 0x3

    .line 258
    const/4 v3, 0x1

    .line 270
    :cond_69
    :goto_69
    if-eqz v3, :cond_c8

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v5, ret:Ljava/lang/StringBuilder;
    :goto_70
    if-lez v4, :cond_c2

    .line 276
    aget-byte v8, p0, p1

    if-gez v8, :cond_83

    .line 277
    aget-byte v8, p0, p1

    and-int/lit8 v8, v8, 0x7f

    add-int/2addr v8, v0

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 p1, p1, 0x1

    .line 279
    add-int/lit8 v4, v4, -0x1

    .line 284
    :cond_83
    const/4 v1, 0x0

    .line 285
    .local v1, count:I
    :goto_84
    if-ge v1, v4, :cond_b8

    add-int v8, p1, v1

    aget-byte v8, p0, v8

    if-ltz v8, :cond_b8

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 259
    .end local v1           #count:I
    .end local v5           #ret:Ljava/lang/StringBuilder;
    :cond_8f
    const/4 v8, 0x4

    if-lt p2, v8, :cond_69

    aget-byte v8, p0, p1

    const/16 v9, -0x7e

    if-ne v8, v9, :cond_69

    .line 260
    add-int/lit8 v8, p1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v4, v8, 0xff

    .line 261
    add-int/lit8 v8, p2, -0x4

    if-le v4, v8, :cond_a4

    .line 262
    add-int/lit8 v4, p2, -0x4

    .line 264
    :cond_a4
    add-int/lit8 v8, p1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p1, 0x3

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v0, v8

    .line 266
    add-int/lit8 p1, p1, 0x4

    .line 267
    const/4 v3, 0x1

    goto :goto_69

    .line 288
    .restart local v1       #count:I
    .restart local v5       #ret:Ljava/lang/StringBuilder;
    :cond_b8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    add-int/2addr p1, v1

    .line 292
    sub-int/2addr v4, v1

    .line 293
    goto :goto_70

    .line 295
    .end local v1           #count:I
    :cond_c2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 297
    .end local v5           #ret:Ljava/lang/StringBuilder;
    :cond_c8
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_a
    add-int v3, p1, p2

    if-ge v0, v3, :cond_14

    .line 52
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 53
    .local v2, v:I
    if-le v2, v4, :cond_19

    .line 63
    .end local v2           #v:I
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    .restart local v2       #v:I
    :cond_19
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 58
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2c

    .line 48
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 59
    :cond_2c
    if-gt v2, v4, :cond_14

    .line 60
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29
.end method

.method private static bitToRGB(I)I
    .registers 2
    .parameter "bit"

    .prologue
    .line 463
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 464
    const/4 v0, -0x1

    .line 466
    :goto_4
    return v0

    :cond_5
    const/high16 v0, -0x100

    goto :goto_4
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 5
    .parameter "bytes"

    .prologue
    .line 360
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 376
    :goto_3
    return-object v3

    .line 362
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v3, p0

    if-ge v1, v3, :cond_2f

    .line 367
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 369
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 373
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 376
    .end local v0           #b:I
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static cdmaBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 132
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 135
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 136
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 139
    :cond_16
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 74
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_9
    if-ge v0, p2, :cond_1c

    .line 76
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 77
    .local v3, v:I
    if-le v3, v5, :cond_12

    const/4 v3, 0x0

    .line 78
    :cond_12
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_21

    .line 87
    .end local v3           #v:I
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    .restart local v3       #v:I
    :cond_21
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 83
    if-le v3, v5, :cond_2a

    const/4 v3, 0x0

    .line 84
    :cond_2a
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static getCLUT([BII)[I
    .registers 12
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 558
    if-nez p0, :cond_4

    .line 559
    const/4 v4, 0x0

    .line 573
    :cond_3
    return-object v4

    .line 562
    :cond_4
    new-array v4, p2, [I

    .line 563
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 564
    .local v3, endIndex:I
    move v5, p1

    .line 565
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 566
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 568
    .local v0, alpha:I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 572
    if-ge v6, v3, :cond_3

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_e
.end method

.method public static gsmBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 110
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 113
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 114
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 117
    :cond_16
    return v0
.end method

.method static hexCharToInt(C)I
    .registers 4
    .parameter "c"

    .prologue
    .line 315
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    .line 317
    :goto_a
    return v0

    .line 316
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 317
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 319
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    .line 336
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 347
    :cond_3
    return-object v1

    .line 338
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 340
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 342
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_3

    .line 343
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 342
    add-int/lit8 v0, v0, 0x2

    goto :goto_d
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .registers 16
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 508
    rem-int v9, v10, p4

    if-eqz v9, :cond_13

    .line 509
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 541
    :goto_12
    return-object v2

    .line 514
    :cond_13
    const/4 v0, 0x1

    .line 515
    .local v0, mask:I
    packed-switch p4, :pswitch_data_4a

    .line 530
    :goto_17
    :pswitch_17
    new-array v2, p2, [I

    .line 531
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 532
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 533
    .end local p1
    .local v8, valueIndex:I
    :goto_1d
    if-ge v3, p2, :cond_47

    .line 534
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 535
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_25
    if-ge v6, v5, :cond_44

    .line 536
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 537
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 535
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_25

    .line 517
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_3a
    const/4 v0, 0x1

    .line 518
    goto :goto_17

    .line 520
    :pswitch_3c
    const/4 v0, 0x3

    .line 521
    goto :goto_17

    .line 523
    :pswitch_3e
    const/16 v0, 0xf

    .line 524
    goto :goto_17

    .line 526
    :pswitch_41
    const/16 v0, 0xff

    goto :goto_17

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_44
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 540
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_1d

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_47
    move p1, v8

    .line 541
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_12

    .line 515
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3c
        :pswitch_17
        :pswitch_3e
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_41
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .registers 8
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 546
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_12

    .line 547
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 554
    :goto_11
    return-object v0

    .line 552
    :cond_12
    new-array v0, p2, [I

    .line 554
    .local v0, resultArray:[I
    goto :goto_11
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 389
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    if-ge p2, v4, :cond_e

    .line 390
    :cond_b
    const-string v2, ""

    .line 427
    :cond_d
    :goto_d
    return-object v2

    .line 393
    :cond_e
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_4a

    .line 414
    const-string v2, ""

    .line 422
    .local v2, ret:Ljava/lang/String;
    :goto_19
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_d

    goto :goto_d

    .line 397
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_20
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 398
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 399
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 400
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 404
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_32
    :try_start_32
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_3e} :catch_3f

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 406
    .end local v2           #ret:Ljava/lang/String;
    :catch_3f
    move-exception v1

    .line 407
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 408
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 393
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_32
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"

    .prologue
    .line 437
    const/4 v8, 0x0

    .line 438
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 439
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 440
    .local v3, height:I
    mul-int v4, v10, v3

    .line 442
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 444
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 445
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 446
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 447
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_16
    if-ge v6, v4, :cond_33

    .line 449
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_44

    .line 450
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 451
    const/4 v0, 0x7

    .line 453
    :goto_21
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_16

    .line 456
    :cond_33
    if-eq v6, v4, :cond_3d

    .line 457
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_3d
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_44
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_21
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 480
    const/4 v6, 0x0

    .line 481
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 482
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 483
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 484
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 485
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 488
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 489
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_35

    .line 490
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 493
    :cond_35
    const/4 v5, 0x0

    .line 494
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_48

    .line 495
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 502
    :goto_41
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 498
    :cond_48
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_41
.end method
