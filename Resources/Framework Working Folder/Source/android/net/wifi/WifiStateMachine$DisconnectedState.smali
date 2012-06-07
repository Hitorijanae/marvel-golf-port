.class Landroid/net/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mAlarmEnabled:Z

.field private mFrameworkScanIntervalMs:J

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 3
    .parameter

    .prologue
    .line 6959
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 6960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    return-void
.end method

.method private setScanAlarm(Z)V
    .registers 9
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 6967
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    if-ne p1, v0, :cond_6

    .line 6980
    :cond_5
    :goto_5
    return-void

    .line 6968
    :cond_6
    if-eqz p1, :cond_2c

    .line 6969
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 6970
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 6974
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_5

    .line 6977
    :cond_2c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6978
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_5
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 6985
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6987
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 6988
    const-string v0, "WifiStateMachine"

    const-string v1, "VzwStatus[No APs detected]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6989
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$15502(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6990
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6994
    :cond_2d
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    .line 7002
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 7009
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 7010
    invoke-static {v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    .line 7015
    :cond_5a
    :goto_5a
    return-void

    .line 7013
    :cond_5b
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_5a
.end method

.method public exit()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7096
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7097
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    .line 7099
    :cond_c
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 7100
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7019
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_e2

    .line 7090
    :cond_8
    :goto_8
    return v3

    .line 7021
    :sswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_34

    .line 7022
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-ne v1, v3, :cond_44

    .line 7023
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 7024
    iget v1, p1, Landroid/os/Message;->arg1:I

    neg-int v1, v1

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 7032
    :goto_21
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 7033
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7034
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7089
    :cond_34
    :goto_34
    :sswitch_34
    const v1, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    move v3, v2

    .line 7090
    goto :goto_8

    .line 7026
    :cond_3e
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_21

    .line 7029
    :cond_44
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_21

    .line 7038
    :sswitch_4a
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_63

    move v1, v2

    :goto_51
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$1702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7039
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 7040
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    .line 7041
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_34

    :cond_63
    move v1, v3

    .line 7038
    goto :goto_51

    .line 7043
    :cond_65
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    .line 7044
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_34

    .line 7051
    :sswitch_6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/StateChangeResult;

    .line 7052
    .local v0, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, v0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_8

    .line 7057
    .end local v0           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_7c
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7058
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    goto :goto_8

    .line 7064
    :sswitch_88
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7065
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->enableBackgroundScanCommand(Z)V

    goto/16 :goto_8

    .line 7071
    :sswitch_9d
    const-string v1, "WifiStateMachine"

    const-string v3, "DisconnectedState DhcpStateMachine.CMD_PRE_DHCP_ACTION"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 7075
    :sswitch_a5
    const-string v1, "WifiStateMachine"

    const-string v3, "DisconnectedState DhcpStateMachine.CMD_POST_DHCP_ACTION"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7076
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 7077
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_cb

    .line 7078
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 7079
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$14200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$17500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_34

    .line 7080
    :cond_cb
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_34

    .line 7081
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7082
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_34

    .line 7019
    nop

    :sswitch_data_e2
    .sparse-switch
        0x20047 -> :sswitch_7c
        0x20048 -> :sswitch_9
        0x2005b -> :sswitch_4a
        0x24004 -> :sswitch_34
        0x24005 -> :sswitch_88
        0x24006 -> :sswitch_6c
        0x30004 -> :sswitch_9d
        0x30005 -> :sswitch_a5
    .end sparse-switch
.end method
