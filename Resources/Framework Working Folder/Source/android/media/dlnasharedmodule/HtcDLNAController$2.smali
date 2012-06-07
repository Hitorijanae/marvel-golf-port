.class Landroid/media/dlnasharedmodule/HtcDLNAController$2;
.super Landroid/os/Handler;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .registers 2
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1380
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_1b4

    .line 1515
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 1382
    :sswitch_8
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshInfo()V

    .line 1383
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshListIndex()V

    .line 1384
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v3, v3, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v3, v3, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onItemInfoChanged(Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;)V

    goto :goto_7

    .line 1387
    :sswitch_2e
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshAlbumArt()V

    goto :goto_7

    .line 1390
    :sswitch_38
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshListIndex()V

    goto :goto_7

    .line 1393
    :sswitch_42
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto :goto_7

    .line 1396
    :sswitch_4c
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->checkState()V

    .line 1397
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->ChangeState(Z)V

    goto :goto_7

    .line 1400
    :sswitch_5b
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshRS(I)V

    goto :goto_7

    .line 1403
    :sswitch_66
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshRS(I)V

    goto :goto_7

    .line 1406
    :sswitch_71
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V

    goto :goto_7

    .line 1409
    :sswitch_7b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1410
    .local v1, bdR:Landroid/os/Bundle;
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const-string v4, "arg0"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1411
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2100(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_99

    .line 1412
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const-string v4, ""

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1415
    :cond_99
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v3, v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1200(Landroid/media/dlnasharedmodule/HtcDLNAController;I)V

    goto/16 :goto_7

    .line 1420
    .end local v1           #bdR:Landroid/os/Bundle;
    :sswitch_a0
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    invoke-static {v5}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2200(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/dlnasharedmodule/HtcDLNAController;->prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto/16 :goto_7

    .line 1425
    :sswitch_b3
    const-string v3, "[HtcDLNAController]"

    const-string v4, "DMR Request timeout"

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1430
    :sswitch_bc
    const-string v3, "[HtcDLNAController]"

    const-string v4, "DMR Request waiting..."

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1434
    :sswitch_c5
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1439
    :sswitch_e5
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMS Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$200(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_7

    .line 1446
    :sswitch_10d
    const-string v3, "[HtcDLNAController]"

    const-string v4, "Showing details..."

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1451
    :sswitch_116
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CtrlErr - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1454
    .local v0, bdN:Landroid/os/Bundle;
    const-string v3, "arg0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1456
    .local v2, errMsg:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_202

    .line 1496
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ML Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1462
    :sswitch_16d
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$200(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_7

    .line 1468
    :sswitch_177
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1100(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1474
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v3, v6}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1200(Landroid/media/dlnasharedmodule/HtcDLNAController;I)V

    goto/16 :goto_7

    .line 1479
    :sswitch_186
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1100(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1483
    invoke-static {}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2300()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 1491
    :sswitch_19b
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto/16 :goto_7

    .line 1502
    .end local v0           #bdN:Landroid/os/Bundle;
    .end local v2           #errMsg:Ljava/lang/String;
    :sswitch_1a6
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->powerOffDMR()V

    goto/16 :goto_7

    .line 1512
    :sswitch_1ad
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$2;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z
    invoke-static {v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2402(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z

    goto/16 :goto_7

    .line 1380
    :sswitch_data_1b4
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_38
        0x3 -> :sswitch_42
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_66
        0x7 -> :sswitch_71
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_a0
        0x64 -> :sswitch_116
        0x66 -> :sswitch_1a6
        0x67 -> :sswitch_c5
        0x68 -> :sswitch_b3
        0x69 -> :sswitch_bc
        0x6a -> :sswitch_e5
        0x6b -> :sswitch_10d
        0xc9 -> :sswitch_7
        0xca -> :sswitch_1ad
    .end sparse-switch

    .line 1456
    :sswitch_data_202
    .sparse-switch
        -0x13e -> :sswitch_7
        -0x13a -> :sswitch_19b
        -0x134 -> :sswitch_186
        -0x12d -> :sswitch_16d
        -0x12c -> :sswitch_7
        0x2 -> :sswitch_7
        0x2c0 -> :sswitch_177
        0x2ca -> :sswitch_177
        0x2cc -> :sswitch_186
    .end sparse-switch
.end method
