.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field public static final NEED_NEW_THREAD_FOR_BROADCAST:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 266
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/IDropBoxManagerService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 11
    .parameter "tag"
    .parameter "data"
    .parameter "flags"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_5

    .line 311
    :goto_4
    return-void

    .line 309
    :cond_5
    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_f
    :try_start_f
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_4

    :catch_1f
    move-exception v0

    goto :goto_4
.end method

.method public addData(Ljava/lang/String;[BIJ)V
    .registers 13
    .parameter "tag"
    .parameter "data"
    .parameter "flags"
    .parameter "time"

    .prologue
    .line 388
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_5

    .line 392
    :goto_4
    return-void

    .line 390
    :cond_5
    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_f
    :try_start_f
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0, p4, p5}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_4

    :catch_1f
    move-exception v0

    goto :goto_4
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .registers 10
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v1, :cond_5

    .line 335
    :goto_4
    return-void

    .line 326
    :cond_5
    if-nez p2, :cond_f

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_f
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 329
    .local v0, entry:Landroid/os/DropBoxManager$Entry;
    :try_start_19
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_27

    .line 333
    :goto_1e
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_4

    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw v1

    .line 330
    :catch_27
    move-exception v1

    goto :goto_1e
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;IJ)V
    .registers 12
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v1, :cond_5

    .line 410
    :goto_4
    return-void

    .line 401
    :cond_5
    if-nez p2, :cond_f

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_f
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 404
    .local v0, entry:Landroid/os/DropBoxManager$Entry;
    :try_start_19
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, v0, p4, p5}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_27

    .line 408
    :goto_1e
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_4

    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw v1

    .line 405
    :catch_27
    move-exception v1

    goto :goto_1e
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_5

    .line 281
    :goto_4
    return-void

    .line 280
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    goto :goto_4
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "tag"
    .parameter "data"
    .parameter "time"

    .prologue
    .line 378
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_5

    .line 381
    :goto_4
    return-void

    .line 380
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1, p3, p4}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    goto :goto_4
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "tag"
    .parameter "data"
    .parameter "isNeedNewThreadForBroadcast"

    .prologue
    .line 288
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_5

    .line 295
    :goto_4
    return-void

    .line 289
    :cond_5
    const/4 v5, 0x2

    .line 290
    .local v5, flag:I
    if-eqz p3, :cond_a

    .line 291
    or-int/lit16 v5, v5, 0x4000

    .line 293
    :cond_a
    :try_start_a
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_4

    .line 294
    :catch_1c
    move-exception v0

    goto :goto_4
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 7
    .parameter "tag"
    .parameter "msec"

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v2, :cond_6

    .line 365
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    :catch_d
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v2, :cond_6

    .line 349
    :goto_5
    return v1

    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v2, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    :catch_d
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method
