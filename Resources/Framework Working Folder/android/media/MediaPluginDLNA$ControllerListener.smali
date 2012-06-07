.class Landroid/media/MediaPluginDLNA$ControllerListener;
.super Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .registers 2
    .parameter "ctlInfo"

    .prologue
    .line 189
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 193
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-lez p2, :cond_39

    .line 195
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 196
    :cond_39
    return-void
.end method

.method public onPlayStateChanged(I)V
    .registers 6
    .parameter "playState"

    .prologue
    const/16 v1, 0x1800

    const/4 v3, 0x0

    .line 136
    sparse-switch p1, :sswitch_data_de

    .line 181
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged:: unknow state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_1f
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$700(Landroid/media/MediaPluginDLNA;)I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 185
    return-void

    .line 138
    :sswitch_2f
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1010

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 139
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 140
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 141
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 144
    :sswitch_49
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1040

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 145
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 146
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 149
    :sswitch_5e
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1020

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 150
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 151
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 154
    :sswitch_73
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 155
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 156
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_TRANSITIONING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 159
    :sswitch_86
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 160
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 161
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_BUFFERING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 164
    :sswitch_99
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 165
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_SENDING_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 168
    :sswitch_a8
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_NO_MEDIA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 171
    :sswitch_b2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1001

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 172
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 173
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 176
    :sswitch_c8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1080

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 177
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 178
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_AUTOPLAYWANTSHOWSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 136
    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_2f
        0x1 -> :sswitch_49
        0x2 -> :sswitch_5e
        0x5 -> :sswitch_73
        0x6 -> :sswitch_a8
        0x7 -> :sswitch_b2
        0x64 -> :sswitch_86
        0x6a -> :sswitch_99
        0x3e8 -> :sswitch_c8
    .end sparse-switch
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 200
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponse: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 202
    return-void
.end method
