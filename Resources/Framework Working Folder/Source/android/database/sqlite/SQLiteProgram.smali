.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field static final STATEMENT_CACHEABLE:I = 0x10

.field static final STATEMENT_DONT_PREPARE:I = 0x20

.field static final STATEMENT_TYPE_MASK:I = 0xf

.field static final STATEMENT_USE_POOLED_CONN:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field mBindArgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mShouldDumpSql:Z

.field final mSql:Ljava/lang/String;

.field final mStatementType:I

.field protected nHandle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected nStatement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .registers 10
    .parameter "db"
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "compileFlag"

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 440
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, n:I
    packed-switch v1, :pswitch_data_50

    .line 118
    :pswitch_18
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    .line 120
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 123
    :goto_1c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 124
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 125
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    iget v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    .line 127
    if-eqz p3, :cond_49

    .line 128
    array-length v2, p3

    .line 129
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    if-ge v0, v2, :cond_49

    .line 130
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 107
    .end local v0           #i:I
    .end local v2           #size:I
    :pswitch_38
    or-int/lit8 v3, v1, 0x10

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_1c

    .line 110
    :pswitch_3d
    or-int/lit8 v3, v1, 0x10

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_1c

    .line 115
    :pswitch_44
    or-int/lit8 v3, v1, 0x20

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_1c

    .line 133
    :cond_49
    if-eqz p4, :cond_4e

    .line 134
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->compileAndbindAllArgs()V

    .line 136
    :cond_4e
    return-void

    .line 105
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_38
        :pswitch_18
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method private addToBindArgs(ILjava/lang/Object;)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 355
    :cond_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method private bind(IILjava/lang/Object;)V
    .registers 6
    .parameter "type"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 233
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 234
    if-nez p1, :cond_1e

    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    .line 235
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-lez v0, :cond_1d

    .line 237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 239
    packed-switch p1, :pswitch_data_46

    .line 254
    :pswitch_15
    :try_start_15
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    .line 258
    :goto_1a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 261
    :cond_1d
    return-void

    .restart local p3
    :cond_1e
    move-object v0, p3

    .line 234
    goto :goto_8

    .line 241
    :pswitch_20
    :try_start_20
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 258
    .end local p3
    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0

    .line 244
    .restart local p3
    :pswitch_29
    :try_start_29
    check-cast p3, [B

    .end local p3
    check-cast p3, [B

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_1a

    .line 247
    .restart local p3
    :pswitch_31
    check-cast p3, Ljava/lang/Double;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_1a

    .line 250
    .restart local p3
    :pswitch_3b
    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_24

    goto :goto_1a

    .line 239
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_20
        :pswitch_3b
        :pswitch_31
        :pswitch_15
        :pswitch_29
    .end packed-switch
.end method

.method private compileSql()V
    .registers 5

    .prologue
    .line 140
    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_18

    .line 141
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 142
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    .line 171
    :goto_17
    return-void

    .line 147
    :cond_18
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 148
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v1, :cond_46

    .line 150
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 155
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    .line 156
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 170
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_17

    .line 160
    :cond_46
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 161
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v0, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 166
    .local v0, last:I
    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    goto :goto_3f
.end method

.method private final native native_clear_bindings()V
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .registers 6
    .parameter "bindArgs"

    .prologue
    .line 403
    if-nez p1, :cond_3

    .line 410
    :cond_2
    return-void

    .line 406
    :cond_3
    array-length v1, p1

    .line 407
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2

    .line 408
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public bindBlob(I[B)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 317
    if-nez p2, :cond_22

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_22
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public bindDouble(ID)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 292
    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public bindLong(IJ)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public bindNull(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 303
    if-nez p2, :cond_22

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_22
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public clearBindings()V
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 328
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v0, :cond_8

    .line 338
    :goto_7
    return-void

    .line 331
    :cond_8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 332
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 334
    :try_start_10
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->native_clear_bindings()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 336
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_7

    :catchall_17
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    .line 345
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 349
    :cond_f
    :goto_f
    return-void

    .line 348
    :cond_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_f
.end method

.method protected compile(Ljava/lang/String;Z)V
    .registers 3
    .parameter "sql"
    .parameter "forceCompilation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method compileAndbindAllArgs()V
    .registers 11

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    .line 359
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_29

    .line 360
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v4, :cond_34

    .line 361
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t pass bindargs for this sql :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_29
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v4, :cond_30

    .line 368
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->compileSql()V

    .line 370
    :cond_30
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v4, :cond_35

    .line 395
    :cond_34
    return-void

    .line 373
    :cond_35
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 374
    .local v2, index:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_5f

    .line 376
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V

    goto :goto_3f

    .line 377
    :cond_5f
    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_67

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_71

    .line 378
    :cond_67
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_3f

    .line 379
    .restart local v3       #value:Ljava/lang/Object;
    :cond_71
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7f

    .line 380
    check-cast v3, Ljava/lang/Number;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    .line 381
    .restart local v3       #value:Ljava/lang/Object;
    :cond_7f
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a0

    move-object v0, v3

    .line 382
    check-cast v0, Ljava/lang/Boolean;

    .line 383
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9a

    move-wide v4, v6

    :goto_8d
    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 385
    invoke-virtual {p0, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    :cond_9a
    move-wide v4, v8

    .line 383
    goto :goto_8d

    .line 387
    :cond_9c
    invoke-virtual {p0, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_3f

    .line 389
    .end local v0           #bool:Ljava/lang/Boolean;
    :cond_a0
    instance-of v4, v3, [B

    if-eqz v4, :cond_ac

    .line 390
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_3f

    .line 392
    .restart local v3       #value:Ljava/lang/Object;
    :cond_ac
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V

    goto :goto_3f
.end method

.method getSqlStatementId()I
    .registers 2

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_6

    .line 213
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method getSqlString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final native native_finalize()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 176
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 177
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 178
    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    .line 183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 184
    return-void
.end method

.method release()V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_5

    .line 193
    :goto_4
    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_4
.end method

.method public setDumpSql(Z)V
    .registers 2
    .parameter "ok"

    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    .line 452
    return-void
.end method

.method final declared-synchronized setNativeHandle(I)V
    .registers 3
    .parameter "nHandle"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDumpSql()Z
    .registers 3

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    and-int/2addr v0, v1

    return v0
.end method
