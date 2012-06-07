.class public Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;,
        Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    }
.end annotation


# static fields
.field private static final mCursorRecordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/database/sqlite/SQLiteCursor;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoteTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "sql"
    .parameter "editTable"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static cursorClosed(Landroid/database/sqlite/SQLiteCursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 175
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 179
    :try_start_3
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter "pw"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static dumpRecordMap(Ljava/io/PrintWriter;)V
    .registers 16
    .parameter "pw"

    .prologue
    .line 189
    const/4 v3, 0x0

    .line 191
    .local v3, cursorCount:I
    sget-object v13, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v13

    .line 193
    :try_start_4
    sget-object v12, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v2

    .line 195
    .local v2, count:I
    if-nez v2, :cond_e

    .line 196
    monitor-exit v13

    .line 243
    :goto_d
    return-void

    .line 198
    :cond_e
    sget-object v12, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 201
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;>;"
    :cond_18
    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a8

    .line 202
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 204
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteCursor;

    .line 206
    .local v1, c:Landroid/database/sqlite/SQLiteCursor;
    if-eqz v1, :cond_18

    .line 208
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_18

    .line 212
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 214
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    .line 216
    .local v4, debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    iget-object v10, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 217
    .local v10, remoteTrace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    iget-object v12, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mDriver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    .line 219
    .local v5, driver:Landroid/database/sqlite/SQLiteDirectCursorDriver;
    if-eqz v5, :cond_4f

    .line 220
    const-string v12, " "

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-direct {v5, p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 224
    :cond_4f
    const-string v12, "  Local stack:"

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteCursor;->dumpTrace(Ljava/io/PrintWriter;)V

    .line 227
    if-eqz v10, :cond_a4

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Remote stack: (Pid: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v10, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " Tid: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v10, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    iget-object v0, v10, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v9, v0

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_87
    if-ge v7, v9, :cond_a4

    aget-object v11, v0, v7

    .line 232
    .local v11, trace:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    .line 236
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #trace:Ljava/lang/String;
    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    .line 239
    .end local v1           #c:Landroid/database/sqlite/SQLiteCursor;
    .end local v4           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v5           #driver:Landroid/database/sqlite/SQLiteDirectCursorDriver;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    .end local v10           #remoteTrace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :cond_a8
    monitor-exit v13
    :try_end_a9
    .catchall {:try_start_4 .. :try_end_a9} :catchall_c6

    .line 241
    const-string v12, " "

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Total cursor count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 239
    .end local v2           #count:I
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;>;"
    :catchall_c6
    move-exception v12

    :try_start_c7
    monitor-exit v13
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v12
.end method

.method public static removeIfNotUsed(I)V
    .registers 3
    .parameter "tid"

    .prologue
    .line 166
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public static storeRemoteTrace(III[Ljava/lang/String;)V
    .registers 7
    .parameter "rPid"
    .parameter "rTid"
    .parameter "tid"
    .parameter "trace"

    .prologue
    .line 156
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    invoke-direct {v0, p0, p1, p3}, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;-><init>(II[Ljava/lang/String;)V

    .line 157
    .local v0, remoteInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 93
    return-void
.end method

.method public cursorDeactivated()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 105
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "factory"
    .parameter "selectionArgs"

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 56
    .local v1, query:Landroid/database/sqlite/SQLiteQuery;
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 58
    new-instance v2, Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v7, p2}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_76

    .line 61
    .end local v1           #query:Landroid/database/sqlite/SQLiteQuery;
    .local v2, query:Landroid/database/sqlite/SQLiteQuery;
    if-nez p1, :cond_5b

    .line 62
    :try_start_19
    new-instance v5, Landroid/database/sqlite/SQLiteCursor;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v2}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 68
    :goto_22
    const/4 v5, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v6

    if-ne v5, v6, :cond_4d

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 71
    .local v3, tid:I
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    check-cast v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 73
    .restart local v4       #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    invoke-direct {v0, p0, v4}, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;-><init>(Landroid/database/sqlite/SQLiteDirectCursorDriver;Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;)V

    .line 75
    .local v0, debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    sget-object v6, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_66

    .line 76
    :try_start_43
    sget-object v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    check-cast v5, Landroid/database/sqlite/SQLiteCursor;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_73

    .line 81
    .end local v0           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v3           #tid:I
    .end local v4           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :cond_4d
    :try_start_4d
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_66

    .line 82
    const/4 v1, 0x0

    .line 83
    .end local v2           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v1       #query:Landroid/database/sqlite/SQLiteQuery;
    :try_start_50
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_76

    .line 86
    if-eqz v1, :cond_55

    throw v1

    .line 87
    :cond_55
    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 83
    return-object v5

    .line 64
    .end local v1           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v2       #query:Landroid/database/sqlite/SQLiteQuery;
    :cond_5b
    :try_start_5b
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v5, p0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_66

    goto :goto_22

    .line 86
    :catchall_66
    move-exception v5

    move-object v1, v2

    .end local v2           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v1       #query:Landroid/database/sqlite/SQLiteQuery;
    :goto_68
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 87
    :cond_6d
    iget-object v6, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 86
    throw v5

    .line 77
    .end local v1           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v0       #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .restart local v2       #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v3       #tid:I
    .restart local v4       #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v6
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_66

    .line 86
    .end local v0           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v2           #query:Landroid/database/sqlite/SQLiteQuery;
    .end local v3           #tid:I
    .end local v4           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    .restart local v1       #query:Landroid/database/sqlite/SQLiteQuery;
    :catchall_76
    move-exception v5

    goto :goto_68
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .registers 3
    .parameter "bindArgs"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
