.class Landroid/media/MediaPluginDLNA$RendererListener;
.super Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$RendererListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 208
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::OnConnected uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::OnConnected rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$500(Landroid/media/MediaPluginDLNA;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 211
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "ignore onMirrorRendererConnected callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_40
    return-void

    .line 214
    :cond_41
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/media/MediaPluginDLNA;->access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v1, 0x0

    #setter for: Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$502(Landroid/media/MediaPluginDLNA;Z)Z

    goto :goto_40
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 236
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onDisconnected => uniqueID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onDisconnected => errorID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onDisconnected => errorReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 223
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onMirrorConnected uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onMirrorConnected rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$500(Landroid/media/MediaPluginDLNA;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 226
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "ignore onMirrorRendererConnected callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_40
    return-void

    .line 229
    :cond_41
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/media/MediaPluginDLNA;->access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v1, 0x0

    #setter for: Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$502(Landroid/media/MediaPluginDLNA;Z)Z

    goto :goto_40
.end method
