.class public Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAControllerStatusListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 47
    return-void
.end method

.method public onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .registers 2
    .parameter "ctlInfo"

    .prologue
    .line 21
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 31
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .registers 4
    .parameter "index"
    .parameter "details"

    .prologue
    .line 26
    return-void
.end method

.method public onPlayStateChanged(I)V
    .registers 2
    .parameter "playState"

    .prologue
    .line 16
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 36
    return-void
.end method

.method public onUpdatePosition(J)V
    .registers 3
    .parameter "position"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    return-void
.end method
