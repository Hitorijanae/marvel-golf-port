.class Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;
.super Landroid/os/Handler;
.source "SamsungRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SamsungRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1e


# instance fields
.field private mConnectivityReceiver:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDesiredNetworkType:I

.field private mNetworktypeResponse:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/SamsungRIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SamsungRIL;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->this$0:Lcom/android/internal/telephony/SamsungRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1119
    new-instance v0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;Lcom/android/internal/telephony/SamsungRIL$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    .line 1123
    iput-object p2, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    .line 1124
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->stopListening()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1112
    iget v0, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mDesiredNetworkType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    iput p1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mDesiredNetworkType:I

    return p1
.end method

.method private startListening()V
    .registers 4

    .prologue
    .line 1127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1130
    return-void
.end method

.method private declared-synchronized stopListening()V
    .registers 3

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 1134
    monitor-exit p0

    return-void

    .line 1133
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 1150
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 1165
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected event not handled"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1153
    :pswitch_f
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1156
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v1, "RILJ"

    const-string/jumbo v2, "preferred NetworkType set upping Mobile Dataconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    invoke-static {v1, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1161
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1162
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    .line 1167
    return-void

    .line 1150
    :pswitch_data_32
    .packed-switch 0x1e
        :pswitch_f
    .end packed-switch
.end method

.method public setPreferedNetworkType(ILandroid/os/Message;)V
    .registers 6
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1138
    const-string v1, "RILJ"

    const-string v2, "Mobile Dataconnection is online setting it down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iput p1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mDesiredNetworkType:I

    .line 1140
    iput-object p2, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1144
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungRIL$ConnectivityHandler;->startListening()V

    .line 1145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1146
    return-void
.end method
