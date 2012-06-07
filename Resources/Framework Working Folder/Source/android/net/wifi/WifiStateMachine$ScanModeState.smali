.class Landroid/net/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 6204
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 6208
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6209
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6213
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_4a

    move v0, v1

    .line 6245
    :cond_8
    :goto_8
    return v0

    .line 6215
    :sswitch_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 6219
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-ne v2, v3, :cond_44

    .line 6220
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 6221
    iget v2, p1, Landroid/os/Message;->arg1:I

    neg-int v2, v2

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 6228
    :goto_22
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 6229
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$6602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6230
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6244
    :sswitch_35
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_8

    .line 6223
    :cond_3e
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_22

    .line 6226
    :cond_44
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    goto :goto_22

    .line 6213
    :sswitch_data_4a
    .sparse-switch
        0x20048 -> :sswitch_9
        0x2004a -> :sswitch_35
        0x2004b -> :sswitch_35
        0x2004c -> :sswitch_35
        0x24003 -> :sswitch_35
        0x24004 -> :sswitch_35
        0x24006 -> :sswitch_35
    .end sparse-switch
.end method
