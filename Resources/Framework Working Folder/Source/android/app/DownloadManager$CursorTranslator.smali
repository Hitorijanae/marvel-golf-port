.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1249
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1254
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1255
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1329
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_16

    const/16 v0, 0x258

    if-ge p1, v0, :cond_16

    .line 1332
    :cond_10
    const/16 v0, 0x196

    if-eq p1, v0, :cond_16

    .line 1334
    int-to-long v0, p1

    .line 1374
    :goto_15
    return-wide v0

    .line 1339
    :cond_16
    sparse-switch p1, :sswitch_data_3a

    .line 1374
    const-wide/16 v0, 0x3e8

    goto :goto_15

    .line 1341
    :sswitch_1c
    const-wide/16 v0, 0x3e9

    goto :goto_15

    .line 1345
    :sswitch_1f
    const-wide/16 v0, 0x3ea

    goto :goto_15

    .line 1348
    :sswitch_22
    const-wide/16 v0, 0x3ec

    goto :goto_15

    .line 1351
    :sswitch_25
    const-wide/16 v0, 0x3ed

    goto :goto_15

    .line 1354
    :sswitch_28
    const-wide/16 v0, 0x3ee

    goto :goto_15

    .line 1357
    :sswitch_2b
    const-wide/16 v0, 0x3ef

    goto :goto_15

    .line 1360
    :sswitch_2e
    const-wide/16 v0, 0x3f0

    goto :goto_15

    .line 1363
    :sswitch_31
    const-wide/16 v0, 0x3f1

    goto :goto_15

    .line 1367
    :sswitch_34
    const-wide/16 v0, 0x3f3

    goto :goto_15

    .line 1371
    :sswitch_37
    const-wide/16 v0, 0x3f2

    goto :goto_15

    .line 1339
    :sswitch_data_3a
    .sparse-switch
        0x196 -> :sswitch_34
        0x1e1 -> :sswitch_28
        0x1e8 -> :sswitch_31
        0x1e9 -> :sswitch_2e
        0x1ec -> :sswitch_1c
        0x1ed -> :sswitch_1f
        0x1ee -> :sswitch_1f
        0x1ef -> :sswitch_22
        0x1f1 -> :sswitch_25
        0x1f2 -> :sswitch_37
        0x1f3 -> :sswitch_2b
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1280
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1281
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_22

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_22

    const-wide/16 v5, 0x8

    cmp-long v5, v0, v5

    if-eqz v5, :cond_22

    const-wide/16 v5, 0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_3f

    .line 1287
    :cond_22
    const-string/jumbo v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_31

    .line 1289
    const/4 v5, 0x0

    .line 1296
    .end local v4           #localPath:Ljava/lang/String;
    :goto_30
    return-object v5

    .line 1291
    .restart local v4       #localPath:Ljava/lang/String;
    :cond_31
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    .line 1295
    .end local v4           #localPath:Ljava/lang/String;
    :cond_3f
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1296
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_30
.end method

.method private getPausedReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1313
    packed-switch p1, :pswitch_data_10

    .line 1324
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1315
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1318
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1321
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1313
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4
    .parameter "status"

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1308
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1302
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 1305
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 1300
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .registers 3
    .parameter "status"

    .prologue
    .line 1379
    packed-switch p1, :pswitch_data_20

    .line 1396
    :pswitch_3
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1381
    :pswitch_13
    const/4 v0, 0x1

    .line 1397
    :goto_14
    return v0

    .line 1384
    :pswitch_15
    const/4 v0, 0x2

    goto :goto_14

    .line 1390
    :pswitch_17
    const/4 v0, 0x4

    goto :goto_14

    .line 1393
    :pswitch_19
    const/16 v0, 0x8

    goto :goto_14

    .line 1397
    :cond_1c
    const/16 v0, 0x10

    goto :goto_14

    .line 1379
    nop

    :pswitch_data_20
    .packed-switch 0xbe
        :pswitch_13
        :pswitch_3
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1264
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1265
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1269
    :goto_1c
    return-wide v0

    .line 1266
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1267
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1c

    .line 1269
    :cond_3b
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_1c
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method
