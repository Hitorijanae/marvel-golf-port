.class Landroid/bluetooth/BluetoothDeviceProfileState$2;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .line 295
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 297
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 298
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 299
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 302
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1702(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 304
    :cond_25
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .registers 9
    .parameter "profile"

    .prologue
    .line 307
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v3

    .line 308
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v4, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 309
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v2

    if-eqz v2, :cond_60

    .line 313
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v1

    .line 314
    .local v1, prevState:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v4, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 316
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 318
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v2, "android.bluetooth.profile.extra.STATE"

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 323
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prevState:I
    :cond_60
    monitor-exit v3

    .line 324
    return-void

    .line 323
    :catchall_62
    move-exception v2

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v2
.end method
