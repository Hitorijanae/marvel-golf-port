.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 120
    :goto_5
    return-void

    .line 113
    :pswitch_6
    const-string v0, "BluetoothA2dpService"

    const-string v1, "Timed outM - Sending Playstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto :goto_5

    .line 117
    :pswitch_19
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_5

    .line 111
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method
