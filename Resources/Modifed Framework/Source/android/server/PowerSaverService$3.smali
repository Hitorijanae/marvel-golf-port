.class Landroid/server/PowerSaverService$3;
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
    .line 389
    iput-object p1, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 393
    const-string v3, "PowerSaverService"

    const-string/jumbo v4, "scheduledSyncTask: starting"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, enableWifi:Z
    const/4 v1, 0x0

    .line 397
    .local v1, enableData:Z
    const/4 v0, -0x1

    .line 399
    .local v0, desiredNetworkMode:I
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mSyncDataMode:I
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$1700(Landroid/server/PowerSaverService;)I

    move-result v3

    sparse-switch v3, :sswitch_data_80

    .line 422
    :goto_15
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mSyncDataMode:I
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$1700(Landroid/server/PowerSaverService;)I

    move-result v3

    const/16 v4, 0x36

    if-eq v3, v4, :cond_28

    .line 423
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mSyncMobileDataMode:I
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$1800(Landroid/server/PowerSaverService;)I

    move-result v3

    packed-switch v3, :pswitch_data_96

    .line 438
    :cond_28
    :goto_28
    if-eqz v1, :cond_38

    .line 439
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$300(Landroid/server/PowerSaverService;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 440
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->requestPhoneStateChange(I)V
    invoke-static {v3, v0}, Landroid/server/PowerSaverService;->access$500(Landroid/server/PowerSaverService;I)V

    .line 443
    :cond_38
    if-eqz v2, :cond_43

    .line 444
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$800(Landroid/server/PowerSaverService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 448
    :cond_43
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->syncEnabledServices()V
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$2000(Landroid/server/PowerSaverService;)V

    .line 449
    return-void

    .line 401
    :sswitch_49
    const/4 v2, 0x1

    .line 402
    const/4 v1, 0x0

    .line 403
    goto :goto_15

    .line 405
    :sswitch_4c
    const/4 v2, 0x1

    .line 406
    const/4 v1, 0x1

    .line 407
    goto :goto_15

    .line 409
    :sswitch_4f
    const/4 v1, 0x1

    .line 410
    const/4 v2, 0x0

    .line 411
    goto :goto_15

    .line 413
    :sswitch_52
    const/4 v1, 0x0

    .line 414
    goto :goto_15

    .line 416
    :sswitch_54
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalWifiEnabled:Z
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$700(Landroid/server/PowerSaverService;)Z

    move-result v2

    .line 417
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalDataOn:Z
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$200(Landroid/server/PowerSaverService;)Z

    move-result v1

    .line 418
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalNetworkMode:I
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$400(Landroid/server/PowerSaverService;)I

    move-result v0

    goto :goto_15

    .line 425
    :pswitch_67
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->isCdma:Z
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$1900(Landroid/server/PowerSaverService;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 426
    const/4 v0, 0x4

    goto :goto_28

    .line 428
    :cond_71
    const/4 v0, 0x1

    .line 429
    goto :goto_28

    .line 431
    :pswitch_73
    iget-object v3, p0, Landroid/server/PowerSaverService$3;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->isCdma:Z
    invoke-static {v3}, Landroid/server/PowerSaverService;->access$1900(Landroid/server/PowerSaverService;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 432
    const/4 v0, 0x7

    goto :goto_28

    .line 434
    :cond_7d
    const/4 v0, 0x0

    goto :goto_28

    .line 399
    nop

    :sswitch_data_80
    .sparse-switch
        0x32 -> :sswitch_49
        0x33 -> :sswitch_4c
        0x35 -> :sswitch_4f
        0x36 -> :sswitch_54
        0x3d -> :sswitch_52
    .end sparse-switch

    .line 423
    :pswitch_data_96
    .packed-switch 0x3e
        :pswitch_67
        :pswitch_73
    .end packed-switch
.end method
