.class Landroid/webkit/SslErrorHandlerImpl;
.super Landroid/webkit/SslErrorHandler;
.source "SslErrorHandlerImpl.java"


# static fields
.field private static final HANDLE_RESPONSE:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final mLoadListener:Landroid/webkit/LoadListener;

.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginHandler:Landroid/webkit/SslErrorHandler;

.field private mSslPrefTable:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    .line 81
    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 82
    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "origin"
    .parameter "listener"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 90
    iput-object p2, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    .line 91
    return-void
.end method

.method private declared-synchronized processNextLoader()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 188
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/LoadListener;

    .line 189
    .local v1, loader:Landroid/webkit/LoadListener;
    if-eqz v1, :cond_3c

    .line 191
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 194
    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_29

    .line 218
    :goto_17
    monitor-exit p0

    return v3

    .line 198
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v0

    .line 207
    .local v0, error:Landroid/net/http/SslError;
    invoke-virtual {p0, v1, v0}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 208
    iget-object v4, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_29

    goto :goto_17

    .line 188
    .end local v0           #error:Landroid/net/http/SslError;
    .end local v1           #loader:Landroid/webkit/LoadListener;
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 213
    .restart local v0       #error:Landroid/net/http/SslError;
    .restart local v1       #loader:Landroid/webkit/LoadListener;
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v2

    .line 214
    .local v2, proxy:Landroid/webkit/CallbackProxy;
    new-instance v3, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v3, p0, v1}, Landroid/webkit/SslErrorHandlerImpl;-><init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_29

    .line 218
    .end local v0           #error:Landroid/net/http/SslError;
    .end local v2           #proxy:Landroid/webkit/CallbackProxy;
    :cond_3c
    const/4 v3, 0x0

    goto :goto_17
.end method


# virtual methods
.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method declared-synchronized checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .registers 7
    .parameter "loader"
    .parameter "error"

    .prologue
    const/4 v2, 0x1

    .line 157
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 165
    .local v1, primary:I
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-gt v1, v3, :cond_26

    .line 166
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_24

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_28

    .line 171
    :cond_24
    :goto_24
    monitor-exit p0

    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_24

    .line 157
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #primary:I
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized clear()V
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fastProcessQueuedSslErrors()V
    .registers 2

    .prologue
    .line 179
    :cond_0
    invoke-direct {p0}, Landroid/webkit/SslErrorHandlerImpl;->processNextLoader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 60
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_26

    .line 71
    :goto_6
    return-void

    .line 62
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/LoadListener;

    .line 63
    .local v0, loader:Landroid/webkit/LoadListener;
    monitor-enter p0

    .line 64
    :try_start_c
    invoke-virtual {v0}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_24

    :goto_14
    invoke-virtual {p0, v0, v2, v1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V

    .line 66
    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V

    .line 68
    monitor-exit p0

    goto :goto_6

    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v1

    .line 64
    :cond_24
    const/4 v1, 0x0

    goto :goto_14

    .line 60
    :pswitch_data_26
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 142
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 144
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandlerImpl;->fastProcessQueuedSslErrors()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 147
    :cond_17
    monitor-exit p0

    return-void

    .line 141
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    .registers 8
    .parameter "loader"
    .parameter "error"
    .parameter "proceed"

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 256
    if-eqz p3, :cond_26

    .line 258
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    .line 259
    .local v2, primary:I
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 266
    .local v0, hasKey:Z
    if-eqz v0, :cond_21

    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_26

    .line 267
    :cond_21
    iget-object v3, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .end local v0           #hasKey:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #primary:I
    :cond_26
    invoke-virtual {p1, p3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 272
    :cond_29
    monitor-exit p0

    return-void

    .line 255
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public proceed()V
    .registers 7

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/SslErrorHandlerImpl;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method declared-synchronized restoreState(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "inState"

    .prologue
    .line 112
    monitor-enter p0

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    .line 113
    .local v0, success:Z
    :goto_4
    if-eqz v0, :cond_18

    .line 114
    :try_start_6
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_18

    .line 116
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 120
    :cond_18
    monitor-exit p0

    return v0

    .line 112
    .end local v0           #success:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_4

    .restart local v0       #success:Z
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized saveState(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "outState"

    .prologue
    .line 98
    monitor-enter p0

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 99
    .local v0, success:Z
    :goto_4
    if-eqz v0, :cond_e

    .line 101
    :try_start_6
    const-string/jumbo v1, "ssl-error-handler"

    iget-object v2, p0, Landroid/webkit/SslErrorHandlerImpl;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 104
    :cond_e
    monitor-exit p0

    return v0

    .line 98
    .end local v0           #success:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .restart local v0       #success:Z
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method
