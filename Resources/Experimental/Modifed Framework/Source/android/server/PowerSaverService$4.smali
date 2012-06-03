.class Landroid/server/PowerSaverService$4;
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
    .line 536
    iput-object p1, p0, Landroid/server/PowerSaverService$4;->this$0:Landroid/server/PowerSaverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 540
    iget-object v1, p0, Landroid/server/PowerSaverService$4;->this$0:Landroid/server/PowerSaverService;

    iget-object v0, p0, Landroid/server/PowerSaverService$4;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->telephony:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$2100(Landroid/server/PowerSaverService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3b

    const/4 v0, 0x1

    :goto_10
    #setter for: Landroid/server/PowerSaverService;->isCdma:Z
    invoke-static {v1, v0}, Landroid/server/PowerSaverService;->access$1902(Landroid/server/PowerSaverService;Z)Z

    .line 541
    const-string v1, "PowerSaverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone type detected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/server/PowerSaverService$4;->this$0:Landroid/server/PowerSaverService;

    #getter for: Landroid/server/PowerSaverService;->isCdma:Z
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$1900(Landroid/server/PowerSaverService;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "CDMA"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Landroid/server/PowerSaverService$4;->this$0:Landroid/server/PowerSaverService;

    #calls: Landroid/server/PowerSaverService;->requestPreferredDataType()V
    invoke-static {v0}, Landroid/server/PowerSaverService;->access$1300(Landroid/server/PowerSaverService;)V

    .line 543
    return-void

    .line 540
    :cond_3b
    const/4 v0, 0x0

    goto :goto_10

    .line 541
    :cond_3d
    const-string v0, "GSM"

    goto :goto_2a
.end method
