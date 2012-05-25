.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 878
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_ae

    .line 927
    :cond_6
    :goto_6
    return-void

    .line 880
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 881
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 882
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 883
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_6

    .line 887
    .end local v0           #address:Ljava/lang/String;
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 888
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 889
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    .line 895
    .local v1, attempt:I
    if-lez v1, :cond_46

    const/4 v4, 0x2

    if-gt v1, v4, :cond_46

    .line 896
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 897
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 898
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v5, 0xd

    invoke-virtual {v4, v0, v5, v7}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_6

    .line 904
    :cond_46
    if-lez v1, :cond_6

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_6

    .line 907
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #attempt:I
    :sswitch_52
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 908
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v5, v6, v4}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;II)V

    goto :goto_6

    .line 911
    .end local v3           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :sswitch_6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 912
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 913
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v7}, Landroid/server/BluetoothService;->sendGattIntent(Ljava/lang/String;I)V

    goto :goto_6

    .line 918
    .end local v0           #address:Ljava/lang/String;
    :sswitch_84
    const-string v4, "BluetoothService"

    const-string v5, "Received BT_BOOTUP message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 921
    .local v2, bluetoothOn:I
    if-lez v2, :cond_6

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_6

    .line 922
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v7}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_6

    .line 878
    nop

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_18
        0x3 -> :sswitch_52
        0x7 -> :sswitch_6c
        0x64 -> :sswitch_84
    .end sparse-switch
.end method
