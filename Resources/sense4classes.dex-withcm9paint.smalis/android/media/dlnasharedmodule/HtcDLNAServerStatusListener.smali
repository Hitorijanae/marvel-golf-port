.class public Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAServerStatusListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "uniqueID"
    .parameter "serverName"

    .prologue
    .line 12
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 17
    return-void
.end method
