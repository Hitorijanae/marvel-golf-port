.class Landroid/net/wifi/WifiStateMachine$DriverStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 5820
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 5824
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5825
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 5829
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2e

    .line 5870
    const/4 v1, 0x0

    .line 5873
    :goto_6
    return v1

    .line 5831
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 5836
    .local v0, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5837
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5872
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    :cond_1e
    :goto_1e
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5873
    const/4 v1, 0x1

    goto :goto_6

    .line 5867
    :sswitch_28
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1e

    .line 5829
    :sswitch_data_2e
    .sparse-switch
        0x2000d -> :sswitch_28
        0x2000e -> :sswitch_28
        0x20020 -> :sswitch_28
        0x20047 -> :sswitch_28
        0x20049 -> :sswitch_28
        0x2004a -> :sswitch_28
        0x2004b -> :sswitch_28
        0x2004c -> :sswitch_28
        0x2004d -> :sswitch_28
        0x20050 -> :sswitch_28
        0x20054 -> :sswitch_28
        0x20055 -> :sswitch_28
        0x2005a -> :sswitch_28
        0x2007e -> :sswitch_28
        0x24003 -> :sswitch_28
        0x24004 -> :sswitch_28
        0x24006 -> :sswitch_7
        0x24007 -> :sswitch_28
        0x24008 -> :sswitch_28
        0x2400a -> :sswitch_28
        0x2400b -> :sswitch_28
        0x2400c -> :sswitch_28
        0x2400d -> :sswitch_28
        0x2400e -> :sswitch_28
        0x2400f -> :sswitch_28
    .end sparse-switch
.end method
