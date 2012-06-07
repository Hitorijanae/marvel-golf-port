.class final Landroid/app/ContextImpl$41;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 566
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 568
    const-string/jumbo v1, "wireless_display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 569
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_b

    .line 570
    const/4 v1, 0x0

    .line 572
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Lcom/htc/service/WirelessDisplayManager;

    invoke-static {v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWirelessDisplayService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/service/WirelessDisplayManager;-><init>(Lcom/htc/service/IWirelessDisplayService;)V

    goto :goto_a
.end method
