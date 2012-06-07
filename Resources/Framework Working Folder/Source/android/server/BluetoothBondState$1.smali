.class Landroid/server/BluetoothBondState$1;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothBondState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothBondState;


# direct methods
.method constructor <init>(Landroid/server/BluetoothBondState;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 352
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 353
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 357
    :cond_a
    :goto_a
    return-void

    .line 354
    .restart local p2
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 355
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_a
.end method

.method public onServiceDisconnected(I)V
    .registers 7
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 360
    if-ne p1, v3, :cond_20

    .line 361
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$000(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 362
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 363
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$000(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 364
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1, v4}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 373
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1f
    :goto_1f
    return-void

    .line 366
    :cond_20
    if-ne p1, v2, :cond_1f

    .line 367
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$100(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 368
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 369
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$100(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 370
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v4}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_1f
.end method
