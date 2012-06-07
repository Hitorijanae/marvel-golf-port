.class Landroid/os/memory/RunningState$1;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Landroid/os/memory/RunningState;


# direct methods
.method constructor <init>(Landroid/os/memory/RunningState;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    .line 179
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 203
    :cond_6
    :goto_6
    return-void

    .line 181
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    :goto_c
    iput v1, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    goto :goto_6

    :cond_f
    const/4 v1, 0x1

    goto :goto_c

    .line 186
    :pswitch_11
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v2, v1, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_16
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-boolean v1, v1, Landroid/os/memory/RunningState;->mResumed:Z

    if-nez v1, :cond_21

    .line 188
    monitor-exit v2

    goto :goto_6

    .line 190
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 191
    invoke-virtual {p0, v3}, Landroid/os/memory/RunningState$1;->removeMessages(I)V

    .line 192
    invoke-virtual {p0, v3}, Landroid/os/memory/RunningState$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/memory/RunningState$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_6

    .line 198
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    iget v2, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    invoke-interface {v1, v2}, Landroid/os/memory/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    goto :goto_6

    .line 179
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
