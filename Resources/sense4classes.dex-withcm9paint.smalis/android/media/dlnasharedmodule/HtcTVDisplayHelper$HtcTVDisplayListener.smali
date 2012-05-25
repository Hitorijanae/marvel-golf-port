.class public Landroid/media/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.super Ljava/lang/Object;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcTVDisplayListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public onNoTVToPlay()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .registers 2
    .parameter "dongle"

    .prologue
    .line 44
    return-void
.end method

.method public onTVOff()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public onTVOn()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public onTVReadyToPlay()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method
