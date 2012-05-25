.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$DbMetaData;,
        Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;,
        Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_SQL:Ljava/lang/String; = "BEGIN;"

.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final DEFAULT_JOURNAL_SIZE_LIMIT_FOR_DEFAULT_MODE:I = 0x100000

.field private static final DEFAULT_JOURNAL_SIZE_LIMIT_FOR_WAL_MODE:I = 0x100000

.field private static final DEFAULT_SQL_CACHE_SIZE:I = 0x19

.field private static final DELAYED_DURATION:I = 0x3e8

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ENABLE_DB_SAMPLE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_SERVO:Z = false

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final JOURNAL_SIZE_LIMIT_UNLIMIT:I = -0x1

.field private static final JOURNAL_SIZE_LIMIT_UNSET:I = -0x2

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WAIT_PERIOD:J = 0x1eL

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field private static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final PROP_DEFAULT_JOURNAL_MODE:Ljava/lang/String; = "htc.fw.db.default_journal_mode"

.field private static final PROP_DEFAULT_JOURNAL_SIZE_LIMIT:Ljava/lang/String; = "htc.fw.db.default_journal_size"

.field private static final PROP_SOFT_HEAP_LIMIT:Ljava/lang/String; = "htc.fw.db.soft_heap_limit"

.field private static final PROP_WAL_JOURNAL_SIZE_LIMIT:Ljava/lang/String; = "htc.fw.db.wal_journal_size"

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SEND_INTENT:I = -0x1

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field private static final SQLITE_DELETE:I = 0x9

.field private static final SQLITE_DELETE_ALL:I = 0x1

.field private static final SQLITE_INSERT:I = 0x12

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final SQLITE_UPDATE:I = 0x17

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static mActiveDatabases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

.field private static volatile mSearchableDB:Ljava/util/Properties;

.field private static mThreshold:I

.field private static package_name:Ljava/lang/String;

.field private static receiver:Ljava/lang/String;

.field private static final records:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlockSize:I

.field private static sDefaultJournalMode:Ljava/lang/String;

.field private static sDefaultJournalSizeLimit:I

.field private static sMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$DbMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryLogTimeInMillis:I

.field private static sSoftHeapLimitSize:I

.field private static sWalJournalSizeLimit:I


# instance fields
.field private mCacheFullWarning:Z

.field mCanDumpMonitoredSql:Z

.field private final mClosedStatementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompiledQueries:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectionNum:S

.field volatile mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

.field private final mCustomFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mFlags:I

.field private volatile mHasAttachedDbs:Z

.field private volatile mHookChecked:Z

.field private mHookTable:[Ljava/lang/String;

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field volatile mNativeHandle:I

.field mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private volatile mPathPattern:Ljava/lang/String;

.field private final mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mStackTrace:Ljava/lang/Throwable;

.field private mTransStartTime:J

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mTransactionUsingExecSql:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 91
    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_80

    move v1, v2

    :goto_d
    sput-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->sMetaData:Ljava/util/HashMap;

    .line 113
    const-string v1, "TRUNCATE"

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    .line 114
    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalSizeLimit:I

    .line 115
    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sWalJournalSizeLimit:I

    .line 176
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v3

    const-string v4, " OR ROLLBACK "

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, " OR ABORT "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, " OR FAIL "

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, " OR IGNORE "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, " OR REPLACE "

    aput-object v4, v1, v2

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 264
    const-string v1, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 277
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 308
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    .line 2867
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isSevroEnable()Z

    move-result v1

    sput-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    .line 2878
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->records:Ljava/util/HashMap;

    .line 2884
    const/16 v1, 0xb

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I

    .line 2885
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    .line 2886
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    .line 3179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    .line 3181
    .local v0, defaultLimitSizeInKb:I
    const-string/jumbo v1, "htc.fw.db.soft_heap_limit"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->sSoftHeapLimitSize:I

    .line 3206
    return-void

    .end local v0           #defaultLimitSizeInKb:I
    :cond_80
    move v1, v3

    .line 91
    goto :goto_d
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V
    .registers 12
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2081
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 100
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 247
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    .line 249
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 250
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 266
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 281
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 284
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 302
    iput v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 314
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    .line 367
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 379
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 384
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 431
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    .line 2881
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    .line 2883
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookChecked:Z

    .line 2082
    if-nez p1, :cond_49

    .line 2083
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_49
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 2086
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 2087
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 2088
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 2089
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2090
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 2093
    if-nez p4, :cond_6d

    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    .end local p4
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    :cond_6d
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2094
    iput-short p5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    .line 2105
    sget v0, Landroid/database/sqlite/SQLiteDatabase;->sSoftHeapLimitSize:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->native_setSqliteSoftHeapLimit(I)V

    .line 2107
    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;)Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->records:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 91
    sget v0, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .registers 8
    .parameter "transactionListener"
    .parameter "exclusive"

    .prologue
    const/4 v4, 0x1

    .line 706
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 707
    const-string v3, "BEGIN;"

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->lockForced(Ljava/lang/String;)V

    .line 708
    const/4 v2, 0x0

    .line 711
    .local v2, ok:Z
    :try_start_a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_33

    .line 712
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_2c

    .line 713
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 715
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "SQLiteDatabase"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    throw v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_25

    .line 744
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_25
    move-exception v3

    if-nez v2, :cond_2b

    .line 747
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 744
    :cond_2b
    throw v3

    .line 719
    :cond_2c
    const/4 v2, 0x1

    .line 744
    if-nez v2, :cond_32

    .line 747
    :goto_2f
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 750
    :cond_32
    return-void

    .line 725
    :cond_33
    if-eqz p2, :cond_55

    :try_start_35
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v3, :cond_55

    .line 726
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 730
    :goto_3e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransStartTime:J

    .line 731
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 732
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 733
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_25

    .line 734
    if-eqz p1, :cond_51

    .line 736
    :try_start_4e
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_25
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_51} :catch_5b

    .line 742
    :cond_51
    const/4 v2, 0x1

    .line 744
    if-nez v2, :cond_32

    goto :goto_2f

    .line 728
    :cond_55
    :try_start_55
    const-string v3, "BEGIN IMMEDIATE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3e

    .line 737
    :catch_5b
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    throw v0
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_25
.end method

.method private checkLockHoldTime()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x7d0

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 574
    .local v0, elapsedTime:J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 575
    .local v2, lockedTime:J
    cmp-long v6, v2, v10

    if-gez v6, :cond_22

    const-string v6, "SQLiteDatabase"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_22

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_22

    .line 595
    :cond_21
    :goto_21
    return-void

    .line 580
    :cond_22
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_21

    .line 581
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 583
    .local v5, threadTime:I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_3c

    cmp-long v6, v2, v10

    if-lez v6, :cond_21

    .line 585
    :cond_3c
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, msg:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_7f

    .line 589
    const-string v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 591
    :cond_7f
    const-string v6, "SQLiteDatabase"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private closeClosable()V
    .registers 5

    .prologue
    .line 1234
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 1236
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1237
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1239
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 1240
    .local v2, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_d

    .line 1241
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_d

    .line 1244
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2           #program:Landroid/database/sqlite/SQLiteClosable;
    :cond_25
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "factory"

    .prologue
    .line 1188
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private native enableSqlProfiling(Ljava/lang/String;S)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;S)V
.end method

.method private native enableUpdateHook()V
.end method

.method private static ensureReceiverInited()V
    .registers 9

    .prologue
    .line 2901
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    if-nez v7, :cond_81

    .line 2902
    const/4 v1, 0x0

    .line 2903
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 2905
    .local v3, fis2:Ljava/io/FileInputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/searchabledb.conf"

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_82
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_8c

    .line 2906
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2907
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2908
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    .line 2909
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "package"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    .line 2910
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "receiver"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    .line 2911
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "threshold"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_35} :catch_a7

    move-result-object v6

    .line 2913
    .local v6, thresholdStr:Ljava/lang/String;
    :try_start_36
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_a0
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_ae
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_a7

    .line 2917
    :goto_40
    :try_start_40
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/searchabledb.conf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2920
    .local v0, customized_conf:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 2921
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_40 .. :try_end_6b} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_6b} :catch_a7

    .line 2922
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .local v4, fis2:Ljava/io/FileInputStream;
    :try_start_6b
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2923
    .restart local v5       #props:Ljava/util/Properties;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2924
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_78} :catch_aa

    move-object v3, v4

    .line 2930
    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    :cond_79
    :try_start_79
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_9e

    .line 2935
    :goto_7c
    if-eqz v3, :cond_81

    .line 2936
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_96

    .line 2943
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #props:Ljava/util/Properties;
    .end local v6           #thresholdStr:Ljava/lang/String;
    :cond_81
    :goto_81
    return-void

    .line 2929
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_82
    move-exception v7

    .line 2930
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_9a

    .line 2935
    :goto_86
    if-eqz v3, :cond_8b

    .line 2936
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_9c

    .line 2929
    :cond_8b
    :goto_8b
    throw v7

    .line 2926
    :catch_8c
    move-exception v7

    .line 2930
    :goto_8d
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_98

    .line 2935
    :goto_90
    if-eqz v3, :cond_81

    .line 2936
    :try_start_92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_81

    .line 2938
    .end local v1           #fis:Ljava/io/FileInputStream;
    :catch_96
    move-exception v7

    goto :goto_81

    .line 2931
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_98
    move-exception v7

    goto :goto_90

    :catch_9a
    move-exception v8

    goto :goto_86

    .line 2938
    :catch_9c
    move-exception v8

    goto :goto_8b

    .line 2931
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #props:Ljava/util/Properties;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catch_9e
    move-exception v7

    goto :goto_7c

    .line 2929
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v5           #props:Ljava/util/Properties;
    .end local v6           #thresholdStr:Ljava/lang/String;
    :catchall_a0
    move-exception v7

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_83

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis2:Ljava/io/FileInputStream;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catchall_a3
    move-exception v7

    move-object v3, v4

    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_83

    .line 2926
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v6           #thresholdStr:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_a7
    move-exception v7

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_8d

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis2:Ljava/io/FileInputStream;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catch_aa
    move-exception v7

    move-object v3, v4

    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_8d

    .line 2914
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #props:Ljava/util/Properties;
    :catch_ae
    move-exception v7

    goto :goto_40
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 7
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2038
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 2039
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 2040
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 2042
    :cond_d
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2044
    .local v1, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_12 .. :try_end_15} :catch_1a

    move-result v2

    .line 2049
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2044
    return v2

    .line 2045
    :catch_1a
    move-exception v0

    .line 2046
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 2047
    throw v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .line 2049
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "tables"

    .prologue
    const/4 v3, 0x0

    .line 1463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1465
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1466
    .local v1, spacepos:I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1468
    .local v0, commapos:I
    if-lez v1, :cond_1e

    if-lt v1, v0, :cond_19

    if-gez v0, :cond_1e

    .line 1469
    :cond_19
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1473
    .end local p0
    :cond_1d
    :goto_1d
    return-object p0

    .line 1470
    .restart local p0
    :cond_1e
    if-lez v0, :cond_1d

    if-lt v0, v1, :cond_24

    if-gez v1, :cond_1d

    .line 1471
    :cond_24
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    .line 1475
    .end local v0           #commapos:I
    .end local v1           #spacepos:I
    :cond_29
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getCacheHitNum()I
    .registers 2

    .prologue
    .line 2359
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCacheMissNum()I
    .registers 2

    .prologue
    .line 2363
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCachesize()I
    .registers 2

    .prologue
    .line 2367
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2644
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    .local v22, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2649
    :try_start_8
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 2650
    .local v32, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_b5

    .line 2651
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_15
    :goto_15
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/ref/WeakReference;

    .line 2652
    .local v33, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/database/sqlite/SQLiteDatabase;

    .line 2653
    .local v21, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v21, :cond_15

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2659
    :try_start_2f
    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v8

    .line 2662
    .local v8, lookasideUsed:I
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 2663
    .local v31, path:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 2664
    .local v27, indx:I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_b8

    add-int/lit8 v27, v27, 0x1

    move/from16 v2, v27

    :goto_48
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 2667
    .local v28, lastnode:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v19

    .line 2668
    .local v19, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v19, :cond_15

    .line 2671
    const/16 v23, 0x0

    .local v23, i:I
    :goto_56
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_11e

    .line 2672
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Pair;

    .line 2673
    .local v29, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".page_count;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 2679
    .local v4, pageCount:J
    if-nez v23, :cond_ba

    .line 2680
    move-object/from16 v3, v28

    .line 2691
    .local v3, dbName:Ljava/lang/String;
    :cond_92
    :goto_92
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_b2

    .line 2692
    new-instance v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v6

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v9

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v10

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_b2} :catch_179

    .line 2671
    :cond_b2
    add-int/lit8 v23, v23, 0x1

    goto :goto_56

    .line 2650
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #i:I
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31           #path:Ljava/lang/String;
    .end local v32           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v6
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2

    .line 2664
    .restart local v8       #lookasideUsed:I
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27       #indx:I
    .restart local v31       #path:Ljava/lang/String;
    .restart local v32       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .restart local v33       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_b8
    const/4 v2, 0x0

    goto :goto_48

    .line 2683
    .restart local v4       #pageCount:J
    .restart local v19       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v23       #i:I
    .restart local v28       #lastnode:Ljava/lang/String;
    .restart local v29       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ba
    const/4 v8, 0x0

    .line 2684
    :try_start_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (attached) "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2686
    .restart local v3       #dbName:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_92

    .line 2687
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 2688
    .local v26, idx:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, -0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_11c

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    :goto_10e
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_92

    :cond_11c
    const/4 v6, 0x0

    goto :goto_10e

    .line 2700
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v26           #idx:I
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11e
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    move-object/from16 v20, v0

    .line 2701
    .local v20, connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    if-eqz v20, :cond_15

    .line 2702
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/DatabaseConnectionPool;->getConnectionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_12e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/database/sqlite/SQLiteDatabase;

    .line 2703
    .local v30, pDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/sqlite/SQLiteDebug$DbStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(pooled # "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget-short v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v16

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v17

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v18

    invoke-direct/range {v9 .. v18}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_178} :catch_179

    goto :goto_12e

    .line 2708
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20           #connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    .end local v23           #i:I
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v30           #pDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v31           #path:Ljava/lang/String;
    :catch_179
    move-exception v2

    goto/16 :goto_15

    .line 2713
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_17c
    return-object v22
.end method

.method private declared-synchronized getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 2588
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPathForLogs()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2198
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2199
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2209
    :goto_6
    return-object v0

    .line 2201
    :cond_7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 2202
    const/4 v0, 0x0

    goto :goto_6

    .line 2204
    :cond_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 2205
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2209
    :goto_1c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_6

    .line 2207
    :cond_1f
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1c
.end method

.method private hookDBIfNecessary()V
    .registers 10

    .prologue
    .line 3133
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    if-nez v7, :cond_5

    .line 3168
    :cond_4
    :goto_4
    return-void

    .line 3136
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookChecked:Z

    .line 3138
    const/4 v5, 0x0

    .line 3139
    .local v5, tables:Ljava/lang/String;
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3140
    if-nez v5, :cond_61

    .line 3142
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    invoke-virtual {v7}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3143
    .local v4, searchableDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3144
    .local v2, item:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3145
    .local v3, pattern:Ljava/lang/String;
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v3, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 3146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tables:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 3147
    .restart local v5       #tables:Ljava/lang/String;
    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    .line 3154
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/util/Map$Entry;
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #searchableDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_3f
    :goto_3f
    if-eqz v5, :cond_4

    .line 3156
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    .local v6, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    .line 3158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_66

    .line 3159
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 3158
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 3152
    .end local v0           #i:I
    .end local v6           #tokens:Ljava/util/StringTokenizer;
    :cond_61
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    goto :goto_3f

    .line 3162
    .restart local v0       #i:I
    .restart local v6       #tokens:Ljava/util/StringTokenizer;
    :cond_66
    new-instance v7, Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;-><init>(Landroid/database/sqlite/SQLiteDatabase$1;)V

    .line 3163
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableUpdateHook()V

    goto :goto_4
.end method

.method private isHookableTable(Ljava/lang/String;)Z
    .registers 4
    .parameter "tableName"

    .prologue
    .line 3101
    const/4 v0, 0x0

    .line 3102
    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 3103
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3107
    :cond_10
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x1

    :goto_16
    return v1

    .line 3102
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3107
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isPooledConnection()Z
    .registers 2

    .prologue
    .line 2592
    iget-short v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isSevroEnable()Z
    .registers 2

    .prologue
    .line 2865
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private lock(Ljava/lang/String;Z)V
    .registers 12
    .parameter "sql"
    .parameter "forced"

    .prologue
    .line 457
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 458
    const-string v5, "SQLiteDatabase"

    const-string v6, "don\'t lock() while in a synchronized method"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 461
    if-nez p2, :cond_17

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v5, :cond_17

    .line 502
    :cond_16
    :goto_16
    return-void

    .line 462
    :cond_17
    const/4 v0, 0x0

    .line 463
    .local v0, done:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 464
    .local v3, timeStart:J
    :cond_1c
    :goto_1c
    if-nez v0, :cond_5d

    .line 467
    :try_start_1e
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 468
    if-nez v0, :cond_1c

    .line 471
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "database lock has not been available for 30 sec. Current Owner of the lock is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getOwnerDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Continuing to wait in thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_5a} :catch_5b

    goto :goto_1c

    .line 475
    :catch_5b
    move-exception v5

    goto :goto_1c

    .line 479
    :cond_5d
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v5, :cond_76

    .line 480
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_76

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 483
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 487
    :cond_76
    const/4 v2, 0x0

    .line 488
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_THREAD_LOCK_POINT:Z

    if-eqz v5, :cond_d8

    .line 489
    if-nez p1, :cond_dc

    const/16 v1, 0x32

    .line 490
    .local v1, len:I
    :goto_7f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Acquire: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handle:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sql:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v1           #len:I
    :cond_d8
    if-eqz p1, :cond_16

    goto/16 :goto_16

    .line 489
    :cond_dc
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, 0x32

    goto :goto_7f
.end method

.method private lockForced()V
    .registers 3

    .prologue
    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 527
    return-void
.end method

.method private lockForced(Ljava/lang/String;)V
    .registers 3
    .parameter "sql"

    .prologue
    .line 530
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 531
    return-void
.end method

.method private logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .parameter "sql"
    .parameter "beginMillis"
    .parameter "prefix"

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 2149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 2150
    .local v1, durationMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_14

    .line 2190
    :goto_13
    return-void

    .line 2155
    :cond_14
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_22

    .line 2156
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2158
    :cond_22
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_74

    .line 2159
    const/16 v3, 0x64

    .line 2167
    .local v3, samplePercent:I
    :cond_2b
    if-eqz p4, :cond_3e

    .line 2168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2170
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_48

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2180
    :cond_48
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, blockingPackage:Ljava/lang/String;
    if-nez v0, :cond_50

    const-string v0, ""

    .line 2183
    :cond_50
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_13

    .line 2161
    .end local v0           #blockingPackage:Ljava/lang/String;
    .end local v3           #samplePercent:I
    :cond_74
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 2162
    .restart local v3       #samplePercent:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2b

    goto :goto_13
.end method

.method private native native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I
.end method

.method private final native native_finalize(I)V
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_releaseCustomFunction(I)V
.end method

.method private native native_setLocale(Ljava/lang/String;I)V
.end method

.method private native native_setSqliteSoftHeapLimit(I)V
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    .line 1038
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 9
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"

    .prologue
    const/4 v4, 0x0

    .line 1062
    invoke-static {p0, p1, p2, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1066
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    sget v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    if-nez v2, :cond_16

    .line 1069
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 1072
    :cond_16
    iput-boolean v4, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 1073
    sget v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    .line 1074
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 1079
    :try_start_21
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_21 .. :try_end_26} :catch_35

    .line 1094
    sget-object v3, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1095
    :try_start_29
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_3a

    .line 1097
    return-object v1

    .line 1081
    :catch_35
    move-exception v0

    .line 1089
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1090
    throw v0

    .line 1096
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method private static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;
    .registers 12
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    .line 1103
    sget-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v1, :cond_7

    .line 1104
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->ensureReceiverInited()V

    .line 1107
    :cond_7
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V

    .line 1109
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_11
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1110
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opening the db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_33
    invoke-direct {v0, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 1115
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_44

    .line 1116
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;S)V

    .line 1118
    :cond_44
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_4b

    .line 1119
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;S)V

    .line 1122
    :cond_4b
    sget-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v1, :cond_52

    .line 1123
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->hookDBIfNecessary()V
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11 .. :try_end_52} :catch_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_52} :catch_5e

    .line 1129
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_52
    :goto_52
    return-object v0

    .line 1127
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_53
    move-exception v6

    .line 1128
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, v0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1129
    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_52

    .line 1130
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_5e
    move-exception v6

    .line 1131
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    const-string v2, "Failed to open the database. closing it."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1133
    throw v6
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "file"
    .parameter "factory"

    .prologue
    .line 1141
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "path"
    .parameter "factory"

    .prologue
    .line 1148
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .parameter "path"
    .parameter "factory"
    .parameter "errorHandler"

    .prologue
    .line 1156
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private releaseCustomFunctions()V
    .registers 5

    .prologue
    .line 1341
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1343
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1344
    .local v0, function:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->native_releaseCustomFunction(I)V

    .line 1342
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1346
    .end local v0           #function:Ljava/lang/Integer;
    :cond_1e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1347
    monitor-exit v3

    .line 1348
    return-void

    .line 1347
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 2627
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_e

    if-ne p1, p0, :cond_f

    .line 2637
    :cond_e
    :goto_e
    return-void

    .line 2630
    :cond_f
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2631
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2632
    :cond_28
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2633
    :cond_36
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseDbConnection threadid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", releasing # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_71
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->release(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_e
.end method

.method public static native releaseMemory()I
.end method

.method private setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "dbPath"
    .parameter "mode"

    .prologue
    .line 1162
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1173
    :cond_e
    :goto_e
    return-void

    .line 1167
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA journal_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1170
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting journal_mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed for db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (on pragma set journal_mode, sqlite returned:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private setJournalSizeLimit(Ljava/lang/String;J)V
    .registers 9
    .parameter "dbPath"
    .parameter "size"

    .prologue
    .line 3220
    const-wide/16 v2, -0x2

    cmp-long v2, v2, p2

    if-nez v2, :cond_7

    .line 3232
    :cond_6
    :goto_6
    return-void

    .line 3223
    :cond_7
    const-string v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v0

    .line 3228
    .local v0, result:J
    cmp-long v2, p2, v0

    if-eqz v2, :cond_6

    .line 3229
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting journal_size_limit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed for db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (on pragma set journal_size_limit, sqlite returned:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private unlockForced()V
    .registers 3

    .prologue
    .line 563
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_10

    .line 564
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 565
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 568
    :cond_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    .line 569
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .registers 14
    .parameter "checkFullyYielded"
    .parameter "sleepAfterYieldDelay"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 964
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_1a

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 968
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 969
    const/4 v4, 0x0

    .line 999
    :goto_19
    return v4

    .line 971
    :cond_1a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 972
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 973
    .local v3, transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 974
    if-eqz p1, :cond_32

    .line 975
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 976
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 980
    :cond_32
    cmp-long v4, p2, v8

    if-lez v4, :cond_4c

    .line 984
    move-wide v1, p2

    .line 985
    .local v1, remainingDelay:J
    :cond_37
    cmp-long v4, v1, v8

    if-lez v4, :cond_4c

    .line 987
    cmp-long v4, v1, v6

    if-gez v4, :cond_51

    move-wide v4, v1

    :goto_40
    :try_start_40
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_53

    .line 992
    :goto_43
    sub-long/2addr v1, v6

    .line 993
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_37

    .line 998
    .end local v1           #remainingDelay:J
    :cond_4c
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 999
    const/4 v4, 0x1

    goto :goto_19

    .restart local v1       #remainingDelay:J
    :cond_51
    move-wide v4, v6

    .line 987
    goto :goto_40

    .line 989
    :catch_53
    move-exception v0

    .line 990
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_43
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .registers 9
    .parameter "name"
    .parameter "numArgs"
    .parameter "function"

    .prologue
    .line 1328
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1329
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1330
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I

    move-result v0

    .line 1331
    .local v0, ref:I
    if-eqz v0, :cond_18

    .line 1333
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    monitor-exit v2

    .line 1338
    return-void

    .line 1335
    :cond_18
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to add custom function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    .end local v0           #ref:I
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_31

    throw v1
.end method

.method declared-synchronized addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 4
    .parameter "closable"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .registers 10
    .parameter "sql"
    .parameter "compiledStatement"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2253
    monitor-enter p0

    :try_start_3
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9f

    move-result-object v5

    if-eqz v5, :cond_d

    .line 2284
    :goto_b
    monitor-exit p0

    return-void

    .line 2257
    :cond_d
    :try_start_d
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_a2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    .line 2260
    .local v1, maxCacheSz:I
    :goto_17
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v5, :cond_c2

    .line 2261
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_af

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_ac

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-ne v5, v1, :cond_ac

    .line 2265
    .local v2, printWarning:Z
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_c2

    .line 2270
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use setMaxSqlCacheSize() to increase cachesize. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    .line 2273
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Here are the SQL statements in Cache of database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2275
    .local v3, s:Ljava/lang/String;
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sql statement in Cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_d .. :try_end_9e} :catchall_9f

    goto :goto_7a

    .line 2253
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxCacheSz:I
    .end local v2           #printWarning:Z
    .end local v3           #s:Ljava/lang/String;
    :catchall_9f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2257
    :cond_a2
    :try_start_a2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    goto/16 :goto_17

    .restart local v1       #maxCacheSz:I
    :cond_ac
    move v2, v4

    .line 2261
    goto/16 :goto_2b

    :cond_af
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_bf

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-eq v5, v1, :cond_2b

    :cond_bf
    move v2, v4

    goto/16 :goto_2b

    .line 2283
    :cond_c2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_a2 .. :try_end_c7} :catchall_9f

    goto/16 :goto_b
.end method

.method declared-synchronized amIInTransaction()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 892
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 893
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_35

    .line 895
    .local v0, b:Z
    :cond_10
    :goto_10
    const-string v2, "SQLiteDatabase"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 896
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amIinTransaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_43

    .line 898
    :cond_31
    monitor-exit p0

    return v0

    .end local v0           #b:Z
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_33
    move-object v1, p0

    .line 892
    goto :goto_a

    .line 893
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_35
    :try_start_35
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-nez v2, :cond_41

    iget-object v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_43

    move-result v2

    if-eqz v2, :cond_10

    :cond_41
    const/4 v0, 0x1

    goto :goto_10

    .line 892
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public beginTransaction()V
    .registers 3

    .prologue
    .line 619
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 620
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .registers 3

    .prologue
    .line 643
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 644
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .parameter "transactionListener"

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 673
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3
    .parameter "transactionListener"

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 702
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 1195
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1224
    :goto_7
    return-void

    .line 1198
    :cond_8
    const-string v0, "SQLiteDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1199
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (connection # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_36
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1205
    :try_start_39
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_6a

    move-result v0

    if-nez v0, :cond_43

    .line 1222
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_7

    .line 1208
    :cond_43
    :try_start_43
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1210
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1211
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V

    .line 1213
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    .line 1214
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_3f

    .line 1215
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1216
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_6f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_6a
    .catchall {:try_start_43 .. :try_end_6a} :catchall_6a

    .line 1222
    :catchall_6a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 1217
    :cond_6f
    :try_start_6f
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_7a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_6a

    goto :goto_3f
.end method

.method closeDatabase()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 1251
    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 1254
    .local v4, handle:I
    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteUnfinalizedObjectsException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1302
    :cond_5
    :goto_5
    return-void

    .line 1255
    :catch_6
    move-exception v1

    .line 1256
    .local v1, e:Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, msg:Ljava/lang/String;
    const-string v10, ","

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 1258
    .local v9, tokens:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1260
    .local v8, stmtId:I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1261
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1262
    .local v3, found:Z
    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 1263
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1264
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteClosable;

    .line 1265
    .local v7, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v7, :cond_24

    instance-of v10, v7, Landroid/database/sqlite/SQLiteProgram;

    if-eqz v10, :cond_24

    .line 1266
    check-cast v7, Landroid/database/sqlite/SQLiteProgram;

    .end local v7           #program:Landroid/database/sqlite/SQLiteClosable;
    iget-object v0, v7, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 1267
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    iget v10, v0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-ne v10, v8, :cond_24

    .line 1268
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1269
    const/4 v3, 0x1

    goto :goto_24

    .line 1273
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    :cond_4a
    if-nez v3, :cond_67

    .line 1276
    iget-object v10, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1277
    const-string v10, "SQLiteDatabase"

    const-string/jumbo v11, "this shouldn\'t happen. finalizing the statement now: "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1280
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    goto :goto_5

    .line 1284
    :cond_67
    new-instance v10, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close() on database: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed due to un-close()d SQL statements: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method closePendingStatements()V
    .registers 6

    .prologue
    .line 2396
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2398
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2413
    :cond_b
    return-void

    .line 2401
    :cond_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 2403
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2404
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2405
    :try_start_1d
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2406
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2407
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_3f

    .line 2409
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2410
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, v2, :cond_b

    .line 2411
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->native_finalize(I)V

    .line 2410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2407
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1495
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .parameter "connectionNum"

    .prologue
    .line 2580
    const-string v1, "SQLiteDatabase"

    const-string v2, "Create pool connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    or-int/lit8 v3, v3, 0x1

    const v4, -0x10000001

    and-int/2addr v3, v4

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2583
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iput-object p0, v0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 2584
    return-object v0
.end method

.method declared-synchronized deallocCachedSqlStatements()V
    .registers 4

    .prologue
    .line 2288
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2289
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 2288
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2291
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_22
    :try_start_22
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 2292
    monitor-exit p0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1865
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1873
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_35
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 1874
    .local v2, ret:I
    sget-boolean v4, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v4, :cond_74

    .line 1875
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    if-eqz v4, :cond_74

    .line 1877
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->isHookableTable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1878
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1879
    .local v1, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1881
    sget-object v4, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendIntent(Landroid/os/Message;)V
    :try_end_74
    .catchall {:try_start_35 .. :try_end_74} :catchall_80
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_35 .. :try_end_74} :catch_7b

    .line 1891
    .end local v1           #msg:Landroid/os/Message;
    :cond_74
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1885
    return v2

    .line 1865
    .end local v2           #ret:I
    .end local v3           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_78
    const-string v4, ""

    goto :goto_2a

    .line 1887
    .restart local v3       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_7b
    move-exception v0

    .line 1888
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_7c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1889
    throw v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_80

    .line 1891
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_80
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v4
.end method

.method public disableWriteAheadLogging()V
    .registers 3

    .prologue
    .line 2525
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2527
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_b

    .line 2551
    :goto_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2553
    return-void

    .line 2530
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V

    .line 2533
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 2551
    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public enableWriteAheadLogging()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2466
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2468
    const-string v1, "SQLiteDatabase"

    const-string v2, "Can not to set journal mode for in memory database or read only database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :goto_f
    return v0

    .line 2473
    :cond_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2475
    :try_start_13
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_60

    if-eqz v2, :cond_1c

    .line 2514
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    .line 2477
    goto :goto_f

    .line 2479
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v3, ":memory:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2480
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_60

    .line 2514
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_f

    .line 2486
    :cond_31
    :try_start_31
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-eqz v2, :cond_65

    .line 2487
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2488
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_31 .. :try_end_5f} :catchall_60

    goto :goto_2d

    .line 2514
    :catchall_60
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 2493
    :cond_65
    :try_start_65
    new-instance v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/DatabaseConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 2494
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, "WAL"

    invoke-direct {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_60

    .line 2514
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    .line 2512
    goto :goto_f
.end method

.method public endTransaction()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 757
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 759
    :try_start_4
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_1a

    .line 760
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 764
    :goto_b
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1e

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    .line 821
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 822
    :goto_16
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 828
    return-void

    .line 762
    :cond_1a
    const/4 v3, 0x0

    :try_start_1b
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_b

    .line 821
    :catchall_1e
    move-exception v3

    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 822
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 821
    throw v3

    .line 767
    :cond_25
    const/4 v2, 0x0

    .line 768
    .local v2, savedException:Ljava/lang/RuntimeException;
    :try_start_26
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_1e

    if-eqz v3, :cond_33

    .line 770
    :try_start_2a
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v3, :cond_5a

    .line 771
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v3}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_1e
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_33} :catch_60

    .line 780
    :cond_33
    :goto_33
    :try_start_33
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v3, :cond_6a

    .line 781
    const-string v3, "COMMIT;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v3, :cond_57

    .line 791
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_1e

    .line 793
    .local v0, canDumpSql:Z
    const/4 v3, 0x0

    :try_start_43
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 794
    const-string v3, "PRAGMA wal_checkpoint;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_66

    .line 796
    :try_start_4a
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 799
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v3, :cond_57

    .line 800
    const-string v3, "SQLiteDatabase"

    const-string v4, "PRAGMA wal_Checkpoint done"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_1e

    .line 821
    .end local v0           #canDumpSql:Z
    :cond_57
    :goto_57
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    goto :goto_16

    .line 773
    :cond_5a
    :try_start_5a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v3}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_1e
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5f} :catch_60

    goto :goto_33

    .line 775
    :catch_60
    move-exception v1

    .line 776
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    .line 777
    const/4 v3, 0x0

    :try_start_63
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    goto :goto_33

    .line 796
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #canDumpSql:Z
    :catchall_66
    move-exception v3

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    throw v3
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_1e

    .line 809
    .end local v0           #canDumpSql:Z
    :cond_6a
    :try_start_6a
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 810
    if-eqz v2, :cond_57

    .line 811
    throw v2
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_1e
    .catch Landroid/database/SQLException; {:try_start_6a .. :try_end_72} :catch_72

    .line 813
    :catch_72
    move-exception v3

    goto :goto_57
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1984
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1985
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2031
    if-nez p2, :cond_a

    .line 2032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2034
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2035
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2056
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2057
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 2060
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 2061
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_35

    .line 2064
    :cond_31
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2066
    return-void

    .line 2064
    :catchall_35
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finalizeStatementLater(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 2371
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2382
    :goto_6
    return-void

    .line 2375
    :cond_7
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2376
    :try_start_a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2378
    monitor-exit v1

    goto :goto_6

    .line 2381
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0

    .line 2380
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_18

    goto :goto_6
.end method

.method public getAttachedDbs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2724
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2758
    :cond_7
    :goto_7
    return-object v0

    .line 2727
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2728
    .local v0, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-nez v2, :cond_1f

    .line 2738
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2742
    :cond_1f
    const/4 v1, 0x0

    .line 2744
    .local v1, c:Landroid/database/Cursor;
    :try_start_20
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2745
    :goto_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2751
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_41

    goto :goto_28

    .line 2754
    :catchall_41
    move-exception v2

    if-eqz v1, :cond_47

    .line 2755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2754
    :cond_47
    throw v2

    :cond_48
    if-eqz v1, :cond_7

    .line 2755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method declared-synchronized getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .registers 3
    .parameter "sql"

    .prologue
    .line 2299
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "sql"

    .prologue
    .line 2556
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2559
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2573
    .end local p0
    :goto_12
    return-object p0

    .line 2569
    .restart local p0
    :cond_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_12

    .line 2573
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_12
.end method

.method getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .parameter "sql"

    .prologue
    .line 2596
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2601
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2616
    .end local p0
    :cond_9
    :goto_9
    return-object p0

    .line 2608
    .restart local p0
    :cond_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_9

    .line 2612
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2613
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2614
    :cond_2b
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_36
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_9
.end method

.method declared-synchronized getLastSqlStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .registers 5

    .prologue
    .line 1384
    const-string v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1385
    .local v0, pageCount:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .registers 3

    .prologue
    .line 1413
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getQueuedUpStmtList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2419
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1007
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public getVersion()I
    .registers 4

    .prologue
    .line 1365
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 1718
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1721
    :goto_5
    return-wide v1

    .line 1719
    :catch_6
    move-exception v0

    .line 1720
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 16
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1816
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1817
    .local v7, sql:Ljava/lang/StringBuilder;
    const-string v9, "INSERT"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    const-string v9, " INTO "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1823
    const/4 v0, 0x0

    .line 1824
    .local v0, bindArgs:[Ljava/lang/Object;
    if-eqz p3, :cond_58

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_58

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1825
    .local v6, size:I
    :goto_2b
    if-lez v6, :cond_77

    .line 1826
    new-array v0, v6, [Ljava/lang/Object;

    .line 1827
    const/4 v3, 0x0

    .line 1828
    .local v3, i:I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1829
    .local v1, colName:Ljava/lang/String;
    if-lez v3, :cond_5a

    const-string v9, ","

    :goto_48
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_38

    .line 1824
    .end local v1           #colName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #size:I
    :cond_58
    const/4 v6, 0x0

    goto :goto_2b

    .line 1829
    .restart local v1       #colName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #size:I
    :cond_5a
    const-string v9, ""

    goto :goto_48

    .line 1833
    .end local v1           #colName:Ljava/lang/String;
    :cond_5d
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1834
    const-string v9, " VALUES ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const/4 v3, 0x0

    :goto_68
    if-ge v3, v6, :cond_8d

    .line 1836
    if-lez v3, :cond_74

    const-string v9, ",?"

    :goto_6e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 1836
    :cond_74
    const-string v9, "?"

    goto :goto_6e

    .line 1839
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") VALUES (NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    :cond_8d
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1845
    .local v8, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_9b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9b .. :try_end_9e} :catch_a3

    move-result-wide v9

    .line 1850
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1845
    return-wide v9

    .line 1846
    :catch_a3
    move-exception v2

    .line 1847
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_a4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1848
    throw v2
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8

    .line 1850
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_a8
    move-exception v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v9
.end method

.method public isDatabaseIntegrityOk()Z
    .registers 10

    .prologue
    .line 2775
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2776
    const/4 v0, 0x0

    .line 2778
    .local v0, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2779
    if-nez v0, :cond_46

    .line 2780
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "databaselist for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " couldn\'t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "be retrieved. probably because the database is closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_33} :catch_33

    .line 2783
    :catch_33
    move-exception v1

    .line 2785
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2786
    .restart local v0       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "main"

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2788
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_be

    .line 2789
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2790
    .local v3, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2792
    .local v4, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".integrity_check(1);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2793
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v5

    .line 2794
    .local v5, rslt:Ljava/lang/String;
    const-string/jumbo v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b6

    .line 2796
    const-string v7, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA integrity_check on "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " returned: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_54 .. :try_end_a8} :catchall_af

    .line 2797
    const/4 v6, 0x0

    .line 2800
    if-eqz v4, :cond_ae

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2803
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v5           #rslt:Ljava/lang/String;
    :cond_ae
    :goto_ae
    return v6

    .line 2800
    .restart local v3       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_af
    move-exception v6

    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b5
    throw v6

    .restart local v5       #rslt:Ljava/lang/String;
    :cond_b6
    if-eqz v4, :cond_bb

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2788
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2803
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v5           #rslt:Ljava/lang/String;
    :cond_be
    const/4 v6, 0x1

    goto :goto_ae
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isInQueueOfStatementsToBeFinalized(I)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 2385
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2388
    const/4 v0, 0x1

    .line 2391
    :goto_7
    return v0

    .line 2390
    :cond_8
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2391
    :try_start_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_7

    .line 2392
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method

.method declared-synchronized isInStatementCache(Ljava/lang/String;)Z
    .registers 3
    .parameter "sql"

    .prologue
    .line 2344
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 2121
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReadOnly()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2114
    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method lock()V
    .registers 3

    .prologue
    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 452
    return-void
.end method

.method lock(Ljava/lang/String;)V
    .registers 3
    .parameter "sql"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .registers 4
    .parameter "sql"
    .parameter "beginMillis"

    .prologue
    .line 2141
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "table"
    .parameter "deletedTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1438
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1454
    return-void
.end method

.method public needUpgrade(I)Z
    .registers 3
    .parameter "newVersion"

    .prologue
    .line 2125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 406
    :cond_9
    return-void
.end method

.method onCorruption()V
    .registers 3

    .prologue
    .line 434
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 435
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 436
    return-void
.end method

.method onUpdate(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "opcode"
    .parameter "dbName"
    .parameter "tableName"
    .parameter "rowId"

    .prologue
    .line 3115
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->isHookableTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3125
    :goto_6
    return-void

    .line 3119
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3120
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3122
    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3124
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 1612
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1650
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1532
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1572
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1573
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1576
    .local v8, sql:Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 1665
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"

    .prologue
    .line 1683
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1684
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1686
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1687
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, v1, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .local v2, driver:Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v0, 0x0

    .line 1691
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1e

    .end local p1
    :goto_16
    :try_start_16
    invoke-interface {v2, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    move-result-object v0

    .line 1695
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1697
    return-object v0

    .line 1691
    .restart local p1
    :cond_1e
    :try_start_1e
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_16

    .line 1695
    .end local p1
    :catchall_21
    move-exception v3

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method declared-synchronized releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .registers 4
    .parameter "sql"
    .parameter "compiledSql"

    .prologue
    .line 2349
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_e

    .line 2351
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->release()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 2356
    :goto_c
    monitor-exit p0

    return-void

    .line 2354
    :cond_e
    :try_start_e
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_c

    .line 2349
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 3
    .parameter "closable"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 1764
    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1768
    :goto_5
    return-wide v1

    .line 1766
    :catch_6
    move-exception v0

    .line 1767
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1790
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized resetTransactionUsingExecSqlFlag()V
    .registers 3

    .prologue
    .line 866
    monitor-enter p0

    :try_start_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 867
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_15

    .line 868
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'commit or end or rollback\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 872
    monitor-exit p0

    return-void

    .line 866
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLastSqlStatement(Ljava/lang/String;)V
    .registers 3
    .parameter "sql"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 2220
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2222
    :try_start_3
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 2224
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2226
    return-void

    .line 2224
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .registers 2
    .parameter "lockingEnabled"

    .prologue
    .line 424
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 425
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .registers 8
    .parameter "cacheSize"

    .prologue
    .line 2317
    monitor-enter p0

    .line 2318
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2319
    .local v2, oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    const/16 v3, 0x64

    if-gt p1, v3, :cond_9

    if-gez p1, :cond_14

    .line 2320
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "expected value between 0 and 100"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2340
    .end local v2           #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :catchall_11
    move-exception v3

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v3

    .line 2322
    .restart local v2       #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :cond_14
    if-eqz v2, :cond_24

    :try_start_16
    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    if-ge p1, v3, :cond_24

    .line 2323
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2326
    :cond_24
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, p0, p1}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2334
    if-eqz v2, :cond_53

    .line 2336
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2337
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 2340
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_11

    .line 2341
    return-void
.end method

.method public setMaximumSize(J)J
    .registers 13
    .parameter "numBytes"

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1397
    .local v4, pageSize:J
    div-long v2, p1, v4

    .line 1399
    .local v2, numPages:J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_11

    .line 1400
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1402
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1404
    .local v0, newPageCount:J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .registers 5
    .parameter "numBytes"

    .prologue
    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public setTransactionSuccessful()V
    .registers 3

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 841
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_14

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_14
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_21

    .line 845
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 849
    return-void
.end method

.method declared-synchronized setTransactionUsingExecSqlFlag()V
    .registers 3

    .prologue
    .line 859
    monitor-enter p0

    :try_start_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 860
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'begin transaction\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 863
    monitor-exit p0

    return-void

    .line 859
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVersion(I)V
    .registers 4
    .parameter "version"

    .prologue
    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method unlock()V
    .registers 5

    .prologue
    .line 539
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v1, :cond_5

    .line 555
    :goto_4
    return-void

    .line 540
    :cond_5
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v1, :cond_15

    .line 541
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 542
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 546
    :cond_15
    const/4 v0, 0x0

    .line 547
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_THREAD_LOCK_POINT:Z

    if-eqz v1, :cond_6b

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Acquire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_6b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    goto :goto_4
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1906
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 19
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1922
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_10

    .line 1923
    :cond_8
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Empty values"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1926
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1927
    .local v9, sql:Ljava/lang/StringBuilder;
    const-string v11, "UPDATE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    sget-object v11, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    const-string v11, " SET "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    .line 1934
    .local v8, setValuesSize:I
    if-nez p4, :cond_62

    move v2, v8

    .line 1935
    .local v2, bindArgsSize:I
    :goto_32
    new-array v1, v2, [Ljava/lang/Object;

    .line 1936
    .local v1, bindArgs:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1937
    .local v5, i:I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1938
    .local v3, colName:Ljava/lang/String;
    if-lez v5, :cond_68

    const-string v11, ","

    :goto_4d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 1941
    const-string v11, "=?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_3d

    .line 1934
    .end local v1           #bindArgs:[Ljava/lang/Object;
    .end local v2           #bindArgsSize:I
    .end local v3           #colName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_62
    move-object/from16 v0, p4

    array-length v11, v0

    add-int v2, v8, v11

    goto :goto_32

    .line 1938
    .restart local v1       #bindArgs:[Ljava/lang/Object;
    .restart local v2       #bindArgsSize:I
    .restart local v3       #colName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_68
    const-string v11, ""

    goto :goto_4d

    .line 1943
    .end local v3           #colName:Ljava/lang/String;
    :cond_6b
    if-eqz p4, :cond_79

    .line 1944
    move v5, v8

    :goto_6e
    if-ge v5, v2, :cond_79

    .line 1945
    sub-int v11, v5, v8

    aget-object v11, p4, v11

    aput-object v11, v1, v5

    .line 1944
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 1948
    :cond_79
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_89

    .line 1949
    const-string v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    :cond_89
    new-instance v10, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1955
    .local v10, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_92
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_92 .. :try_end_95} :catch_9a

    move-result v11

    .line 1960
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1955
    return v11

    .line 1956
    :catch_9a
    move-exception v4

    .line 1957
    .local v4, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_9b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1958
    throw v4
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    .line 1960
    .end local v4           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_9f
    move-exception v11

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v11
.end method

.method verifyDbIsOpen()V
    .registers 4

    .prologue
    .line 2229
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_35

    .line 2230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (conn# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2233
    :cond_35
    return-void
.end method

.method verifyLockOwner()V
    .registers 3

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2237
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t have database lock!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2240
    :cond_15
    return-void
.end method

.method public yieldIfContended()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 932
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .registers 4

    .prologue
    .line 945
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .registers 4
    .parameter "sleepAfterYieldDelay"

    .prologue
    .line 960
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
