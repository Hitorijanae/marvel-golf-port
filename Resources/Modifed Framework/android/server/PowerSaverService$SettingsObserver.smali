.class Landroid/server/PowerSaverService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerSaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/PowerSaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/PowerSaverService;


# direct methods
.method constructor <init>(Landroid/server/PowerSaverService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 664
    iput-object p1, p0, Landroid/server/PowerSaverService$SettingsObserver;->this$0:Landroid/server/PowerSaverService;

    .line 665
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 666
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 669
    iget-object v1, p0, Landroid/server/PowerSaverService$SettingsObserver;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/PowerSaverService;->access$1000(Landroid/server/PowerSaverService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_saver_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 672
    const-string/jumbo v1, "power_saver_sync_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 674
    const-string/jumbo v1, "power_saver_data_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 676
    const-string/jumbo v1, "power_saver_sync_interval"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 678
    const-string/jumbo v1, "power_saver_data_delay"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 680
    const-string/jumbo v1, "power_saver_wifi_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 682
    const-string/jumbo v1, "power_saver_sync_mobile_preference"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 684
    const-string/jumbo v1, "power_saver_sync_data_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 686
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 690
    iget-object v0, p0, Landroid/server/PowerSaverService$SettingsObserver;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->updateSettings()V
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$2200(Landroid/server/PowerSaverService;)V

    .line 691
    return-void
.end method
