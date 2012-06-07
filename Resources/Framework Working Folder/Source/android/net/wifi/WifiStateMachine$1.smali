.class Landroid/net/wifi/WifiStateMachine$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v1, p2}, Landroid/net/wifi/WifiStateMachine;->access$002(Landroid/net/wifi/WifiStateMachine;Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_d

    .line 756
    :goto_5
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] mCWService is connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 753
    :catch_d
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 761
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] mCWService is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$002(Landroid/net/wifi/WifiStateMachine;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 763
    return-void
.end method
