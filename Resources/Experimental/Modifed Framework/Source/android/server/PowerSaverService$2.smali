.class Landroid/server/PowerSaverService$2;
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
    .line 337
    iput-object p1, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mMode:I
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$000(Landroid/server/PowerSaverService;)I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_d

    .line 386
    :goto_c
    return-void

    .line 344
    :cond_d
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1000(Landroid/server/PowerSaverService;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "download"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 346
    .local v0, dl:Landroid/app/DownloadManager;
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 351
    .local v1, query:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4f

    .line 352
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1100(Landroid/server/PowerSaverService;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_41

    .line 354
    const-string v2, "PowerSaverService"

    const-string/jumbo v3, "screenOffTask: not going to try to turn data off this time because there were too many attempts and downloads are still running"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 358
    :cond_41
    const-string v2, "PowerSaverService"

    const-string/jumbo v3, "screenOffTask: Detected downloads were running, rescheduling data off"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->scheduleScreenOffTaskWithBackoff()V
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1200(Landroid/server/PowerSaverService;)V

    goto :goto_c

    .line 361
    :cond_4f
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #setter for: Landroid/server/PowerSaverService;->screenOffScheduleAttempts:I
    invoke-static {v2, v4}, Landroid/server/PowerSaverService;->access$1102(Landroid/server/PowerSaverService;I)I

    .line 363
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->skipReadingCurrentState:Z
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$900(Landroid/server/PowerSaverService;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 364
    const-string v2, "PowerSaverService"

    const-string/jumbo v5, "screenOffTask: storing current data states"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->requestPreferredDataType()V
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1300(Landroid/server/PowerSaverService;)V

    .line 366
    iget-object v5, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1000(Landroid/server/PowerSaverService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "mobile_data"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_cd

    move v2, v3

    :goto_7f
    #setter for: Landroid/server/PowerSaverService;->originalDataOn:Z
    invoke-static {v5, v2}, Landroid/server/PowerSaverService;->access$202(Landroid/server/PowerSaverService;Z)Z

    .line 368
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1000(Landroid/server/PowerSaverService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "power_saver_original_network_on"

    iget-object v6, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->originalDataOn:Z
    invoke-static {v6}, Landroid/server/PowerSaverService;->access$200(Landroid/server/PowerSaverService;)Z

    move-result v6

    if-eqz v6, :cond_98

    move v4, v3

    :cond_98
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    iget-object v4, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Landroid/server/PowerSaverService;->access$800(Landroid/server/PowerSaverService;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    #setter for: Landroid/server/PowerSaverService;->originalWifiEnabled:Z
    invoke-static {v2, v4}, Landroid/server/PowerSaverService;->access$702(Landroid/server/PowerSaverService;Z)Z

    .line 376
    :cond_aa
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->handleScreenOffData()V
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1400(Landroid/server/PowerSaverService;)V

    .line 379
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mScreenOffSyncMode:I
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1500(Landroid/server/PowerSaverService;)I

    move-result v2

    const/16 v4, 0x23

    if-eq v2, v4, :cond_c6

    .line 380
    const-string v2, "PowerSaverService"

    const-string/jumbo v4, "screenOffTask: scheduling syncs"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->scheduleSyncTask()V
    invoke-static {v2}, Landroid/server/PowerSaverService;->access$1600(Landroid/server/PowerSaverService;)V

    .line 384
    :cond_c6
    iget-object v2, p0, Landroid/server/PowerSaverService$2;->this$0:Landroid/server/PowerSaverService;

    #setter for: Landroid/server/PowerSaverService;->skipReadingCurrentState:Z
    invoke-static {v2, v3}, Landroid/server/PowerSaverService;->access$902(Landroid/server/PowerSaverService;Z)Z

    goto/16 :goto_c

    :cond_cd
    move v2, v4

    .line 366
    goto :goto_7f
.end method
