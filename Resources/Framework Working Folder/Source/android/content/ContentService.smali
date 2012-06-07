.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 51
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 137
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 138
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 139
    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentService;)Landroid/content/SyncManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    return-object v0
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .registers 6

    .prologue
    .line 56
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_16

    .line 63
    :cond_12
    :goto_12
    :try_start_12
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v2

    return-object v1

    .line 60
    :catch_16
    move-exception v0

    .line 61
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 64
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 525
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 526
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 527
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 348
    .local v6, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 351
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 353
    return-void

    .line 351
    :catchall_21
    move-exception v0

    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 501
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 503
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 504
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 505
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 508
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 510
    return-void

    .line 508
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 260
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 262
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 263
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_10

    .line 264
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 268
    :cond_10
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 270
    return-void

    .line 268
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_73

    move-result-wide v11

    .line 76
    .local v11, identityToken:J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_62

    .line 77
    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 82
    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_6e

    .line 84
    const/4 v2, 0x2

    :try_start_2d
    new-array v8, v2, [I

    .line 85
    .local v8, counts:[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 86
    .local v9, pidCounts:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 88
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v14, sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4e
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_76

    .line 90
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_de

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 79
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6e

    goto :goto_1d

    .line 116
    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 69
    .end local v11           #identityToken:J
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 92
    .restart local v8       #counts:[I
    .restart local v9       #pidCounts:Landroid/util/SparseIntArray;
    .restart local v10       #i:I
    .restart local v11       #identityToken:J
    .restart local v14       #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_76
    :try_start_76
    new-instance v2, Landroid/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Landroid/content/ContentService$1;-><init>(Landroid/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    const/4 v10, 0x0

    :goto_81
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b7

    .line 107
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 108
    .local v13, pid:I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    .line 111
    .end local v13           #pid:I
    :cond_b7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 112
    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 113
    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 114
    monitor-exit v15
    :try_end_d9
    .catchall {:try_start_76 .. :try_end_d9} :catchall_de

    .line 116
    :try_start_d9
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_73

    .line 118
    monitor-exit p0

    return-void

    .line 114
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_de
    move-exception v2

    :try_start_df
    monitor-exit v15
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_6e
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 460
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 461
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getCurrentSyncs()Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result-object v3

    .line 464
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 466
    :goto_1f
    return-object v3

    .line 464
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 466
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 379
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 384
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 385
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v3

    .line 389
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 391
    :goto_1f
    return v3

    .line 389
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 391
    const/4 v3, -0x1

    goto :goto_1f
.end method

.method public getMasterSyncAutomatically()Z
    .registers 7

    .prologue
    .line 410
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 414
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 415
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 416
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v3

    .line 419
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 421
    :goto_1f
    return v3

    .line 419
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 421
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to read the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 371
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    move-result-object v2

    .line 374
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 371
    return-object v2

    .line 374
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 5

    .prologue
    .line 279
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 282
    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v3

    .line 284
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 282
    return-object v3

    .line 284
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 289
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 293
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 294
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 295
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v3

    .line 299
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 301
    :goto_1f
    return v3

    .line 299
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 301
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 470
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 474
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 475
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 476
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result-object v3

    .line 480
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 482
    :goto_1f
    return-object v3

    .line 480
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 482
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 439
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 443
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 444
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 445
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v3

    .line 449
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 451
    :goto_1f
    return v3

    .line 449
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 451
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 486
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 491
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_25

    .line 492
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result v3

    .line 495
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 497
    :goto_1f
    return v3

    .line 495
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_25
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 497
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 25
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 166
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 167
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", syncToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3b
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v10

    .line 174
    .local v10, identityToken:J
    :try_start_3f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_b0

    .line 176
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 178
    monitor-exit v19
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_ad

    .line 179
    :try_start_5a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 180
    .local v14, numCalls:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5f
    if-ge v9, v14, :cond_f8

    .line 181
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentService$ObserverCall;
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_b0

    .line 183
    .local v16, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_67
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    invoke-interface {v1, v2}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 184
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 185
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "update at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_67 .. :try_end_aa} :catchall_b0
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_aa} :catch_b5

    .line 180
    :cond_aa
    :goto_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 178
    .end local v9           #i:I
    .end local v14           #numCalls:I
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_ad
    move-exception v1

    :try_start_ae
    monitor-exit v19
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    :try_start_af
    throw v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    .line 212
    .end local v6           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_b0
    move-exception v1

    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1

    .line 187
    .restart local v6       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v9       #i:I
    .restart local v14       #numCalls:I
    .restart local v16       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_b5
    move-exception v8

    .line 188
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v2
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_b0

    .line 189
    :try_start_bb
    const-string v1, "ContentService"

    const-string v3, "Found dead observer, removing"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 191
    .local v7, binder:Landroid/os/IBinder;
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v13

    .line 193
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 194
    .local v15, numList:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_d7
    if-ge v12, v15, :cond_f3

    .line 195
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 196
    .local v17, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, v7, :cond_f0

    .line 197
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    add-int/lit8 v12, v12, -0x1

    .line 199
    add-int/lit8 v15, v15, -0x1

    .line 194
    :cond_f0
    add-int/lit8 v12, v12, 0x1

    goto :goto_d7

    .line 202
    .end local v17           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_f3
    monitor-exit v2

    goto :goto_aa

    .end local v7           #binder:Landroid/os/IBinder;
    .end local v12           #j:I
    .end local v13           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v15           #numList:I
    :catchall_f5
    move-exception v1

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_bb .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v1

    .line 205
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_f8
    if-eqz p4, :cond_10a

    .line 206
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v18

    .line 207
    .local v18, syncManager:Landroid/content/SyncManager;
    if-eqz v18, :cond_10a

    .line 208
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_f7 .. :try_end_10a} :catchall_b0

    .line 212
    .end local v18           #syncManager:Landroid/content/SyncManager;
    :cond_10a
    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 214
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 125
    :catch_5
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 129
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 12
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 143
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    iget-object v7, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v7

    .line 147
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v4, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V

    .line 151
    monitor-exit v7

    .line 152
    return-void

    .line 151
    :catchall_23
    move-exception v0

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw v0
.end method

.method public registerSetSyncAfterOnAccountUpdate(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    new-instance v1, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/ContentService$SetSyncAfterOnAccountUpdte;-><init>(Landroid/content/ContentService;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->addPostOnAccountUpdate(Landroid/content/SyncManager$PostOnAccountUpdateAction;)V

    .line 339
    return-void
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 356
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 362
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 364
    return-void

    .line 362
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 513
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 516
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 517
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 520
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 522
    return-void

    .line 520
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 236
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 239
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 241
    .local v7, identityToken:J
    :try_start_7
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 242
    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_16

    .line 243
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 247
    :cond_16
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 249
    return-void

    .line 247
    .end local v0           #syncManager:Landroid/content/SyncManager;
    :catchall_1a
    move-exception v1

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    .line 395
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 399
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 400
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 401
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 405
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 407
    return-void

    .line 405
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 8
    .parameter "flag"

    .prologue
    .line 425
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 430
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 431
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 434
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 436
    return-void

    .line 434
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 305
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 309
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 310
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 311
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 315
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 317
    return-void

    .line 315
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 155
    if-nez p1, :cond_a

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_a
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v1

    .line 159
    :try_start_d
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
