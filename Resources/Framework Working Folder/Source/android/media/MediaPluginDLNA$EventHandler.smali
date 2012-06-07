.class Landroid/media/MediaPluginDLNA$EventHandler;
.super Landroid/os/Handler;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method public constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 244
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    .line 245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 249
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_f8

    .line 298
    :goto_1f
    return-void

    .line 252
    :sswitch_20
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[msg handler connect to DLNAMiddleLayer]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    if-nez v3, :cond_38

    .line 254
    const-string v3, "[MediaPluginDLNA]"

    const-string/jumbo v4, "mDLNAManager is null, can not start to play..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 257
    :cond_38
    monitor-enter p0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, extra:I
    :try_start_3a
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v0

    .line 260
    .local v0, DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v0, :cond_b4

    .line 261
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/media/MediaPluginDLNA;->access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare DMR id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v2, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 265
    .local v2, statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v3, 0x4

    iput v3, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 266
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 267
    const/16 v1, 0x2081

    .line 278
    .end local v2           #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :goto_88
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v3

    const/16 v4, 0x2080

    invoke-interface {v3, v4, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 280
    monitor-exit p0

    goto :goto_1f

    .end local v0           #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    :catchall_a0
    move-exception v3

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_3a .. :try_end_a2} :catchall_a0

    throw v3

    .line 269
    .restart local v0       #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    .restart local v2       #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_a3
    :try_start_a3
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "DLNAController prepare failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v1, 0x2082

    .line 271
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v4, 0x1008

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v3, v4}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    goto :goto_88

    .line 274
    .end local v2           #statusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_b4
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "DLNAController get DMR id failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_a0

    .line 275
    const/16 v1, 0x2082

    goto :goto_88

    .line 283
    .end local v0           #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    .end local v1           #extra:I
    :sswitch_be
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[msg handler pause]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-enter p0

    .line 285
    :try_start_c6
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    if-eqz v3, :cond_e5

    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$800(Landroid/media/MediaPluginDLNA;)Z

    move-result v3

    if-nez v3, :cond_e5

    .line 286
    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 290
    :goto_df
    monitor-exit p0

    goto/16 :goto_1f

    :catchall_e2
    move-exception v3

    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_c6 .. :try_end_e4} :catchall_e2

    throw v3

    .line 288
    :cond_e5
    :try_start_e5
    const-string v3, "[MediaPluginDLNA]"

    const-string/jumbo v4, "seeking now, do not do pause"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_e2

    goto :goto_df

    .line 293
    :sswitch_ee
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[msg handler seekTo]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 250
    nop

    :sswitch_data_f8
    .sparse-switch
        0x1000 -> :sswitch_20
        0x1020 -> :sswitch_be
        0x1400 -> :sswitch_ee
    .end sparse-switch
.end method
