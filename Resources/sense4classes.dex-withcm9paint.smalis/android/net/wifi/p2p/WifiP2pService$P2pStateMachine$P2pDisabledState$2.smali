.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;)V
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 577
    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 578
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23005

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 579
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 581
    :cond_10
    const/4 v0, 0x1

    return v0
.end method
