.class Landroid/net/wifi/WifiStateMachine$TetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 7527
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 7531
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7534
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$19804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7536
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7540
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_4a

    move v1, v2

    .line 7576
    :cond_8
    :goto_8
    return v1

    .line 7542
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 7543
    .local v0, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$19900(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7544
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$20000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$20100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_8

    .line 7548
    .end local v0           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_23
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$19800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_3a

    .line 7549
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Failed to get tether update, shutdown soft access point"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7550
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 7575
    :cond_3a
    :goto_3a
    const v2, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_8

    .line 7570
    :sswitch_43
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$20200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_3a

    .line 7540
    nop

    :sswitch_data_4a
    .sparse-switch
        0x20001 -> :sswitch_43
        0x20002 -> :sswitch_43
        0x2000b -> :sswitch_43
        0x2000c -> :sswitch_43
        0x2000d -> :sswitch_43
        0x2000e -> :sswitch_43
        0x20015 -> :sswitch_43
        0x20018 -> :sswitch_43
        0x2001d -> :sswitch_9
        0x2001e -> :sswitch_23
        0x20048 -> :sswitch_43
        0x20049 -> :sswitch_43
        0x2004d -> :sswitch_43
        0x20050 -> :sswitch_43
        0x20054 -> :sswitch_43
        0x20055 -> :sswitch_43
        0x2005a -> :sswitch_43
        0x2007e -> :sswitch_43
        0x23001 -> :sswitch_43
    .end sparse-switch
.end method
