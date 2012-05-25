.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 7217
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .registers 6
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 7462
    if-nez p1, :cond_4

    .line 7477
    :cond_3
    :goto_3
    return v1

    .line 7465
    :cond_4
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 7466
    .local v2, index:I
    if-ltz v2, :cond_3

    .line 7469
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7472
    .local v0, clientNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7474
    .local v1, count:I
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_3

    .line 7475
    :catch_17
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 7221
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7222
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 18
    .parameter "message"

    .prologue
    .line 7229
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_49a

    .line 7453
    const/4 v11, 0x0

    .line 7456
    :goto_8
    return v11

    .line 7233
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_23

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_23

    .line 7234
    const/4 v11, 0x0

    goto :goto_8

    .line 7239
    :cond_23
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7241
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)V

    .line 7252
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->SupportConcurrentMode()Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_44

    .line 7253
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;)V

    .line 7257
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7258
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_64

    .line 7259
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7262
    :cond_64
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_77} :catch_b2

    .line 7268
    :goto_77
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8b

    .line 7269
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xb

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7270
    :cond_8b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a5

    .line 7271
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7455
    :cond_a5
    :goto_a5
    const v11, 0xc366

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7456
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 7263
    :catch_b2
    move-exception v3

    .line 7264
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Exception in stopAccessPoint()"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_77

    .line 7280
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_bd
    const-string v11, "WifiStateMachine"

    const-string v12, "SoftAP set on a running access point"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7283
    const/4 v11, 0x0

    :try_start_c5
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18802(Z)Z

    .line 7284
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 7285
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_21d

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-eqz v11, :cond_21d

    .line 7286
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v11, v10}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7287
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$18900()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f3

    .line 7288
    const-string v11, "WifiStateMachine"

    const-string v12, "NeedConfig AutoChannel"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7289
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18802(Z)Z

    .line 7290
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18902(Z)Z

    .line 7298
    :cond_f3
    :goto_f3
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$18800()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 7299
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v12, "set wifi hotspot"

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 7301
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_11f

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_126

    :cond_11f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7302
    :cond_126
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_137

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7304
    :cond_137
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "wlan0"

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_155} :catch_157

    goto/16 :goto_a5

    .line 7308
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_157
    move-exception v3

    .line 7309
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in softap set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7312
    :try_start_170
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7313
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_190

    .line 7314
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7316
    :cond_190
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 7317
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_1b7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_1be

    :cond_1b7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7318
    :cond_1be
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_1cf

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7320
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "wlan0"

    invoke-interface {v12, v11, v13, v14}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1eb} :catch_1ed

    goto/16 :goto_a5

    .line 7323
    :catch_1ed
    move-exception v4

    .line 7324
    .local v4, ee:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not restart softap after set failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7325
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x20002

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_a5

    .line 7292
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ee:Ljava/lang/Exception;
    .restart local v10       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_21d
    if-nez v10, :cond_f3

    .line 7293
    :try_start_21f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-eqz v11, :cond_237

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-nez v11, :cond_f3

    .line 7294
    :cond_237
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 7295
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18802(Z)Z
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_242} :catch_157

    goto/16 :goto_f3

    .line 7334
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_244
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_299

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_299

    .line 7336
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z

    move-result v11

    if-eqz v11, :cond_288

    .line 7337
    const-string v11, "WifiStateMachine"

    const-string v12, "Supplicant start successful"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7338
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 7339
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$19000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7341
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$19102(Z)Z

    goto/16 :goto_a5

    .line 7344
    :cond_288
    const-string v11, "WifiStateMachine"

    const-string v12, "Cannot start supplicant with a running soft AP"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_a5

    .line 7348
    :cond_299
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 7359
    :sswitch_29c
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 7360
    .local v7, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->SupportConcurrentMode()Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_2cf

    .line 7361
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_a5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_a5

    .line 7363
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v12, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    goto/16 :goto_a5

    .line 7366
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v12, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 7367
    const-string v11, "WifiStateMachine"

    const-string/jumbo v12, "skip transit to mTetheringState"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 7374
    .end local v7           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_2e5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 7375
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, v0}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_a5

    .line 7379
    :sswitch_2f9
    const-string v11, "WifiStateMachine"

    const-string v12, "WIFIAP:Connection request.."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7380
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 7381
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7382
    .local v6, mac:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7383
    .local v8, time:J
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.net.hotspot.connecitonrequest"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7384
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v11, "hotspot_block_mac"

    invoke-virtual {v5, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7385
    const-string/jumbo v11, "hotspot_lastest_time_of_request"

    invoke-virtual {v5, v11, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7386
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7392
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mac:Ljava/lang/String;
    .end local v8           #time:J
    :sswitch_330
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v1

    .line 7393
    .local v1, assocList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getAssocCount(Ljava/lang/String;)I

    move-result v12

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7394
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)V

    .line 7395
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SoftAP update assoc list: mUser="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7396
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 7397
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7401
    .end local v1           #assocList:Ljava/lang/String;
    :sswitch_386
    const-string v11, "WifiStateMachine"

    const-string v12, "WIFIAP:MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7403
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 7404
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v11, v2}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7406
    :try_start_39a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    .line 7407
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3b5} :catch_3be

    .line 7411
    :goto_3b5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    goto/16 :goto_a5

    .line 7408
    :catch_3be
    move-exception v3

    .line 7409
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in update mac list fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b5

    .line 7417
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_3d8
    :try_start_3d8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WpsInfo;

    invoke-interface {v12, v11}, Landroid/os/INetworkManagementService;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 7418
    const-string v11, "WifiStateMachine"

    const-string v12, "OK to startWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f0
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3f0} :catch_3f2

    goto/16 :goto_a5

    .line 7419
    :catch_3f2
    move-exception v3

    .line 7420
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    const-string v12, "Exception in startWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 7425
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_3fc
    :try_start_3fc
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->stopWpsRegistrar()V

    .line 7426
    const-string v11, "WifiStateMachine"

    const-string v12, "OK to stopWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40e
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_40e} :catch_410

    goto/16 :goto_a5

    .line 7427
    :catch_410
    move-exception v3

    .line 7428
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    const-string v12, "Exception in stopWpsRegistrar()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 7432
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_41a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7435
    :sswitch_42e
    const-string v11, "WifiStateMachine"

    const-string v12, "WPS_REGISTRAR_SUCCESSFUL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7436
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7439
    :sswitch_449
    const-string v11, "WifiStateMachine"

    const-string v12, "WPS_REGISTRAR_FAIL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7440
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7444
    :sswitch_464
    const-string v11, "WifiStateMachine"

    const-string v12, "L2PE_SUCCESSFUL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7445
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7448
    :sswitch_47f
    const-string v11, "WifiStateMachine"

    const-string v12, "L2PE_FAIL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7449
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.L2PE_FAIL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a5

    .line 7229
    :sswitch_data_49a
    .sparse-switch
        0x2000b -> :sswitch_244
        0x20015 -> :sswitch_bd
        0x20018 -> :sswitch_9
        0x2001d -> :sswitch_29c
        0x20061 -> :sswitch_3d8
        0x20062 -> :sswitch_3fc
        0x20063 -> :sswitch_41a
        0x20064 -> :sswitch_42e
        0x20065 -> :sswitch_449
        0x20066 -> :sswitch_464
        0x20067 -> :sswitch_47f
        0x2007b -> :sswitch_2f9
        0x2007c -> :sswitch_330
        0x2007d -> :sswitch_386
        0x23001 -> :sswitch_2e5
    .end sparse-switch
.end method
