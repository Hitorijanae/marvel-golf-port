.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 12
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    const v8, 0x22004

    const/4 v7, 0x2

    .line 359
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 360
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_1a0

    .line 451
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 452
    const/4 v4, 0x0

    .line 454
    :goto_41
    return v4

    .line 362
    :sswitch_42
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_5a

    .line 363
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Full connection with WifiStateMachine established"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/AsyncChannel;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$502(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 454
    :cond_58
    :goto_58
    :sswitch_58
    const/4 v4, 0x1

    goto :goto_41

    .line 366
    :cond_5a
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full connection failure, error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$502(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_58

    .line 372
    :sswitch_7c
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_8f

    .line 373
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Send failed, client connection lost"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 377
    :goto_87
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$502(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_58

    .line 375
    :cond_8f
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection lost with reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_87

    .line 381
    :sswitch_aa
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 382
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_58

    .line 386
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_c3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 387
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_58

    .line 390
    :sswitch_ce
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22002

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_58

    .line 394
    :sswitch_d7
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22005

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 398
    :sswitch_e1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22008

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 402
    :sswitch_eb
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200b

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 406
    :sswitch_f5
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200e

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 410
    :sswitch_ff
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22011

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 414
    :sswitch_109
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22014

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_58

    .line 418
    :sswitch_113
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22017

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_58

    .line 421
    :sswitch_123
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 422
    .local v3, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 423
    .local v1, cmd:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Custom command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 424
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, cmdResponse:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Custom command response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 426
    iput-object v2, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 427
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2201d

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_58

    .line 430
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #cmdResponse:Ljava/lang/String;
    .end local v3           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_169
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22019

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_58

    .line 433
    :sswitch_179
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2201b

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_58

    .line 436
    :sswitch_189
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isAirplaneModeOn()Z
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_58

    .line 439
    :sswitch_198
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_58

    .line 360
    nop

    :sswitch_data_1a0
    .sparse-switch
        0x11000 -> :sswitch_42
        0x11001 -> :sswitch_aa
        0x11004 -> :sswitch_7c
        0x20083 -> :sswitch_c3
        0x22001 -> :sswitch_ce
        0x22004 -> :sswitch_d7
        0x22007 -> :sswitch_e1
        0x2200a -> :sswitch_eb
        0x2200d -> :sswitch_f5
        0x22010 -> :sswitch_ff
        0x22013 -> :sswitch_109
        0x22016 -> :sswitch_113
        0x22018 -> :sswitch_169
        0x2201a -> :sswitch_179
        0x2201c -> :sswitch_123
        0x23003 -> :sswitch_58
        0x23004 -> :sswitch_58
        0x23005 -> :sswitch_58
        0x23006 -> :sswitch_58
        0x23007 -> :sswitch_58
        0x23008 -> :sswitch_58
        0x23009 -> :sswitch_58
        0x2300a -> :sswitch_189
        0x2300b -> :sswitch_198
    .end sparse-switch
.end method
