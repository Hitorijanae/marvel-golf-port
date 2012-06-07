.class public Lcom/htc/net/wimax/Wimax4GManager;
.super Lcom/htc/net/FourG/FourGManager;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/Wimax4GManager$WimaxQosServiceFlowControl;,
        Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Wimax4GManager"


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final mService:Lcom/htc/net/wimax/IWimaxController;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGManager;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    .line 214
    iput-object p2, p0, Lcom/htc/net/wimax/Wimax4GManager;->mHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method


# virtual methods
.method public addNetwork(Lcom/htc/net/FourG/FourGConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    check-cast p1, Lcom/htc/net/wimax/Wimax4GConfiguration;

    .end local p1
    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->addNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 224
    :goto_8
    return v1

    .line 223
    :catch_9
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public createConnectionStatistics()Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
    .registers 2

    .prologue
    .line 369
    new-instance v0, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    return-object v0
.end method

.method public createQosServiceFlowControl()Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 258
    :goto_6
    return v1

    .line 257
    :catch_7
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 269
    :goto_6
    return v1

    .line 268
    :catch_7
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "logLevel"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/net/FourG/FourGManager;->logLevel:I

    .line 282
    :try_start_2
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/IWimaxController;->enableLogLevel(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 285
    :goto_7
    return-void

    .line 283
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 294
    :goto_6
    return v1

    .line 293
    :catch_7
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguredDefaultNetworks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v2}, Lcom/htc/net/wimax/IWimaxController;->getConfiguredDefaultNetworks()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 348
    :goto_b
    return-object v1

    .line 346
    :catch_c
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Wimax4GManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v2}, Lcom/htc/net/wimax/IWimaxController;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 324
    :goto_b
    return-object v1

    .line 322
    :catch_c
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Wimax4GManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;
    .registers 3

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 361
    :goto_6
    return-object v1

    .line 360
    :catch_7
    move-exception v0

    .line 361
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDeviceInformation()Lcom/htc/net/FourG/DeviceInfo;
    .registers 3

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 378
    :goto_6
    return-object v1

    .line 377
    :catch_7
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 389
    :goto_6
    return-object v1

    .line 388
    :catch_7
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGBaseStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v2}, Lcom/htc/net/wimax/IWimaxController;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 405
    :goto_b
    return-object v1

    .line 404
    :catch_c
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getScanResultsAge()I
    .registers 7

    .prologue
    const v3, 0x7fffffff

    .line 416
    :try_start_3
    iget-object v4, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v4}, Lcom/htc/net/wimax/IWimaxController;->getScanResultsUpdateTime()J
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_13

    move-result-wide v1

    .line 421
    .local v1, time:J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v1, v4

    if-nez v4, :cond_15

    .line 431
    .end local v1           #time:J
    :cond_12
    :goto_12
    return v3

    .line 417
    :catch_13
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_12

    .line 425
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #time:J
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 427
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_12

    .line 431
    long-to-int v3, v1

    goto :goto_12
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 441
    :goto_6
    return v1

    .line 440
    :catch_7
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 452
    :goto_6
    return v1

    .line 451
    :catch_7
    move-exception v0

    .line 452
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 235
    :goto_6
    return v1

    .line 234
    :catch_7
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 463
    :goto_6
    return v1

    .line 462
    :catch_7
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public set4GEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 473
    :goto_6
    return v1

    .line 472
    :catch_7
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z
    .registers 4
    .parameter "config"

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 484
    :goto_6
    return v1

    .line 483
    :catch_7
    move-exception v0

    .line 484
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
