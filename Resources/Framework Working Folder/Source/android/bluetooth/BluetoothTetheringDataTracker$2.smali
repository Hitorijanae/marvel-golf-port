.class Landroid/bluetooth/BluetoothTetheringDataTracker$2;
.super Ljava/lang/Object;
.source "BluetoothTetheringDataTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 270
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 271
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 272
    const-string v3, "BluetoothTethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP request error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_2d
    return-void

    .line 275
    :cond_2e
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    #setter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$202(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 276
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$200(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 279
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v6, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :try_start_58
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 284
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 286
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    #getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_80} :catch_81

    goto :goto_2d

    .line 288
    .end local v2           #msg:Landroid/os/Message;
    :catch_81
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BluetoothTethering"

    const-string/jumbo v4, "startReverseTether: exception occurred"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
