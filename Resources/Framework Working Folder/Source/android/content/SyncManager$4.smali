.class Landroid/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 197
    iget-object v0, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 200
    :cond_1b
    return-void
.end method
