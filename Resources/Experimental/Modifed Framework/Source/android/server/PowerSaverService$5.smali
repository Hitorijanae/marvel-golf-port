.class Landroid/server/PowerSaverService$5;
.super Ljava/lang/Object;
.source "PowerSaverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/PowerSaverService;->systemReady()V
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
    .line 593
    iput-object p1, p0, Landroid/server/PowerSaverService$5;->this$0:Landroid/server/PowerSaverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 597
    iget-object v0, p0, Landroid/server/PowerSaverService$5;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$300(Landroid/server/PowerSaverService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 598
    return-void
.end method
