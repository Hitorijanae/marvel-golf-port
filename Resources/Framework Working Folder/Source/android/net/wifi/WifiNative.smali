.class public Landroid/net/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addNetworkCommand()I
.end method

.method public static native addToBlacklistCommand(Ljava/lang/String;)Z
.end method

.method public static native clearBlacklistCommand()Z
.end method

.method public static native closeSupplicantConnection()V
.end method

.method public static native connectToSupplicant()Z
.end method

.method public static native disableNetworkCommand(I)Z
.end method

.method public static native disconnectCommand()Z
.end method

.method private static native doBooleanCommand(Ljava/lang/String;)Z
.end method

.method private static native doIntCommand(Ljava/lang/String;)I
.end method

.method private static native doStringCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native enableBackgroundScanCommand(Z)V
.end method

.method public static native enableNetworkCommand(IZ)Z
.end method

.method public static native getBandCommand()I
.end method

.method public static native getErrorString(I)Ljava/lang/String;
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native getPowerModeCommand()I
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static native isHotspotDriverLoaded()Z
.end method

.method public static native killSupplicant()Z
.end method

.method public static native listNetworksCommand()Ljava/lang/String;
.end method

.method public static native loadDriver()Z
.end method

.method public static native loadHotspotDriver()Z
.end method

.method public static p2pCancelConnect()Z
    .registers 1

    .prologue
    .line 317
    const-string v0, "P2P_CANCEL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .registers 10
    .parameter "config"
    .parameter "joinExistingGroup"

    .prologue
    .line 272
    if-nez p0, :cond_4

    const/4 v6, 0x0

    .line 313
    :goto_3
    return-object v6

    .line 273
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 275
    .local v5, wps:Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_94

    .line 302
    :goto_15
    if-eqz p1, :cond_1c

    const-string v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1c
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 305
    .local v2, groupOwnerIntent:I
    if-ltz v2, :cond_24

    const/16 v6, 0xf

    if-le v2, v6, :cond_25

    .line 306
    :cond_24
    const/4 v2, 0x3

    .line 308
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v1, "P2P_CONNECT "

    .line 311
    .local v1, command:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    .line 279
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #groupOwnerIntent:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :pswitch_65
    const-string/jumbo v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 283
    :pswitch_6c
    const-string/jumbo v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 287
    :pswitch_78
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 291
    :pswitch_83
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 313
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #groupOwnerIntent:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8e
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 277
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_65
        :pswitch_6c
        :pswitch_78
        :pswitch_83
    .end packed-switch
.end method

.method public static p2pFind()Z
    .registers 1

    .prologue
    .line 244
    const-string v0, "P2P_FIND"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pFind(I)Z
    .registers 3
    .parameter "timeout"

    .prologue
    .line 248
    if-gtz p0, :cond_7

    .line 249
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 251
    :goto_6
    return v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static p2pFlush()Z
    .registers 1

    .prologue
    .line 266
    const-string v0, "P2P_FLUSH"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pGetDeviceAddress()Ljava/lang/String;
    .registers 9

    .prologue
    .line 374
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, status:Ljava/lang/String;
    if-nez v4, :cond_9

    const-string v7, ""

    .line 385
    :goto_8
    return-object v7

    .line 377
    :cond_9
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_29

    aget-object v5, v0, v1

    .line 379
    .local v5, token:Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 380
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, nameValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2c

    .line 385
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    :cond_29
    const-string v7, ""

    goto :goto_8

    .line 382
    .restart local v3       #nameValue:[Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    :cond_2c
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_8

    .line 378
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public static p2pGetInterfaceAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "deviceAddress"

    .prologue
    const/4 v7, 0x0

    .line 354
    if-nez p0, :cond_4

    .line 370
    :cond_3
    :goto_3
    return-object v7

    .line 358
    :cond_4
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, peerInfo:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 360
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 364
    .local v5, token:Ljava/lang/String;
    const-string v8, "intended_addr="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 365
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, nameValue:[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 367
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_3

    .line 362
    .end local v3           #nameValue:[Ljava/lang/String;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public static p2pGroupAdd()Z
    .registers 1

    .prologue
    .line 321
    const-string v0, "P2P_GROUP_ADD"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pGroupRemove(Ljava/lang/String;)Z
    .registers 3
    .parameter "iface"

    .prologue
    .line 325
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 326
    :goto_3
    return v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_GROUP_REMOVE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .registers 4
    .parameter "group"
    .parameter "deviceAddress"

    .prologue
    .line 335
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 340
    :goto_3
    return v0

    .line 337
    :cond_4
    if-nez p0, :cond_1e

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 340
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " go_dev_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static p2pListen()Z
    .registers 1

    .prologue
    .line 255
    const-string v0, "P2P_LISTEN"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p2pListen(I)Z
    .registers 3
    .parameter "timeout"

    .prologue
    .line 259
    if-gtz p0, :cond_7

    .line 260
    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pListen()Z

    move-result v0

    .line 262
    :goto_6
    return v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "deviceAddress"

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p2pReinvoke(ILjava/lang/String;)Z
    .registers 4
    .parameter "netId"
    .parameter "deviceAddress"

    .prologue
    .line 347
    if-eqz p1, :cond_4

    if-gez p0, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 349
    :goto_5
    return v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static p2pReject(Ljava/lang/String;)Z
    .registers 3
    .parameter "deviceAddress"

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native pingCommand()Z
.end method

.method public static native reassociateCommand()Z
.end method

.method public static native reconnectCommand()Z
.end method

.method public static native reloadConfigCommand()Z
.end method

.method public static native removeNetworkCommand(I)Z
.end method

.method public static native saveConfigCommand()Z
.end method

.method public static native scanCommand(Z)Z
.end method

.method public static native scanResultsCommand()Ljava/lang/String;
.end method

.method public static native setBandCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceModeCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceScanModeCommand(Z)Z
.end method

.method public static native setCountryCodeCommand(Ljava/lang/String;)Z
.end method

.method public static setDeviceName(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDeviceType(Ljava/lang/String;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static setPersistentReconnect(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 231
    if-ne p0, v0, :cond_1b

    .line 232
    .local v0, value:I
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 231
    .end local v0           #value:I
    :cond_1b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static native setPowerModeCommand(I)Z
.end method

.method public static native setScanIntervalCommand(I)V
.end method

.method public static native setScanModeCommand(Z)Z
.end method

.method public static native setScanResultHandlingCommand(I)Z
.end method

.method public static native setSuspendOptimizationsCommand(Z)Z
.end method

.method public static signalPoll()Ljava/lang/String;
    .registers 1

    .prologue
    .line 219
    const-string v0, "SIGNAL_POLL"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native startDriverCommand()Z
.end method

.method public static native startFilteringMulticastV4Packets()Z
.end method

.method public static native startFilteringMulticastV6Packets()Z
.end method

.method public static native startP2pSupplicant()Z
.end method

.method public static native startSupplicant()Z
.end method

.method public static native startWpsPbcCommand(Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native statusCommand()Ljava/lang/String;
.end method

.method public static native stopDriverCommand()Z
.end method

.method public static native stopFilteringMulticastV4Packets()Z
.end method

.method public static native stopFilteringMulticastV6Packets()Z
.end method

.method public static native stopSupplicant()Z
.end method

.method public static native unloadDriver()Z
.end method

.method public static native unloadHotspotDriver()Z
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method

.method public static wpsPbc()Z
    .registers 1

    .prologue
    .line 223
    const-string v0, "WPS_PBC"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static wpsPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
