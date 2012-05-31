.class Landroid/server/PowerSaverService$1;
.super Ljava/lang/Object;
.source "PowerSaverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/PowerSaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/PowerSaverService;


# direct methods
.method constructor <init>(Landroid/server/PowerSaverService;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 307
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mMode:I
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$000(Landroid/server/PowerSaverService;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 332
    :goto_a
    return-void

    .line 310
    :cond_b
    const-string v0, "PowerSaverService"

    const-string/jumbo v1, "screenOnTask: starting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mScreenOffDataMode:I
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$100(Landroid/server/PowerSaverService;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6b

    .line 315
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalDataOn:Z
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$200(Landroid/server/PowerSaverService;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 316
    const-string v0, "PowerSaverService"

    const-string/jumbo v1, "screenOnTask: enabling data"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$300(Landroid/server/PowerSaverService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 320
    :cond_37
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mScreenOffDataMode:I
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$100(Landroid/server/PowerSaverService;)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_6b

    .line 321
    const-string v0, "PowerSaverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenOnTask: Requesting to restore to original network mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalNetworkMode:I
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$400(Landroid/server/PowerSaverService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    iget-object v1, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalNetworkMode:I
    invoke-static {v1}, Landroid/server/PowerSaverService;->access$400(Landroid/server/PowerSaverService;)I

    move-result v1

    #calls: Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V
    invoke-static {v0, v1}, Landroid/server/PowerSaverService;->access$500(Landroid/server/PowerSaverService;I)V

    .line 327
    :cond_6b
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mScreenOffWifiMode:I
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$600(Landroid/server/PowerSaverService;)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_84

    .line 328
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$800(Landroid/server/PowerSaverService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalWifiEnabled:Z
    invoke-static {v1}, Landroid/server/PowerSaverService;->access$700(Landroid/server/PowerSaverService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 331
    :cond_84
    iget-object v0, p0, Landroid/server/PowerSaverService$1;->this$0:Landroid/server/PowerSaverService;

    const/4 v1, 0x0

    #setter for: Landroid/server/PowerSaverService;->skipReadingCurrentState:Z
    invoke-static {v0, v1}, Landroid/server/PowerSaverService;->access$902(Landroid/server/PowerSaverService;Z)Z

    goto :goto_a
.end method
