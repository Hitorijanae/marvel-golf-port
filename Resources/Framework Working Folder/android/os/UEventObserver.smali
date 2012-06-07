.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEventThread;,
        Landroid/os/UEventObserver$UEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sThread:Landroid/os/UEventObserver$UEventThread;

.field private static sThreadStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Landroid/os/UEventObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/UEventObserver;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/UEventObserver;->sThreadStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Landroid/os/UEventObserver;->native_setup()V

    return-void
.end method

.method static synthetic access$100([B)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/os/UEventObserver;->next_event([B)I

    move-result v0

    return v0
.end method

.method private static final declared-synchronized ensureThreadStarted()V
    .registers 2

    .prologue
    .line 174
    const-class v1, Landroid/os/UEventObserver;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/os/UEventObserver;->sThreadStarted:Z

    if-nez v0, :cond_16

    .line 175
    new-instance v0, Landroid/os/UEventObserver$UEventThread;

    invoke-direct {v0}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    sput-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 176
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0}, Landroid/os/UEventObserver$UEventThread;->start()V

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/UEventObserver;->sThreadStarted:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 179
    :cond_16
    monitor-exit v1

    return-void

    .line 174
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native native_setup()V
.end method

.method private static native next_event([B)I
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 217
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 219
    return-void

    .line 217
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final declared-synchronized startObserving(Ljava/lang/String;)V
    .registers 3
    .parameter "match"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/UEventObserver;->ensureThreadStarted()V

    .line 195
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 196
    monitor-exit p0

    return-void

    .line 194
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopObserving()V
    .registers 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
