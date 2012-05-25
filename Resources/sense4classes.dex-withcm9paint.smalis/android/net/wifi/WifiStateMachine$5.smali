.class Landroid/net/wifi/WifiStateMachine$5;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4232
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4236
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_10
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 4237
    :cond_15
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 4239
    :cond_22
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wlan0"

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_3f

    .line 4256
    :goto_36
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4257
    :goto_3e
    return-void

    .line 4240
    :catch_3f
    move-exception v0

    .line 4241
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4243
    :try_start_58
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 4245
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_7c

    :cond_77
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 4246
    :cond_7c
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 4248
    :cond_89
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$5;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wlan0"

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_9d} :catch_9e

    goto :goto_36

    .line 4249
    :catch_9e
    move-exception v1

    .line 4250
    .local v1, e1:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap re-start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4251
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20017

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_3e
.end method
