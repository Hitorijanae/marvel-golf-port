.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mBuffersSize:J

.field private mCachedSize:J

.field private mFreeSize:J

.field private mKernelStack:J

.field private mPageTables:J

.field private mShmemSize:J

.field private mSlabSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .registers 9
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 49
    :goto_4
    array-length v2, p1

    if-ge p2, v2, :cond_3a

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3a

    .line 50
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_37

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_37

    .line 51
    move v0, p2

    .line 52
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 54
    :goto_18
    array-length v2, p1

    if-ge p2, v2, :cond_26

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_26

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_26

    .line 55
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 57
    :cond_26
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 58
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 62
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_36
    return-wide v2

    .line 60
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 62
    :cond_3a
    const-wide/16 v2, 0x0

    goto :goto_36
.end method

.method private matchText([BILjava/lang/String;)Z
    .registers 9
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 37
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_b

    .line 45
    :cond_a
    :goto_a
    return v2

    .line 40
    :cond_b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_1b

    .line 41
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_a

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 45
    :cond_1b
    const/4 v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getBufferSize()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J

    return-wide v0
.end method

.method public getCachedSize()J
    .registers 3

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getKernelStack()J
    .registers 3

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J

    return-wide v0
.end method

.method public getPageTable()J
    .registers 3

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J

    return-wide v0
.end method

.method public getShmemSize()J
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J

    return-wide v0
.end method

.method public getSlabSize()J
    .registers 3

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 3

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .registers 9

    .prologue
    .line 69
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 71
    .local v5, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x0

    :try_start_6
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_8} :catch_198
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_8} :catch_10e

    .line 72
    const-wide/16 v6, 0x0

    :try_start_a
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_c} :catch_198
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_c} :catch_113

    .line 73
    const-wide/16 v6, 0x0

    :try_start_e
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_10} :catch_198
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_10} :catch_115

    .line 74
    const-wide/16 v6, 0x0

    :try_start_12
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_14} :catch_198
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_14} :catch_117

    .line 75
    const-wide/16 v6, 0x0

    :try_start_16
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_18} :catch_198
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_18} :catch_119

    .line 76
    const-wide/16 v6, 0x0

    :try_start_1a
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1c} :catch_198
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1c} :catch_11b

    .line 77
    const-wide/16 v6, 0x0

    :try_start_1e
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_20} :catch_198
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_20} :catch_11d

    .line 78
    const-wide/16 v6, 0x0

    :try_start_22
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_24} :catch_198
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_24} :catch_11f

    .line 79
    :try_start_24
    new-instance v3, Ljava/io/FileInputStream;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_26} :catch_198
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_26} :catch_121

    :try_start_26
    const-string v6, "/proc/meminfo"
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_28} :catch_198
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_28} :catch_123

    :try_start_28
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_198
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_125

    .line 80
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_2b
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2d} :catch_198
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2d} :catch_127

    :try_start_2d
    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_30} :catch_198
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_129

    move-result v4

    .line 81
    .local v4, len:I
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_198
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_12b

    .line 82
    :try_start_34
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_36} :catch_198
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_36} :catch_12d

    :try_start_36
    array-length v0, v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_37} :catch_198
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_37} :catch_12f

    .line 83
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .line 84
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_39
    if-ge v2, v4, :cond_10f

    const/16 v6, 0x8

    if-ge v1, v6, :cond_10f

    .line 85
    :try_start_3f
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_41} :catch_198
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_41} :catch_131

    :try_start_41
    const-string v7, "MemTotal"
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_43} :catch_198
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_43} :catch_133

    :try_start_43
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_46} :catch_198
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_135

    move-result v6

    if-eqz v6, :cond_62

    .line 86
    add-int/lit8 v2, v2, 0x8

    .line 87
    :try_start_4b
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_4d} :catch_198
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4d} :catch_137

    :try_start_4d
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_50} :catch_198
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_139

    move-result-wide v6

    :try_start_51
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_53} :catch_198
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_53} :catch_13b

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 118
    :cond_55
    :goto_55
    if-ge v2, v0, :cond_105

    :try_start_57
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_59} :catch_198
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_59} :catch_192

    :try_start_59
    aget-byte v6, v6, v2
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5b} :catch_198
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5b} :catch_195

    const/16 v7, 0xa

    if-eq v6, v7, :cond_105

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 89
    :cond_62
    :try_start_62
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_64} :catch_198
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_64} :catch_13d

    :try_start_64
    const-string v7, "MemFree"
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_66} :catch_198
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_66} :catch_13f

    :try_start_66
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_69} :catch_198
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_141

    move-result v6

    if-eqz v6, :cond_79

    .line 90
    add-int/lit8 v2, v2, 0x7

    .line 91
    :try_start_6e
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_70} :catch_198
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_70} :catch_143

    :try_start_70
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_73} :catch_198
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_145

    move-result-wide v6

    :try_start_74
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_76} :catch_198
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_76} :catch_147

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 93
    :cond_79
    :try_start_79
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7b} :catch_198
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7b} :catch_149

    :try_start_7b
    const-string v7, "Cached"
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_7d} :catch_198
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7d} :catch_14b

    :try_start_7d
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_80} :catch_198
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_14d

    move-result v6

    if-eqz v6, :cond_90

    .line 94
    add-int/lit8 v2, v2, 0x6

    .line 95
    :try_start_85
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_87} :catch_198
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_87} :catch_14f

    :try_start_87
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8a} :catch_198
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_151

    move-result-wide v6

    :try_start_8b
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_8d} :catch_198
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8d} :catch_153

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 97
    :cond_90
    :try_start_90
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_92} :catch_198
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_92} :catch_155

    :try_start_92
    const-string v7, "Buffers"
    :try_end_94
    .catchall {:try_start_92 .. :try_end_94} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_94} :catch_198
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_94} :catch_157

    :try_start_94
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_97} :catch_198
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_159

    move-result v6

    if-eqz v6, :cond_a7

    .line 98
    add-int/lit8 v2, v2, 0x7

    .line 99
    :try_start_9c
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_9e} :catch_198
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9e} :catch_15b

    :try_start_9e
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a1} :catch_198
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_15d

    move-result-wide v6

    :try_start_a2
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_a4} :catch_198
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a4} :catch_15f

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 101
    :cond_a7
    :try_start_a7
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_a9} :catch_198
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_a9} :catch_161

    :try_start_a9
    const-string v7, "Shmem"
    :try_end_ab
    .catchall {:try_start_a9 .. :try_end_ab} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ab} :catch_198
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ab} :catch_163

    :try_start_ab
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_ae} :catch_198
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_165

    move-result v6

    if-eqz v6, :cond_be

    .line 102
    add-int/lit8 v2, v2, 0x5

    .line 103
    :try_start_b3
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_b5} :catch_198
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b5} :catch_167

    :try_start_b5
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_b5 .. :try_end_b8} :catch_198
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_169

    move-result-wide v6

    :try_start_b9
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_bb
    .catchall {:try_start_b9 .. :try_end_bb} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_bb} :catch_198
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bb} :catch_16b

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 105
    :cond_be
    :try_start_be
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_c0
    .catchall {:try_start_be .. :try_end_c0} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_c0} :catch_198
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c0} :catch_16d

    :try_start_c0
    const-string v7, "Slab"
    :try_end_c2
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_c2} :catch_198
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c2} :catch_16f

    :try_start_c2
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_c5} :catch_198
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_171

    move-result v6

    if-eqz v6, :cond_d5

    .line 106
    add-int/lit8 v2, v2, 0x4

    .line 107
    :try_start_ca
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_cc} :catch_198
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cc} :catch_173

    :try_start_cc
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_cf} :catch_198
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_175

    move-result-wide v6

    :try_start_d0
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_d2} :catch_198
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d2} :catch_177

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 109
    :cond_d5
    :try_start_d5
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_d7
    .catchall {:try_start_d5 .. :try_end_d7} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_d5 .. :try_end_d7} :catch_198
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d7} :catch_179

    :try_start_d7
    const-string v7, "KernelStack"
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_d9} :catch_198
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_d9} :catch_17b

    :try_start_d9
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_d9 .. :try_end_dc} :catch_198
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_17d

    move-result v6

    if-eqz v6, :cond_ed

    .line 110
    add-int/lit8 v2, v2, 0xb

    .line 111
    :try_start_e1
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_e3
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_e3} :catch_198
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e3} :catch_17f

    :try_start_e3
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_e6} :catch_198
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_181

    move-result-wide v6

    :try_start_e7
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J
    :try_end_e9
    .catchall {:try_start_e7 .. :try_end_e9} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_e9} :catch_198
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_e9} :catch_183

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    .line 113
    :cond_ed
    :try_start_ed
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_ef
    .catchall {:try_start_ed .. :try_end_ef} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_ef} :catch_198
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_ef} :catch_185

    :try_start_ef
    const-string v7, "PageTables"
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_f1} :catch_198
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f1} :catch_187

    :try_start_f1
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_f4} :catch_198
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_189

    move-result v6

    if-eqz v6, :cond_55

    .line 114
    add-int/lit8 v2, v2, 0xa

    .line 115
    :try_start_f9
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_fb} :catch_198
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fb} :catch_18b

    :try_start_fb
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_fb .. :try_end_fe} :catch_198
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_18d

    move-result-wide v6

    :try_start_ff
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J
    :try_end_101
    .catchall {:try_start_ff .. :try_end_101} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_ff .. :try_end_101} :catch_198
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_101} :catch_18f

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    .line 84
    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_39

    .line 125
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catchall_109
    move-exception v6

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 123
    :catch_10e
    move-exception v6

    .line 125
    :cond_10f
    :goto_10f
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 127
    return-void

    .line 123
    :catch_113
    move-exception v6

    goto :goto_10f

    :catch_115
    move-exception v6

    goto :goto_10f

    :catch_117
    move-exception v6

    goto :goto_10f

    :catch_119
    move-exception v6

    goto :goto_10f

    :catch_11b
    move-exception v6

    goto :goto_10f

    :catch_11d
    move-exception v6

    goto :goto_10f

    :catch_11f
    move-exception v6

    goto :goto_10f

    :catch_121
    move-exception v6

    goto :goto_10f

    :catch_123
    move-exception v6

    goto :goto_10f

    :catch_125
    move-exception v6

    goto :goto_10f

    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_127
    move-exception v6

    goto :goto_10f

    :catch_129
    move-exception v6

    goto :goto_10f

    .restart local v4       #len:I
    :catch_12b
    move-exception v6

    goto :goto_10f

    :catch_12d
    move-exception v6

    goto :goto_10f

    :catch_12f
    move-exception v6

    goto :goto_10f

    .restart local v0       #BUFLEN:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catch_131
    move-exception v6

    goto :goto_10f

    :catch_133
    move-exception v6

    goto :goto_10f

    :catch_135
    move-exception v6

    goto :goto_10f

    :catch_137
    move-exception v6

    goto :goto_10f

    :catch_139
    move-exception v6

    goto :goto_10f

    :catch_13b
    move-exception v6

    goto :goto_10f

    :catch_13d
    move-exception v6

    goto :goto_10f

    :catch_13f
    move-exception v6

    goto :goto_10f

    :catch_141
    move-exception v6

    goto :goto_10f

    :catch_143
    move-exception v6

    goto :goto_10f

    :catch_145
    move-exception v6

    goto :goto_10f

    :catch_147
    move-exception v6

    goto :goto_10f

    :catch_149
    move-exception v6

    goto :goto_10f

    :catch_14b
    move-exception v6

    goto :goto_10f

    :catch_14d
    move-exception v6

    goto :goto_10f

    :catch_14f
    move-exception v6

    goto :goto_10f

    :catch_151
    move-exception v6

    goto :goto_10f

    :catch_153
    move-exception v6

    goto :goto_10f

    :catch_155
    move-exception v6

    goto :goto_10f

    :catch_157
    move-exception v6

    goto :goto_10f

    :catch_159
    move-exception v6

    goto :goto_10f

    :catch_15b
    move-exception v6

    goto :goto_10f

    :catch_15d
    move-exception v6

    goto :goto_10f

    :catch_15f
    move-exception v6

    goto :goto_10f

    :catch_161
    move-exception v6

    goto :goto_10f

    :catch_163
    move-exception v6

    goto :goto_10f

    :catch_165
    move-exception v6

    goto :goto_10f

    :catch_167
    move-exception v6

    goto :goto_10f

    :catch_169
    move-exception v6

    goto :goto_10f

    :catch_16b
    move-exception v6

    goto :goto_10f

    :catch_16d
    move-exception v6

    goto :goto_10f

    :catch_16f
    move-exception v6

    goto :goto_10f

    :catch_171
    move-exception v6

    goto :goto_10f

    :catch_173
    move-exception v6

    goto :goto_10f

    :catch_175
    move-exception v6

    goto :goto_10f

    :catch_177
    move-exception v6

    goto :goto_10f

    :catch_179
    move-exception v6

    goto :goto_10f

    :catch_17b
    move-exception v6

    goto :goto_10f

    :catch_17d
    move-exception v6

    goto :goto_10f

    :catch_17f
    move-exception v6

    goto :goto_10f

    :catch_181
    move-exception v6

    goto :goto_10f

    :catch_183
    move-exception v6

    goto :goto_10f

    :catch_185
    move-exception v6

    goto :goto_10f

    :catch_187
    move-exception v6

    goto :goto_10f

    :catch_189
    move-exception v6

    goto :goto_10f

    :catch_18b
    move-exception v6

    goto :goto_10f

    :catch_18d
    move-exception v6

    goto :goto_10f

    :catch_18f
    move-exception v6

    goto/16 :goto_10f

    :catch_192
    move-exception v6

    goto/16 :goto_10f

    :catch_195
    move-exception v6

    goto/16 :goto_10f

    .line 122
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_198
    move-exception v6

    goto/16 :goto_10f
.end method
