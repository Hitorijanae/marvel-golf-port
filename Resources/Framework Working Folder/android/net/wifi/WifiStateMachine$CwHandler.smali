.class Landroid/net/wifi/WifiStateMachine$CwHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CwHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 4425
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 4426
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4428
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    .line 4431
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_144

    .line 4516
    :goto_5
    return-void

    .line 4433
    :pswitch_6
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] EVENT_CW_REGISTER_START"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterCapability()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 4435
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] no register capability"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4438
    :cond_1d
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_32

    .line 4439
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] mCWService does not bind!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Z

    goto :goto_5

    .line 4444
    :cond_32
    :try_start_32
    const-string v6, "com.htc.cw.ICWService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 4445
    .local v4, stubrefClass:Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4446
    .local v0, asInterface:Ljava/lang/reflect/Method;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_5c

    .line 4447
    const-string v6, "Get the ICWService"

    const-string/jumbo v7, "mCWService is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_56} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_56} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_56} :catch_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_56} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_56} :catch_a5

    goto :goto_5

    .line 4458
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_57
    move-exception v2

    .line 4460
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    .line 4450
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_5c
    const/4 v6, 0x1

    :try_start_5d
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4451
    .local v1, cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "register"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4452
    .local v3, register:Ljava/lang/reflect/Method;
    if-nez v3, :cond_8a

    .line 4453
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] can not get the CWService method register"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_83} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_83} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5d .. :try_end_83} :catch_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5d .. :try_end_83} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_83} :catch_a5

    goto :goto_5

    .line 4461
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_84
    move-exception v2

    .line 4463
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    .line 4456
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v3       #register:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_8a
    const/4 v6, 0x0

    :try_start_8b
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4457
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] call CW Register success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_97} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_8b .. :try_end_97} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8b .. :try_end_97} :catch_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8b .. :try_end_97} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8b .. :try_end_97} :catch_a5

    goto/16 :goto_5

    .line 4464
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_99
    move-exception v2

    .line 4466
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_5

    .line 4467
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_9f
    move-exception v2

    .line 4469
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_5

    .line 4470
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_a5
    move-exception v2

    .line 4472
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 4477
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :pswitch_ab
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] EVENT_CW_DEREGISTER_START"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_c8

    .line 4479
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] mCWService does not bind!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Z

    goto/16 :goto_5

    .line 4483
    :cond_c8
    :try_start_c8
    const-string v6, "com.htc.cw.ICWService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 4484
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4485
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_f4

    .line 4486
    const-string v6, "Get the ICWService"

    const-string/jumbo v7, "mCWService is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c8 .. :try_end_ec} :catch_ee
    .catch Ljava/lang/IllegalAccessException; {:try_start_c8 .. :try_end_ec} :catch_11d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c8 .. :try_end_ec} :catch_132
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c8 .. :try_end_ec} :catch_138
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c8 .. :try_end_ec} :catch_13e

    goto/16 :goto_5

    .line 4497
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_ee
    move-exception v2

    .line 4499
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 4489
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_f4
    const/4 v6, 0x1

    :try_start_f5
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4490
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "unRegister"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 4491
    .local v5, unRegister:Ljava/lang/reflect/Method;
    if-nez v5, :cond_123

    .line 4492
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] can not get the CWService method unRegister"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f5 .. :try_end_11b} :catch_ee
    .catch Ljava/lang/IllegalAccessException; {:try_start_f5 .. :try_end_11b} :catch_11d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f5 .. :try_end_11b} :catch_132
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f5 .. :try_end_11b} :catch_138
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f5 .. :try_end_11b} :catch_13e

    goto/16 :goto_5

    .line 4500
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    .end local v5           #unRegister:Ljava/lang/reflect/Method;
    :catch_11d
    move-exception v2

    .line 4502
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    .line 4495
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    .restart local v5       #unRegister:Ljava/lang/reflect/Method;
    :cond_123
    const/4 v6, 0x0

    :try_start_124
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4496
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] call CW unRegister success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_124 .. :try_end_130} :catch_ee
    .catch Ljava/lang/IllegalAccessException; {:try_start_124 .. :try_end_130} :catch_11d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_124 .. :try_end_130} :catch_132
    .catch Ljava/lang/NoSuchMethodException; {:try_start_124 .. :try_end_130} :catch_138
    .catch Ljava/lang/ClassNotFoundException; {:try_start_124 .. :try_end_130} :catch_13e

    goto/16 :goto_5

    .line 4503
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    .end local v5           #unRegister:Ljava/lang/reflect/Method;
    :catch_132
    move-exception v2

    .line 4505
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_5

    .line 4506
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_138
    move-exception v2

    .line 4508
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_5

    .line 4509
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_13e
    move-exception v2

    .line 4511
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 4431
    :pswitch_data_144
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_ab
    .end packed-switch
.end method
