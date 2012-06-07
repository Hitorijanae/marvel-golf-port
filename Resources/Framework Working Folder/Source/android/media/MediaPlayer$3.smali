.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlugin$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 3177
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .registers 6
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3204
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError=> what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_40

    .line 3206
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 3207
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 3208
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    .line 3211
    :cond_40
    return-void
.end method

.method public onResponse(II)V
    .registers 9
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3215
    const-string v1, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResponse=> what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const/4 v0, 0x0

    .line 3217
    .local v0, bDLNAConnected:Z
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_45

    .line 3218
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAInitDone:Z
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$1602(Landroid/media/MediaPlayer;Z)Z

    .line 3219
    sparse-switch p1, :sswitch_data_f0

    .line 3258
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3259
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, p1, p2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3263
    :cond_45
    :goto_45
    return-void

    .line 3221
    :sswitch_46
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    .line 3222
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_45

    .line 3225
    :sswitch_51
    packed-switch p2, :pswitch_data_fa

    .line 3235
    const-string v1, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown extra code for prepare response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    :goto_6c
    iget-object v4, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c4

    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_c4

    move v1, v2

    :goto_79
    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v4, v1}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    .line 3240
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 3241
    const-string v1, "MediaPlayer"

    const-string v2, "Prepare success and content is not audio only, enable DLNA mode; set setWirelessDisplayStatus(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;Z)V

    .line 3248
    :goto_90
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 3249
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3250
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, -0x1f4

    invoke-interface {v1, v2, v4, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_45

    .line 3227
    :pswitch_ae
    const-string v1, "MediaPlayer"

    const-string v4, "DLNA PREPARE SUCCESS"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    const/4 v0, 0x1

    .line 3229
    goto :goto_6c

    .line 3231
    :pswitch_b7
    const-string v1, "MediaPlayer"

    const-string v4, "DLNA PREPARE FAILED"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    goto :goto_6c

    :cond_c4
    move v1, v3

    .line 3238
    goto :goto_79

    .line 3245
    :cond_c6
    const-string v1, "MediaPlayer"

    const-string v4, "Prepare failed, do not enable DLNA mode; set setWirelessDisplayStatus(true)"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;Z)V

    goto :goto_90

    .line 3253
    :cond_d3
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 3254
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3255
    :cond_e8
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_45

    .line 3219
    nop

    :sswitch_data_f0
    .sparse-switch
        0x2041 -> :sswitch_46
        0x2080 -> :sswitch_51
    .end sparse-switch

    .line 3225
    :pswitch_data_fa
    .packed-switch 0x2081
        :pswitch_ae
        :pswitch_b7
    .end packed-switch
.end method

.method public onStateChanged(II)V
    .registers 6
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3187
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged=> what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    .line 3189
    packed-switch p1, :pswitch_data_46

    .line 3200
    :cond_2a
    :goto_2a
    return-void

    .line 3191
    :pswitch_2b
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3192
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3193
    iget-object v0, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    goto :goto_2a

    .line 3189
    nop

    :pswitch_data_46
    .packed-switch 0x1080
        :pswitch_2b
    .end packed-switch
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 3182
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3183
    return-void
.end method
