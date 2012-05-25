.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CHANGE_TOP_APP:I = 0xc8

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_MAIN_HANDLER_LOG:I = 0xc9

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .registers 9

    .prologue
    .line 1414
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_24

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1417
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1418
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1420
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_15
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1421
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_25

    .line 1422
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 1425
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_25
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1426
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_56

    .line 1427
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_32} :catch_33

    goto :goto_24

    .line 1432
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_33
    move-exception v1

    .line 1433
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4c
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_24

    .line 1430
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_56
    const/4 v5, 0x1

    :try_start_57
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_5a} :catch_33

    move-result-object v2

    goto :goto_4c
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3
    .parameter "code"

    .prologue
    .line 1252
    const-string v0, "(unknown)"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1256
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_278

    .line 1411
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 1258
    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1260
    .local v3, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    iput-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1262
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v6, v3, v9}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto :goto_8

    .line 1265
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_21
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1266
    .restart local v3       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v6, v3}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_8

    .line 1269
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2b
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_3e

    :goto_35
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v9, v6, v8, v7, v10}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1270
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    goto :goto_8

    :cond_3e
    move v7, v8

    .line 1269
    goto :goto_35

    .line 1273
    :pswitch_40
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_4b

    move v8, v7

    :cond_4b
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v9, v6, v7, v8, v10}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    goto :goto_8

    .line 1276
    :pswitch_51
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v8, v6, v7, v9}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    goto :goto_8

    .line 1279
    :pswitch_5d
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v7, v6, v8, v9}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    goto :goto_8

    .line 1282
    :pswitch_69
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v8, v6, v7}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto :goto_8

    .line 1285
    :pswitch_73
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v7, v6, v8}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto :goto_8

    .line 1288
    :pswitch_7d
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_88

    move v8, v7

    :cond_88
    invoke-virtual {v9, v6, v7, v8}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    goto/16 :goto_8

    .line 1292
    :pswitch_8d
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ResultData;

    #calls: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    goto/16 :goto_8

    .line 1295
    :pswitch_98
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_a9

    :goto_a2
    iget v10, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v9, v6, v7, v10, v8}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    goto/16 :goto_8

    :cond_a9
    move v7, v8

    goto :goto_a2

    .line 1299
    :pswitch_ab
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1301
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v2

    .line 1302
    .local v2, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1303
    .local v4, startTime:J
    if-lez v2, :cond_d7

    .line 1304
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " handleBindApplication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_d7
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v6, v1}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1308
    if-lez v2, :cond_8

    .line 1309
    const-string v6, "Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " handleBindApplication, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1313
    .end local v1           #data:Landroid/app/ActivityThread$AppBindData;
    .end local v2           #performanceFlag:I
    .end local v4           #startTime:J
    :pswitch_10e
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v6, :cond_11b

    .line 1314
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->onTerminate()V

    .line 1316
    :cond_11b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    goto/16 :goto_8

    .line 1319
    :pswitch_124
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$NewIntentData;

    #calls: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    goto/16 :goto_8

    .line 1322
    :pswitch_12f
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ReceiverData;

    #calls: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1323
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    goto/16 :goto_8

    .line 1326
    :pswitch_13d
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateServiceData;

    #calls: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    goto/16 :goto_8

    .line 1329
    :pswitch_148
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    goto/16 :goto_8

    .line 1332
    :pswitch_153
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    goto/16 :goto_8

    .line 1335
    :pswitch_15e
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ServiceArgsData;

    #calls: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    goto/16 :goto_8

    .line 1338
    :pswitch_169
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1339
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    goto/16 :goto_8

    .line 1342
    :pswitch_177
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1345
    :pswitch_182
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v7, v6, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_8

    .line 1348
    :pswitch_18d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1349
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v6, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v7, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v8, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1352
    .end local v0           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_19c
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_8

    .line 1355
    :pswitch_1a3
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_8

    .line 1358
    :pswitch_1ae
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->handleLowMemory()V

    goto/16 :goto_8

    .line 1361
    :pswitch_1b5
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v7, v6}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1364
    :pswitch_1c0
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1d1

    :goto_1c6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ProfilerControlData;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v7, v6, v8}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_8

    :cond_1d1
    move v7, v8

    goto :goto_1c6

    .line 1367
    :pswitch_1d3
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    goto/16 :goto_8

    .line 1370
    :pswitch_1de
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    goto/16 :goto_8

    .line 1373
    :pswitch_1e9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_8

    .line 1376
    :pswitch_1f2
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/IContentProvider;

    invoke-virtual {v7, v6}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/content/IContentProvider;)V

    goto/16 :goto_8

    .line 1379
    :pswitch_1fd
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v6}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_8

    .line 1382
    :pswitch_204
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1385
    :pswitch_213
    new-instance v7, Landroid/app/RemoteServiceException;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1387
    :pswitch_21d
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_22c

    :goto_223
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpHeapData;

    invoke-virtual {v9, v7, v6}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_8

    :cond_22c
    move v7, v8

    goto :goto_223

    .line 1390
    :pswitch_22e
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_8

    .line 1393
    :pswitch_239
    iget-object v9, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_248

    :goto_243
    #calls: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v9, v6, v7}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto/16 :goto_8

    :cond_248
    move v7, v8

    goto :goto_243

    .line 1396
    :pswitch_24a
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    #calls: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 1399
    :pswitch_255
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #calls: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_8

    .line 1402
    :pswitch_260
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    goto/16 :goto_8

    .line 1407
    :pswitch_269
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Landroid/app/ActivityThread;->handleChangeTopApp(I)V
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;I)V

    goto/16 :goto_8

    .line 1256
    :pswitch_data_278
    .packed-switch 0x64
        :pswitch_9
        :pswitch_2b
        :pswitch_40
        :pswitch_51
        :pswitch_5d
        :pswitch_69
        :pswitch_73
        :pswitch_7d
        :pswitch_8d
        :pswitch_98
        :pswitch_ab
        :pswitch_10e
        :pswitch_124
        :pswitch_12f
        :pswitch_13d
        :pswitch_15e
        :pswitch_169
        :pswitch_177
        :pswitch_182
        :pswitch_18d
        :pswitch_19c
        :pswitch_148
        :pswitch_153
        :pswitch_1a3
        :pswitch_1ae
        :pswitch_1b5
        :pswitch_21
        :pswitch_1c0
        :pswitch_1d3
        :pswitch_1de
        :pswitch_1e9
        :pswitch_1f2
        :pswitch_1fd
        :pswitch_204
        :pswitch_213
        :pswitch_21d
        :pswitch_22e
        :pswitch_239
        :pswitch_24a
        :pswitch_255
        :pswitch_260
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_269
    .end packed-switch
.end method
