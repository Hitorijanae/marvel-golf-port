.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 338
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .registers 3
    .parameter "orig"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_9

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 53
    :goto_8
    return-void

    .line 47
    :cond_9
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 48
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1c

    .line 49
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_8

    .line 51
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_8
.end method

.method private addLocked(I)V
    .registers 6
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_12

    .line 312
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 313
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    .line 314
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 325
    :goto_11
    return-void

    .line 317
    :cond_12
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2a

    .line 318
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 319
    .local v0, newuids:[I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 323
    .end local v0           #newuids:[I
    :cond_2a
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    .line 324
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_11
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 18
    .parameter "other"
    .parameter "set"
    .parameter "returnNewbs"

    .prologue
    .line 224
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 225
    .local v0, N1:I
    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    .line 226
    .local v9, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 227
    .local v1, N2:I
    iget-object v10, p1, Landroid/os/WorkSource;->mUids:[I

    .line 232
    .local v10, uids2:[I
    const/4 v2, 0x0

    .line 233
    .local v2, changed:Z
    const/4 v5, 0x0

    .line 234
    .local v5, i1:I
    const/4 v6, 0x0

    .local v6, i2:I
    :goto_b
    if-ge v6, v1, :cond_ba

    .line 235
    if-ge v5, v0, :cond_15

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_75

    .line 237
    :cond_15
    const/4 v2, 0x1

    .line 238
    if-nez v9, :cond_36

    .line 239
    const/4 v12, 0x4

    new-array v9, v12, [I

    .line 240
    const/4 v12, 0x0

    aget v13, v10, v6

    aput v13, v9, v12

    .line 265
    :goto_20
    if-eqz p3, :cond_2f

    .line 266
    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v12, :cond_6d

    .line 267
    new-instance v12, Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 272
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    .line 273
    add-int/lit8 v5, v5, 0x1

    .line 234
    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 241
    :cond_36
    array-length v12, v9

    if-lt v5, v12, :cond_56

    .line 242
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    new-array v7, v12, [I

    .line 243
    .local v7, newuids:[I
    if-lez v5, :cond_47

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v12, v7, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    :cond_47
    if-ge v5, v0, :cond_50

    add-int/lit8 v12, v5, 0x1

    sub-int v13, v0, v5

    invoke-static {v9, v5, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_50
    move-object v9, v7

    .line 246
    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_20

    .line 248
    .end local v7           #newuids:[I
    :cond_56
    if-ge v5, v0, :cond_68

    .line 250
    sub-int v3, v0, v5

    .line 251
    .local v3, copylength:I
    add-int v4, v5, v3

    .line 252
    .local v4, finalposition:I
    array-length v12, v9

    add-int/lit8 v11, v12, -0x1

    .line 253
    .local v11, validfinalposition:I
    if-le v4, v11, :cond_63

    .line 256
    sub-int v3, v11, v5

    .line 260
    :cond_63
    add-int/lit8 v12, v5, 0x1

    invoke-static {v9, v5, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    .end local v3           #copylength:I
    .end local v4           #finalposition:I
    .end local v11           #validfinalposition:I
    :cond_68
    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_20

    .line 269
    :cond_6d
    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2f

    .line 275
    :cond_75
    if-nez p2, :cond_82

    .line 278
    :cond_77
    add-int/lit8 v5, v5, 0x1

    .line 279
    if-ge v5, v0, :cond_33

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_77

    goto :goto_33

    .line 282
    :cond_82
    move v8, v5

    .line 283
    .local v8, start:I
    :goto_83
    if-ge v5, v0, :cond_a3

    aget v12, v10, v6

    aget v13, v9, v5

    if-le v12, v13, :cond_a3

    .line 284
    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v12, :cond_9b

    .line 285
    new-instance v12, Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 289
    :goto_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 287
    :cond_9b
    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_98

    .line 291
    :cond_a3
    if-ge v8, v5, :cond_ae

    .line 292
    sub-int v12, v5, v8

    invoke-static {v9, v5, v9, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    sub-int v12, v5, v8

    sub-int/2addr v0, v12

    .line 294
    move v5, v8

    .line 297
    :cond_ae
    if-ge v5, v0, :cond_33

    aget v12, v10, v5

    aget v13, v9, v5

    if-ne v12, v13, :cond_33

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_33

    .line 304
    .end local v8           #start:I
    :cond_ba
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 305
    iput-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    .line 307
    return v2
.end method


# virtual methods
.method public add(I)Z
    .registers 6
    .parameter "uid"

    .prologue
    .line 171
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 172
    :try_start_3
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 173
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 174
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 155
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 156
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 157
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .registers 6
    .parameter "uid"

    .prologue
    .line 179
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 180
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 181
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 182
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 183
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5
    .parameter "other"

    .prologue
    .line 162
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 163
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 164
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 165
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 81
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .registers 9
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    .line 89
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 90
    .local v0, N:I
    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_8

    .line 100
    :cond_7
    :goto_7
    return v4

    .line 93
    :cond_8
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 94
    .local v2, uids1:[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 95
    .local v3, uids2:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 96
    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_7

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 100
    :cond_18
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public get(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .registers 14
    .parameter "other"

    .prologue
    .line 188
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 189
    .local v0, N1:I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 190
    .local v7, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 191
    .local v1, N2:I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 192
    .local v8, uids2:[I
    const/4 v2, 0x0

    .line 193
    .local v2, changed:Z
    const/4 v5, 0x0

    .line 194
    .local v5, i1:I
    const/4 v6, 0x0

    .local v6, i2:I
    :goto_b
    if-ge v6, v1, :cond_37

    if-ge v5, v0, :cond_37

    .line 195
    aget v10, v8, v6

    aget v11, v7, v5

    if-ne v10, v11, :cond_29

    .line 196
    add-int/lit8 v0, v0, -0x1

    .line 197
    if-ge v5, v0, :cond_29

    .line 199
    sub-int v3, v0, v5

    .line 200
    .local v3, copylength:I
    add-int v4, v5, v3

    .line 201
    .local v4, finalposition:I
    array-length v10, v7

    add-int/lit8 v9, v10, -0x1

    .line 202
    .local v9, validfinalposition:I
    if-le v4, v9, :cond_24

    .line 205
    sub-int v3, v9, v5

    .line 209
    :cond_24
    add-int/lit8 v10, v5, 0x1

    invoke-static {v7, v10, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .end local v3           #copylength:I
    .end local v4           #finalposition:I
    .end local v9           #validfinalposition:I
    :cond_29
    :goto_29
    if-ge v5, v0, :cond_34

    aget v10, v8, v6

    aget v11, v7, v5

    if-le v10, v11, :cond_34

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 194
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 218
    :cond_37
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 220
    return v2
.end method

.method public set(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 128
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_c

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 129
    :cond_c
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 130
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .registers 6
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_6

    .line 110
    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 123
    :goto_5
    return-void

    .line 113
    :cond_6
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 114
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2e

    .line 115
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_23

    .line 116
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 118
    :cond_23
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_5

    .line 121
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_5
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .registers 6
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    .line 135
    const/4 v1, 0x0

    :try_start_5
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 136
    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 137
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 138
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_17

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_26

    .line 139
    :cond_17
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    .line 140
    .local v0, diffs:[Landroid/os/WorkSource;
    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 141
    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 142
    monitor-exit v2

    .line 144
    .end local v0           #diffs:[Landroid/os/WorkSource;
    :goto_25
    return-object v0

    :cond_26
    monitor-exit v2

    goto :goto_25

    .line 145
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 334
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 336
    return-void
.end method
