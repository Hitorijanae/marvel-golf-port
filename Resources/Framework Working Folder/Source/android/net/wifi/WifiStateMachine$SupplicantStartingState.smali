.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 5371
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 5375
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5376
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/16 v7, 0xd8

    const/16 v5, 0x3d

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5380
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_14e

    .line 5477
    :goto_c
    return v1

    .line 5383
    :sswitch_d
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setP2pDisable(I)Z

    .line 5384
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x3

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5385
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$5002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5387
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_27

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v5, :cond_27

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v7, :cond_33

    .line 5390
    :cond_27
    const-string v3, "WifiStateMachine"

    const-string v4, "EVENT_SUPPLICANT_CONNECTION setPreConfigAPHigherPriority"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)V

    .line 5398
    :cond_33
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v3

    const v4, 0x2006f

    invoke-virtual {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5399
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v3

    const v4, 0x2007a

    invoke-virtual {v3, v4}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 5404
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v7, :cond_75

    .line 5405
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 5406
    const-string v1, "WifiStateMachine"

    const-string v3, "[C+W] SupplicantStartingState setCwRegisterState to false starting register"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HTC CW Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5409
    .local v0, cwHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5410
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$CwHandler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine$CwHandler;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5402(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;

    .line 5416
    .end local v0           #cwHandlerThread:Landroid/os/HandlerThread;
    :cond_75
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5417
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1, v6}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5418
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v1, v6}, Landroid/net/wifi/WifiStateMachine;->access$5702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5419
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, -0xc8

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5421
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 5424
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v1, :cond_a2

    .line 5425
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->notifyGetAirPlaneMode()V

    .line 5428
    :cond_a2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->initialize(Landroid/content/Context;)V

    .line 5432
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 5433
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 5434
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 5435
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 5438
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 5439
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5476
    :goto_cf
    const v1, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v2

    .line 5477
    goto/16 :goto_c

    .line 5442
    :sswitch_da
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5004(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_103

    .line 5443
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Failed to setup control channel, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5444
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 5445
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5446
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2000b

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_cf

    .line 5448
    :cond_103
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times to start supplicant, unload driver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5450
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$5002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5451
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5452
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x20002

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_cf

    .line 5471
    :sswitch_147
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_cf

    .line 5380
    nop

    :sswitch_data_14e
    .sparse-switch
        0x20001 -> :sswitch_147
        0x20002 -> :sswitch_147
        0x2000b -> :sswitch_147
        0x2000c -> :sswitch_147
        0x2000d -> :sswitch_147
        0x2000e -> :sswitch_147
        0x20015 -> :sswitch_147
        0x20018 -> :sswitch_147
        0x20048 -> :sswitch_147
        0x20049 -> :sswitch_147
        0x2004d -> :sswitch_147
        0x20050 -> :sswitch_147
        0x20054 -> :sswitch_147
        0x20055 -> :sswitch_147
        0x2005a -> :sswitch_147
        0x2007e -> :sswitch_147
        0x24001 -> :sswitch_d
        0x24002 -> :sswitch_da
    .end sparse-switch
.end method
