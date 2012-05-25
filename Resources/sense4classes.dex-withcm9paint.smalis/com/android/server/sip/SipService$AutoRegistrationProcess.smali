.class Lcom/android/server/sip/SipService$AutoRegistrationProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRegistrationProcess"
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mKeepAliveSuccessCount:I

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 792
    iput-object p1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 795
    const-string v0, "SipAutoReg"

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    .line 799
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 800
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 805
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 807
    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .registers 3

    .prologue
    .line 1003
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v0, v1, 0xa

    .line 1004
    .local v0, duration:I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_b

    .line 1005
    const/16 v0, 0xe10

    .line 1009
    :goto_a
    return v0

    .line 1007
    :cond_b
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    goto :goto_a
.end method

.method private getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 810
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .registers 5
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 1024
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v0, :cond_16

    move-object v0, p1

    .line 1025
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1029
    :goto_15
    return v1

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1b
    move v1, v0

    goto :goto_15

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private restart(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1000
    return-void
.end method

.method private restartLater()V
    .registers 2

    .prologue
    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1109
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1110
    return-void
.end method

.method private startKeepAliveProcess(I)V
    .registers 6
    .parameter "interval"

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_12

    .line 834
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 839
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_11
    .catch Ljavax/sip/SipException; {:try_start_c .. :try_end_11} :catch_18

    .line 844
    :goto_11
    return-void

    .line 836
    :cond_12
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_c

    .line 840
    :catch_18
    move-exception v0

    .line 841
    .local v0, e:Ljavax/sip/SipException;
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to start keepalive w interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private stopKeepAliveProcess()V
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 851
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 852
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .registers 2

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 4
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 905
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->onResponse(Z)V

    .line 906
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .registers 3

    .prologue
    .line 925
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_10

    .line 926
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 930
    .local v0, newInterval:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 931
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 933
    .end local v0           #newInterval:I
    :cond_10
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 4
    .parameter "session"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1016
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 1021
    :goto_a
    return-void

    .line 1018
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1019
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1020
    monitor-exit v1

    goto :goto_a

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 10
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 1035
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 1036
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_b

    monitor-exit v2

    .line 1067
    :goto_a
    return-void

    .line 1038
    :cond_b
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1040
    if-lez p2, :cond_63

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1044
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-nez v1, :cond_55

    .line 1045
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1047
    add-int/lit8 p2, p2, -0x3c

    .line 1048
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_2b

    .line 1049
    const/16 p2, 0x3c

    .line 1051
    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1053
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 1054
    .local v0, localProfile:Landroid/net/sip/SipProfile;
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1056
    :cond_4c
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 1059
    .end local v0           #localProfile:Landroid/net/sip/SipProfile;
    :cond_55
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1066
    :goto_5e
    monitor-exit v2

    goto :goto_a

    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1

    .line 1061
    :cond_63
    const/4 v1, 0x0

    :try_start_64
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1062
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->run()V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_60

    goto :goto_5e
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1075
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 1092
    :goto_a
    return-void

    .line 1077
    :cond_b
    sparse-switch p2, :sswitch_data_2c

    .line 1084
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1087
    :goto_11
    iput p2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1088
    iput-object p3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1091
    monitor-exit v1

    goto :goto_a

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    .line 1081
    :sswitch_28
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    goto :goto_11

    .line 1077
    :sswitch_data_2c
    .sparse-switch
        -0xc -> :sswitch_28
        -0x8 -> :sswitch_28
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 4
    .parameter "session"

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1098
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 1105
    :goto_a
    return-void

    .line 1100
    :cond_b
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1101
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1103
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1104
    monitor-exit v1

    goto :goto_a

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onResponse(Z)V
    .registers 8
    .parameter "portChanged"

    .prologue
    const/16 v5, 0xa

    .line 857
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 858
    if-eqz p1, :cond_58

    .line 859
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 860
    .local v0, interval:I
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    if-ge v1, v5, :cond_4e

    .line 861
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keepalive doesn\'t work with interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", past success count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-le v0, v5, :cond_46

    .line 865
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    invoke-static {v1, v3, v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    .line 867
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 885
    .end local v0           #interval:I
    :cond_46
    :goto_46
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-eqz v1, :cond_4c

    if-nez p1, :cond_6a

    :cond_4c
    monitor-exit v2

    .line 897
    :goto_4d
    return-void

    .line 875
    .restart local v0       #interval:I
    :cond_4e
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_46

    .line 896
    .end local v0           #interval:I
    :catchall_55
    move-exception v1

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v1

    .line 880
    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    .line 882
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_46

    .line 890
    :cond_6a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 894
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 895
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v3, 0xe10

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 896
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_58 .. :try_end_80} :catchall_55

    goto :goto_4d
.end method

.method public run()V
    .registers 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 984
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_9

    monitor-exit v1

    .line 994
    :goto_8
    return-void

    .line 986
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 990
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 991
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 993
    :cond_29
    monitor-exit v1

    goto :goto_8

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 11
    .parameter "listener"

    .prologue
    .line 936
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 937
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_52

    .line 940
    :try_start_8
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v3, :cond_1c

    const/4 v1, 0x0

    .line 943
    .local v1, state:I
    :goto_d
    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 945
    :cond_13
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_52
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_37

    .line 973
    .end local v1           #state:I
    :goto_1a
    :try_start_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_52

    .line 974
    return-void

    .line 940
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    goto :goto_d

    .line 946
    .restart local v1       #state:I
    :cond_23
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v3, :cond_55

    .line 947
    iget-wide v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 949
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_52
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_1a

    .line 970
    .end local v0           #duration:I
    .end local v1           #state:I
    :catch_37
    move-exception v2

    .line 971
    .local v2, t:Ljava/lang/Throwable;
    :try_start_38
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setListener(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 973
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_52
    move-exception v3

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_52

    throw v3

    .line 950
    .restart local v1       #state:I
    :cond_55
    :try_start_55
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    if-eqz v3, :cond_72

    .line 951
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_66

    .line 952
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1a

    .line 954
    :cond_66
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v7, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1a

    .line 957
    :cond_72
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 958
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string/jumbo v7, "no data connection"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1a

    .line 961
    :cond_87
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v3, :cond_97

    .line 962
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string/jumbo v7, "registration not running"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1a

    .line 966
    :cond_97
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_55 .. :try_end_a4} :catchall_52
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_a4} :catch_37

    goto/16 :goto_1a
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .registers 4
    .parameter "group"

    .prologue
    const/4 v1, 0x1

    .line 814
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_15

    .line 815
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 816
    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 817
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 820
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_16

    .line 829
    :cond_15
    :goto_15
    return-void

    .line 825
    :cond_16
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipAutoReg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    goto :goto_15
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_6

    .line 922
    :goto_5
    return-void

    .line 910
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 911
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_2e

    .line 913
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 917
    :cond_2e
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 918
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stopKeepAliveProcess()V

    .line 920
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 921
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_5
.end method
