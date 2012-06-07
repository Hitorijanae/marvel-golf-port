.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;,
        Landroid/database/ContentObserver$NotificationRunnable;
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 150
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 151
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 155
    :goto_7
    return-void

    .line 153
    :cond_8
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .registers 3

    .prologue
    .line 107
    iget-object v1, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v0, :cond_e

    .line 109
    new-instance v0, Landroid/database/ContentObserver$Transport;

    invoke-direct {v0, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 111
    :cond_e
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 147
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .registers 4

    .prologue
    .line 122
    iget-object v2, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_3
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 124
    .local v0, oldTransport:Landroid/database/ContentObserver$Transport;
    if-eqz v0, :cond_d

    .line 125
    invoke-virtual {v0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 128
    :cond_d
    monitor-exit v2

    return-object v0

    .line 129
    .end local v0           #oldTransport:Landroid/database/ContentObserver$Transport;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
