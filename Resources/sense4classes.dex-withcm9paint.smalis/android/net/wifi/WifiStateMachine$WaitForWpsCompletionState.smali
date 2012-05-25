.class Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWpsCompletionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 7103
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 7107
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7108
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 7112
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_48

    .line 7142
    const/4 v0, 0x0

    .line 7145
    :goto_6
    return v0

    .line 7123
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 7144
    :goto_c
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7145
    const/4 v0, 0x1

    goto :goto_6

    .line 7127
    :sswitch_16
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_c

    .line 7132
    :sswitch_1c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_c

    .line 7136
    :sswitch_28
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 7137
    const-string v0, "WifiStateMachine"

    const-string v1, "CMD_STOP_WPS in WaitForWpsCompletionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7138
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_c

    .line 7112
    :sswitch_data_48
    .sparse-switch
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_7
        0x20048 -> :sswitch_7
        0x2004b -> :sswitch_7
        0x2004c -> :sswitch_7
        0x20056 -> :sswitch_7
        0x2005d -> :sswitch_28
        0x20079 -> :sswitch_1c
        0x24003 -> :sswitch_7
        0x24004 -> :sswitch_16
    .end sparse-switch
.end method
