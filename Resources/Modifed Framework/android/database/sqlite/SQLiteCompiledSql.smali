.class Landroid/database/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private final mStackTrace:Ljava/lang/Throwable;

.field final nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "sql"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 51
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 59
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 60
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 63
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 67
    :goto_26
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 68
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V

    .line 69
    return-void

    .line 65
    :cond_2e
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_26
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 84
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_d

    if-eqz v1, :cond_9

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_7
    monitor-exit p0

    return v0

    .line 88
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_7

    .line 84
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v1, 0x3e8

    .line 109
    :try_start_2
    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4f

    if-nez v2, :cond_a

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    :goto_9
    return-void

    .line 112
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->isInQueueOfStatementsToBeFinalized(I)Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_4f

    move-result v2

    if-eqz v2, :cond_18

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_9

    .line 119
    :cond_18
    :try_start_18
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v2, :cond_48

    .line 120
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 121
    .local v0, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v0, v1, :cond_37

    move v0, v1

    .end local v0           #len:I
    :cond_37
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_48
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_4f

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_9

    :catchall_4f
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method declared-synchronized release()V
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseIfNotInUse()V
    .registers 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-nez v0, :cond_8

    .line 99
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 101
    :cond_8
    monitor-exit p0

    return-void

    .line 98
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->finalizeStatementLater(I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 78
    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v2, 0x64

    .line 134
    monitor-enter p0

    .line 135
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, " nStatement="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, ", mInUse="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, ", db="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, ", db_connectionNum="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v3, ", sql="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 146
    .local v1, len:I
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v1, v2, :cond_47

    move v1, v2

    .end local v1           #len:I
    :cond_47
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 148
    .end local v0           #buff:Ljava/lang/StringBuilder;
    :catchall_54
    move-exception v2

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v2
.end method
