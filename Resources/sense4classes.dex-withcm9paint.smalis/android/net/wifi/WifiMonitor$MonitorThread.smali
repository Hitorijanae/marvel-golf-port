.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 309
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private connectToSupplicant()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 499
    const/4 v0, 0x0

    .line 502
    .local v0, connectTries:I
    :goto_2
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 511
    :goto_8
    return v2

    .line 505
    :cond_9
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_13

    .line 506
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$500(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_2

    .line 511
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_13
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_8
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 515
    if-nez p1, :cond_3

    .line 527
    :cond_2
    :goto_2
    return-void

    .line 518
    :cond_3
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 519
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24009

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 522
    :cond_17
    const-string v0, "WIFI_RECOVERY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_2
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .registers 7
    .parameter "dataString"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, tokens:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 601
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2402a

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 605
    :cond_20
    :goto_20
    return-void

    .line 602
    :cond_21
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 603
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24029

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .registers 8
    .parameter "dataString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 558
    const-string v2, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 559
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24015

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 593
    :cond_1b
    :goto_1b
    return-void

    .line 560
    :cond_1c
    const-string v2, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 561
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24016

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1b

    .line 562
    :cond_36
    const-string v2, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 563
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24017

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1b

    .line 565
    :cond_50
    const-string v2, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 566
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24019

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1b

    .line 567
    :cond_65
    const-string v2, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 568
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1b

    .line 569
    :cond_7a
    const-string v2, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 570
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1b

    .line 571
    :cond_8f
    const-string v2, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 572
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401c

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1b

    .line 573
    :cond_a5
    const-string v2, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 574
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401d

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b

    .line 575
    :cond_c0
    const-string v2, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 576
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401e

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b

    .line 577
    :cond_db
    const-string v2, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 578
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401f

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b

    .line 580
    :cond_f6
    const-string v2, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 581
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v5, :cond_1b

    .line 583
    aget-object v2, v1, v4

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, nameValue:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_1b

    .line 585
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24020

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b

    .line 586
    .end local v0           #nameValue:[Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :cond_122
    const-string v2, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 587
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24021

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b

    .line 589
    :cond_13d
    const-string v2, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 590
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24022

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1b
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .registers 19
    .parameter "dataString"

    .prologue
    .line 613
    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, dataTokens:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 616
    .local v1, BSSID:Ljava/lang/String;
    const/4 v8, -0x1

    .line 617
    .local v8, networkId:I
    const/4 v9, -0x1

    .line 618
    .local v9, newState:I
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_e
    if-ge v5, v6, :cond_6b

    aget-object v12, v2, v5

    .line 619
    .local v12, token:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 620
    .local v7, nameValue:[Ljava/lang/String;
    array-length v14, v7

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1f

    .line 618
    :cond_1c
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 624
    :cond_1f
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "BSSID"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 625
    const/4 v14, 0x1

    aget-object v1, v7, v14

    .line 626
    goto :goto_1c

    .line 631
    :cond_2e
    const/4 v14, 0x1

    :try_start_2f
    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_34} :catch_43

    move-result v13

    .line 637
    .local v13, value:I
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 638
    move v8, v13

    goto :goto_1c

    .line 632
    .end local v13           #value:I
    :catch_43
    move-exception v4

    .line 633
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 639
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #value:I
    :cond_5d
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string/jumbo v15, "state"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 640
    move v9, v13

    goto :goto_1c

    .line 644
    .end local v7           #nameValue:[Ljava/lang/String;
    .end local v12           #token:Ljava/lang/String;
    .end local v13           #value:I
    :cond_6b
    const/4 v14, -0x1

    if-ne v9, v14, :cond_6f

    .line 657
    .end local v2           #arr$:[Ljava/lang/String;
    :goto_6e
    return-void

    .line 646
    .restart local v2       #arr$:[Ljava/lang/String;
    :cond_6f
    sget-object v10, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 647
    .local v10, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .local v2, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_77
    if-ge v5, v6, :cond_82

    aget-object v11, v2, v5

    .line 648
    .local v11, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v14

    if-ne v14, v9, :cond_a6

    .line 649
    move-object v10, v11

    .line 653
    .end local v11           #state:Landroid/net/wifi/SupplicantState;
    :cond_82
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v10, v14, :cond_9e

    .line 654
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid supplicant state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_9e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v14, v8, v1, v10}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_6e

    .line 647
    .restart local v11       #state:Landroid/net/wifi/SupplicantState;
    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_77
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 536
    packed-switch p1, :pswitch_data_22

    .line 552
    :goto_3
    :pswitch_3
    return-void

    .line 538
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 542
    :pswitch_c
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 546
    :pswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_3

    .line 536
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method

.method public run()V
    .registers 15

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 317
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24001

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 325
    :cond_12
    :goto_12
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, eventStr:Ljava/lang/String;
    const-string v11, "AKA-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 336
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, eventName0:Ljava/lang/String;
    const-string v11, "INVALID-SIM"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 339
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24010

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 342
    .end local v6           #eventName0:Ljava/lang/String;
    :cond_3a
    const-string v11, "CTRL-REQ-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12a

    .line 344
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    .restart local v6       #eventName0:Ljava/lang/String;
    const/16 v11, 0x20

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 346
    .local v10, nameEnd0:I
    const/16 v11, 0x3a

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 347
    .local v2, MsgEnd:I
    move-object v0, v6

    .local v0, MsgDetail:Ljava/lang/String;
    move-object v1, v0

    .line 348
    .local v1, MsgDetail2:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v11, :cond_12

    .line 350
    const/4 v11, -0x1

    if-eq v10, v11, :cond_64

    .line 351
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 352
    :cond_64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7f

    .line 353
    const-string v11, "WifiMonitor"

    const-string v12, "[EAP-MSG] Received wpa_supplicant req with empty req name"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 319
    .end local v0           #MsgDetail:Ljava/lang/String;
    .end local v1           #MsgDetail2:Ljava/lang/String;
    .end local v2           #MsgEnd:I
    .end local v6           #eventName0:Ljava/lang/String;
    .end local v7           #eventStr:Ljava/lang/String;
    .end local v10           #nameEnd0:I
    :cond_72
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24002

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 496
    :cond_7e
    :goto_7e
    return-void

    .line 356
    .restart local v0       #MsgDetail:Ljava/lang/String;
    .restart local v1       #MsgDetail2:Ljava/lang/String;
    .restart local v2       #MsgEnd:I
    .restart local v6       #eventName0:Ljava/lang/String;
    .restart local v7       #eventStr:Ljava/lang/String;
    .restart local v10       #nameEnd0:I
    :cond_7f
    const/4 v11, -0x1

    if-eq v2, v11, :cond_87

    .line 357
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_87
    const-string v11, "AUTH_AKA-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b1

    const-string v11, "AUTH_SIM-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b1

    .line 361
    const-string v11, "WifiMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[EAP-MSG] Req: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_b1
    const-string v11, "IDENTITY_SIM-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 364
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400d

    invoke-virtual {v12, v13, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_12

    .line 367
    :cond_d1
    const-string v11, "CUSTOMIZATION-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f1

    .line 369
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400e

    invoke-virtual {v12, v13, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_12

    .line 372
    :cond_f1
    const-string v11, "AUTH_AKA-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_101

    const-string v11, "AUTH_SIM-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_119

    .line 374
    :cond_101
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400f

    invoke-virtual {v12, v13, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_12

    .line 377
    :cond_119
    const-string v11, "IDENTITY-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 383
    const-string v11, "WifiMonitor"

    const-string v12, "[EAP-MSG] Unkown Req"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 388
    .end local v0           #MsgDetail:Ljava/lang/String;
    .end local v1           #MsgDetail2:Ljava/lang/String;
    .end local v2           #MsgEnd:I
    .end local v6           #eventName0:Ljava/lang/String;
    .end local v10           #nameEnd0:I
    :cond_12a
    const-string v11, "CTRL-EVENT-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1ad

    .line 389
    const-string v11, "WPA:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_151

    const-string/jumbo v11, "pre-shared key may be incorrect"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_151

    .line 391
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24007

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_12

    .line 392
    :cond_151
    const-string v11, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_167

    .line 393
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24008

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_12

    .line 395
    :cond_167
    const-string v11, "WPS-SUCCESS"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17d

    .line 396
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x2400b

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_12

    .line 397
    :cond_17d
    const-string v11, "WPS-FAIL"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_193

    .line 398
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x2400c

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_12

    .line 400
    :cond_193
    const-string v11, "P2P"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a0

    .line 401
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 402
    :cond_1a0
    const-string v11, "AP"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 403
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 408
    :cond_1ad
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$300()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, eventName:Ljava/lang/String;
    const/16 v11, 0x20

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 410
    .local v9, nameEnd:I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1c3

    .line 411
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 412
    :cond_1c3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_12

    .line 420
    const-string v11, "CONNECTED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f0

    .line 421
    const/4 v3, 0x1

    .line 439
    .local v3, event:I
    :goto_1d2
    move-object v4, v7

    .line 440
    .local v4, eventData:Ljava/lang/String;
    const/4 v11, 0x7

    if-eq v3, v11, :cond_1d9

    const/4 v11, 0x5

    if-ne v3, v11, :cond_23a

    .line 441
    :cond_1d9
    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v4, v11, v12

    .line 454
    :cond_1e2
    :goto_1e2
    const/4 v11, 0x3

    if-ne v3, v11, :cond_261

    .line 455
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 494
    :cond_1e8
    :goto_1e8
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiMonitor;->access$402(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_12

    .line 422
    .end local v3           #event:I
    .end local v4           #eventData:Ljava/lang/String;
    :cond_1f0
    const-string v11, "DISCONNECTED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1fa

    .line 423
    const/4 v3, 0x2

    .restart local v3       #event:I
    goto :goto_1d2

    .line 424
    .end local v3           #event:I
    :cond_1fa
    const-string v11, "STATE-CHANGE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_204

    .line 425
    const/4 v3, 0x3

    .restart local v3       #event:I
    goto :goto_1d2

    .line 426
    .end local v3           #event:I
    :cond_204
    const-string v11, "SCAN-RESULTS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20e

    .line 427
    const/4 v3, 0x4

    .restart local v3       #event:I
    goto :goto_1d2

    .line 428
    .end local v3           #event:I
    :cond_20e
    const-string v11, "LINK-SPEED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_218

    .line 429
    const/4 v3, 0x5

    .restart local v3       #event:I
    goto :goto_1d2

    .line 430
    .end local v3           #event:I
    :cond_218
    const-string v11, "TERMINATING"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_222

    .line 431
    const/4 v3, 0x6

    .restart local v3       #event:I
    goto :goto_1d2

    .line 432
    .end local v3           #event:I
    :cond_222
    const-string v11, "DRIVER-STATE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22c

    .line 433
    const/4 v3, 0x7

    .restart local v3       #event:I
    goto :goto_1d2

    .line 434
    .end local v3           #event:I
    :cond_22c
    const-string v11, "EAP-FAILURE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_237

    .line 435
    const/16 v3, 0x8

    .restart local v3       #event:I
    goto :goto_1d2

    .line 437
    .end local v3           #event:I
    :cond_237
    const/16 v3, 0x9

    .restart local v3       #event:I
    goto :goto_1d2

    .line 442
    .restart local v4       #eventData:Ljava/lang/String;
    :cond_23a
    const/4 v11, 0x3

    if-eq v3, v11, :cond_241

    const/16 v11, 0x8

    if-ne v3, v11, :cond_251

    .line 443
    :cond_241
    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 444
    .local v8, ind:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_1e2

    .line 445
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e2

    .line 448
    .end local v8           #ind:I
    :cond_251
    const-string v11, " - "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 449
    .restart local v8       #ind:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_1e2

    .line 450
    add-int/lit8 v11, v8, 0x3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e2

    .line 456
    .end local v8           #ind:I
    :cond_261
    const/4 v11, 0x7

    if-ne v3, v11, :cond_268

    .line 457
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_1e8

    .line 458
    :cond_268
    const/4 v11, 0x6

    if-ne v3, v11, :cond_294

    .line 463
    const-string v11, "connection closed"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7e

    .line 474
    const-string/jumbo v11, "recv error"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_286

    .line 475
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$404(Landroid/net/wifi/WifiMonitor;)I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_12

    .line 485
    :cond_286
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24002

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_7e

    .line 487
    :cond_294
    const/16 v11, 0x8

    if-ne v3, v11, :cond_2ae

    .line 488
    const-string v11, "EAP authentication failed"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e8

    .line 489
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24007

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1e8

    .line 492
    :cond_2ae
    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_1e8
.end method
