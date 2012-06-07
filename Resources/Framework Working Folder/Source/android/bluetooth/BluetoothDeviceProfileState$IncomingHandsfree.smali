.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandsfree"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    const/16 v3, 0x66

    .line 647
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering IncomingHandsfree state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    .line 649
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_51

    .line 651
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: IncomingHandsfree state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_51
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    .line 654
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    if-nez v0, :cond_6e

    .line 655
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 656
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 659
    :cond_6e
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .parameter "message"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 663
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingHandsfree State -> Processing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 664
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_92

    .line 736
    :goto_22
    return v2

    .line 666
    :sswitch_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_28
    :goto_28
    :sswitch_28
    move v2, v3

    .line 736
    goto :goto_22

    .line 670
    :sswitch_2a
    const-string v2, "BluetoothDeviceProfileState"

    const-string v4, "Error: Incoming connection with a pending incoming connection"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 673
    :sswitch_32
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 674
    .local v0, val:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, value:Z
    if-ne v0, v3, :cond_3d

    .line 677
    const/4 v1, 0x1

    .line 679
    :cond_3d
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 681
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_28

    .line 684
    .end local v0           #val:I
    .end local v1           #value:Z
    :sswitch_48
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 685
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 686
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7000(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 687
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_28

    .line 692
    :sswitch_62
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 695
    :sswitch_68
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 702
    :sswitch_6e
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 709
    :sswitch_74
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 718
    :sswitch_7a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 728
    :sswitch_80
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_28

    .line 731
    :sswitch_86
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_28

    .line 664
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_68
        0x4 -> :sswitch_62
        0x5 -> :sswitch_7a
        0x6 -> :sswitch_28
        0x32 -> :sswitch_6e
        0x33 -> :sswitch_28
        0x34 -> :sswitch_74
        0x35 -> :sswitch_28
        0x36 -> :sswitch_7a
        0x37 -> :sswitch_28
        0x38 -> :sswitch_80
        0x64 -> :sswitch_80
        0x65 -> :sswitch_80
        0x66 -> :sswitch_86
        0x67 -> :sswitch_80
        0x68 -> :sswitch_32
        0x69 -> :sswitch_48
        0x6a -> :sswitch_80
    .end sparse-switch
.end method
