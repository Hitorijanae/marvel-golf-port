.class Landroid/bluetooth/BluetoothDeviceProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 140
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1a

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 226
    :cond_1a
    :goto_1a
    return-void

    .line 142
    :cond_1b
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 143
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 144
    .local v3, newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 146
    .local v4, oldState:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3a

    .line 147
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 149
    :cond_3a
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$902(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 150
    const/4 v7, 0x2

    if-ne v4, v7, :cond_4b

    if-nez v3, :cond_4b

    .line 152
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x35

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 154
    :cond_4b
    const/4 v7, 0x2

    if-eq v3, v7, :cond_50

    if-nez v3, :cond_1a

    .line 156
    :cond_50
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1a

    .line 158
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_58
    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 159
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 160
    .restart local v3       #newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 162
    .restart local v4       #oldState:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_77

    .line 163
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 165
    :cond_77
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 166
    const/4 v7, 0x2

    if-ne v4, v7, :cond_88

    if-nez v3, :cond_88

    .line 168
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 170
    :cond_88
    const/4 v7, 0x2

    if-eq v3, v7, :cond_8d

    if-nez v3, :cond_1a

    .line 172
    :cond_8d
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1a

    .line 174
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_95
    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 175
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 176
    .restart local v3       #newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 179
    .restart local v4       #oldState:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_b4

    .line 180
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 182
    :cond_b4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_c0

    if-nez v3, :cond_c0

    .line 184
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x37

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 186
    :cond_c0
    const/4 v7, 0x2

    if-eq v3, v7, :cond_c5

    if-nez v3, :cond_1a

    .line 188
    :cond_c5
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto/16 :goto_1a

    .line 190
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_ce
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 193
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto/16 :goto_1a

    .line 194
    :cond_df
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12a

    .line 195
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_fc

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 197
    :cond_fc
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 201
    const-string v7, "BluetoothDeviceProfileState"

    const-string v8, "Process access reply"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x69

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->removeMessages(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1300(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 205
    const-string v7, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 207
    .local v6, val:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 208
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 209
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1a

    .line 210
    .end local v2           #msg:Landroid/os/Message;
    .end local v6           #val:I
    :cond_12a
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 211
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_1a

    .line 212
    :cond_13a
    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17c

    .line 213
    const-string v7, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v8, -0x8000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 215
    .local v5, state:I
    const/16 v7, 0xc

    if-ne v5, v7, :cond_164

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v7

    if-eqz v7, :cond_164

    .line 216
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 217
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_1a

    .line 218
    :cond_164
    const/16 v7, 0xa

    if-ne v5, v7, :cond_170

    .line 219
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_1a

    .line 220
    :cond_170
    const/16 v7, 0xc

    if-ne v5, v7, :cond_1a

    .line 221
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_1a

    .line 223
    .end local v5           #state:I
    :cond_17c
    const-string v7, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 224
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mExpectingSdpComplete:Z
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_1a
.end method
