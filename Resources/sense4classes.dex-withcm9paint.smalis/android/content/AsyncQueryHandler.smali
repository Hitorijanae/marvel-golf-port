.class public abstract Landroid/content/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncQueryHandler$WorkerHandler;,
        Landroid/content/AsyncQueryHandler$WorkerArgs;,
        Landroid/content/AsyncQueryHandler$TraceMapKey;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static final mTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/AsyncQueryHandler$TraceMapKey;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 155
    const-class v2, Landroid/content/AsyncQueryHandler;

    monitor-enter v2

    .line 156
    :try_start_d
    sget-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_21

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 162
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    .line 163
    sget-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Landroid/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 164
    return-void

    .line 162
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method static synthetic access$000(Landroid/content/AsyncQueryHandler;Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method private removeTraceMap(I)V
    .registers 5
    .parameter "token"

    .prologue
    .line 478
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 479
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/AsyncQueryHandler$TraceMapKey;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AsyncQueryHandler$TraceMapKey;

    .line 483
    .local v1, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iget v2, v1, Landroid/content/AsyncQueryHandler$TraceMapKey;->token:I

    if-ne p1, v2, :cond_a

    .line 484
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 487
    .end local v1           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :cond_20
    return-void
.end method

.method private removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;
    .registers 5
    .parameter "args"

    .prologue
    .line 463
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 464
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/AsyncQueryHandler$TraceMapKey;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AsyncQueryHandler$TraceMapKey;

    .line 468
    .local v1, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iget-object v2, v1, Landroid/content/AsyncQueryHandler$TraceMapKey;->args:Landroid/content/AsyncQueryHandler$WorkerArgs;

    if-ne p1, v2, :cond_a

    .line 469
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 473
    .end local v1           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method


# virtual methods
.method public final cancelOperation(I)V
    .registers 4
    .parameter "token"

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v1

    if-ne v0, v1, :cond_a

    .line 280
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;->removeTraceMap(I)V

    .line 284
    :cond_a
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .parameter "looper"

    .prologue
    .line 167
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 428
    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 429
    .local v2, token:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 432
    .local v1, event:I
    packed-switch v1, :pswitch_data_46

    .line 458
    :goto_b
    return-void

    .line 435
    :pswitch_c
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v3, v4, :cond_16

    .line 438
    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    .line 443
    :cond_16
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_b

    .line 447
    :pswitch_20
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_b

    .line 451
    :pswitch_2a
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_b

    .line 455
    :pswitch_38
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_b

    .line 432
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_c
        :pswitch_20
        :pswitch_2a
        :pswitch_38
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 417
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 391
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 378
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 404
    return-void
.end method

.method protected final setDebugTrace(Landroid/database/Cursor;Landroid/content/AsyncQueryHandler$WorkerArgs;)V
    .registers 6
    .parameter "cursor"
    .parameter "args"

    .prologue
    .line 189
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_d

    .line 191
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 195
    .local v0, elem:[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_e

    .line 207
    .end local v0           #elem:[Ljava/lang/StackTraceElement;
    .end local p1
    :cond_d
    :goto_d
    return-void

    .line 201
    .restart local v0       #elem:[Ljava/lang/StackTraceElement;
    .restart local p1
    :cond_e
    if-eqz p1, :cond_d

    .line 202
    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_d

    .line 203
    check-cast p1, Landroid/database/CursorWrapper;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->setAsyncQueryStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_d
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 354
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 355
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 357
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 358
    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 359
    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 360
    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 361
    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 362
    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 363
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 300
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 303
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 304
    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 305
    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 306
    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 307
    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 308
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    const/4 v5, 0x1

    .line 236
    iget-object v4, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 237
    .local v2, msg:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 239
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 240
    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 241
    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 242
    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 243
    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 244
    iput-object p6, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 245
    iput-object p7, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 246
    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 247
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v5, v4, :cond_3b

    .line 253
    new-instance v3, Landroid/content/AsyncQueryHandler$TraceMapKey;

    invoke-direct {v3, p0}, Landroid/content/AsyncQueryHandler$TraceMapKey;-><init>(Landroid/content/AsyncQueryHandler;)V

    .line 254
    .local v3, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iput p1, v3, Landroid/content/AsyncQueryHandler$TraceMapKey;->token:I

    .line 255
    iput-object v0, v3, Landroid/content/AsyncQueryHandler$TraceMapKey;->args:Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 257
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 258
    .local v1, elem:[Ljava/lang/StackTraceElement;
    sget-object v4, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v1           #elem:[Ljava/lang/StackTraceElement;
    .end local v3           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :cond_3b
    iget-object v4, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 326
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 327
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 329
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 330
    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 331
    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 332
    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 333
    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 334
    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 335
    iput-object p6, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 336
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method
