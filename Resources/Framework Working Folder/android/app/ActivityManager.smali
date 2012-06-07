.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/app/HtcIfActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$1;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$TaskThumbnails;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;
    }
.end annotation


# static fields
.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final RECENT_FOR_HTC:I = 0x20

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final REMOVE_TASK_KILL_PROCESS:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public static isHighEndGfx(Landroid/view/Display;)Z
    .registers 9
    .parameter "display"

    .prologue
    const/4 v3, 0x1

    .line 222
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 223
    .local v2, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 224
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    const-wide/32 v6, 0x20000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_15

    .line 237
    :cond_14
    :goto_14
    return v3

    .line 229
    :cond_15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 230
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 231
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v4, v5

    .line 232
    .local v1, pixels:I
    const v4, 0x96000

    if-ge v1, v4, :cond_14

    .line 237
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static isLargeRAM()Z
    .registers 5

    .prologue
    .line 248
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 249
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x28000000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_15

    .line 253
    const/4 v1, 0x1

    .line 255
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static isRunningInTestHarness()Z
    .registers 2

    .prologue
    .line 1526
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserAMonkey()Z
    .registers 1

    .prologue
    .line 1516
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 1519
    :goto_8
    return v0

    .line 1517
    :catch_9
    move-exception v0

    .line 1519
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static staticGetLargeMemoryClass()I
    .registers 3

    .prologue
    .line 211
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, "16m"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, vmHeapSize:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static staticGetMemoryClass()I
    .registers 3

    .prologue
    .line 183
    const-string v1, "dalvik.vm.heapgrowthlimit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, vmHeapSize:Ljava/lang/String;
    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    :goto_21
    return v1

    :cond_22
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    goto :goto_21
.end method


# virtual methods
.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    .registers 22
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "requiredPermission"
    .parameter "serialized"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1644
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .registers 5
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 991
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 994
    :goto_8
    return v1

    .line 993
    :catch_9
    move-exception v0

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1434
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1437
    :goto_7
    return-void

    .line 1435
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getAllPackageLaunchCounts()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1536
    :try_start_0
    const-string/jumbo v8, "usagestats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v7

    .line 1538
    .local v7, usageStatsService:Lcom/android/internal/app/IUsageStats;
    if-nez v7, :cond_13

    .line 1539
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1555
    .end local v7           #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :cond_12
    :goto_12
    return-object v4

    .line 1542
    .restart local v7       #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :cond_13
    invoke-interface {v7}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    .line 1543
    .local v0, allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    if-nez v0, :cond_2d

    .line 1544
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 1553
    .end local v0           #allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    .end local v7           #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :catch_1f
    move-exception v2

    .line 1554
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v9, "Could not query launch counts"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    .line 1547
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    .restart local v7       #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :cond_2d
    :try_start_2d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1548
    .local v4, launchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, v0

    .local v1, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_35
    if-ge v3, v5, :cond_12

    aget-object v6, v1, v3

    .line 1549
    .local v6, pkgUsageStats:Lcom/android/internal/os/PkgUsageStats;
    iget-object v8, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_44} :catch_1f

    .line 1548
    add-int/lit8 v3, v3, 0x1

    goto :goto_35
.end method

.method public getAllPackageUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .registers 5

    .prologue
    .line 1566
    :try_start_0
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    .line 1568
    .local v1, usageStatsService:Lcom/android/internal/app/IUsageStats;
    if-eqz v1, :cond_1a

    .line 1569
    invoke-interface {v1}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    .line 1574
    .end local v1           #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :goto_11
    return-object v2

    .line 1571
    :catch_12
    move-exception v0

    .line 1572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not query usage stats"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/os/PkgUsageStats;

    goto :goto_11
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 1623
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1625
    :goto_8
    return-object v1

    .line 1624
    :catch_9
    move-exception v0

    .line 1625
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 2

    .prologue
    .line 1444
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 1447
    :goto_8
    return-object v0

    .line 1445
    :catch_9
    move-exception v0

    .line 1447
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 3

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 116
    :goto_8
    return v1

    .line 114
    :catch_9
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getHtcDeviceInfo()Landroid/app/HtcDeviceInfo;
    .registers 3

    .prologue
    .line 1593
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getHtcDeviceInfo()Landroid/app/HtcDeviceInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1595
    :goto_8
    return-object v1

    .line 1594
    :catch_9
    move-exception v0

    .line 1595
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLargeMemoryClass()I
    .registers 2

    .prologue
    .line 204
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .registers 6

    .prologue
    const/16 v2, 0x140

    .line 1457
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1458
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1460
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    .line 1475
    .end local v0           #density:I
    :goto_19
    return v0

    .line 1465
    .restart local v0       #density:I
    :cond_1a
    sparse-switch v0, :sswitch_data_28

    goto :goto_19

    .line 1467
    :sswitch_1e
    const/16 v0, 0xa0

    goto :goto_19

    .line 1469
    :sswitch_21
    const/16 v0, 0xf0

    goto :goto_19

    :sswitch_24
    move v0, v2

    .line 1471
    goto :goto_19

    :sswitch_26
    move v0, v2

    .line 1473
    goto :goto_19

    .line 1465
    :sswitch_data_28
    .sparse-switch
        0x78 -> :sswitch_1e
        0xa0 -> :sswitch_21
        0xf0 -> :sswitch_24
        0x140 -> :sswitch_26
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .registers 6

    .prologue
    .line 1486
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1487
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x105

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1489
    .local v2, size:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-eq v3, v4, :cond_18

    .line 1506
    .end local v2           #size:I
    :goto_17
    return v2

    .line 1494
    .restart local v2       #size:I
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1496
    .local v0, density:I
    sparse-switch v0, :sswitch_data_38

    goto :goto_17

    .line 1498
    :sswitch_22
    mul-int/lit16 v3, v2, 0xa0

    div-int/lit8 v2, v3, 0x78

    goto :goto_17

    .line 1500
    :sswitch_27
    mul-int/lit16 v3, v2, 0xf0

    div-int/lit16 v2, v3, 0xa0

    goto :goto_17

    .line 1502
    :sswitch_2c
    mul-int/lit16 v3, v2, 0x140

    div-int/lit16 v2, v3, 0xf0

    goto :goto_17

    .line 1504
    :sswitch_31
    mul-int/lit16 v3, v2, 0xa0

    mul-int/lit8 v3, v3, 0x2

    div-int/lit16 v2, v3, 0x140

    goto :goto_17

    .line 1496
    :sswitch_data_38
    .sparse-switch
        0x78 -> :sswitch_22
        0xa0 -> :sswitch_27
        0xf0 -> :sswitch_2c
        0x140 -> :sswitch_31
    .end sparse-switch
.end method

.method public getMemoryClass()I
    .registers 2

    .prologue
    .line 176
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 3
    .parameter "outInfo"

    .prologue
    .line 981
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 984
    :goto_7
    return-void

    .line 982
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 154
    :goto_8
    return v1

    .line 152
    :catch_9
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .parameter "packageName"

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 135
    :goto_8
    return v1

    .line 133
    :catch_9
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getPrevAppPkgName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1660
    const/4 v0, 0x0

    .line 1662
    .local v0, prev:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getPrevAppPkgName()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 1665
    :goto_9
    return-object v0

    .line 1663
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 4
    .parameter "pids"

    .prologue
    .line 1376
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1378
    :goto_8
    return-object v1

    .line 1377
    :catch_9
    move-exception v0

    .line 1378
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1110
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1112
    :goto_8
    return-object v1

    .line 1111
    :catch_9
    move-exception v0

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .registers 5
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->getRecentTasks(II)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 389
    :goto_8
    return-object v1

    .line 387
    :catch_9
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1360
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1362
    :goto_8
    return-object v1

    .line 1361
    :catch_9
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1347
    :goto_8
    return-object v1

    .line 1346
    :catch_9
    move-exception v0

    .line 1347
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 894
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 898
    :goto_8
    return-object v1

    .line 896
    :catch_9
    move-exception v0

    .line 898
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServices(I)Ljava/util/List;
    .registers 5
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 878
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 882
    :goto_9
    return-object v1

    .line 880
    :catch_a
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .registers 4
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .registers 6
    .parameter "maxNum"
    .parameter "flags"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/app/IThumbnailReceiver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 524
    :goto_8
    return-object v1

    .line 522
    :catch_9
    move-exception v0

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 665
    :goto_8
    return-object v1

    .line 663
    :catch_9
    move-exception v0

    .line 665
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getTopActivityName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1670
    const-string v0, ""

    .line 1672
    .local v0, strActivityName:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getTopActivityName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 1675
    :goto_a
    return-object v0

    .line 1673
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public isGuestMode()Z
    .registers 2

    .prologue
    .line 1603
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isGuestMode()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 1606
    :goto_8
    return v0

    .line 1604
    :catch_9
    move-exception v0

    .line 1606
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1409
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1412
    :goto_7
    return-void

    .line 1410
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public moveTaskToFront(II)V
    .registers 4
    .parameter "taskId"
    .parameter "flags"

    .prologue
    .line 696
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToFront(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 700
    :goto_7
    return-void

    .line 697
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public removeSubTask(II)Z
    .registers 5
    .parameter "taskId"
    .parameter "subTaskIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 566
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->removeSubTask(II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 569
    :goto_8
    return v1

    .line 567
    :catch_9
    move-exception v0

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public removeTask(II)Z
    .registers 5
    .parameter "taskId"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->removeTask(II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 596
    :goto_8
    return v1

    .line 594
    :catch_9
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public restartPackage(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 127
    :goto_7
    return-void

    .line 124
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setGuestMode(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1613
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setGuestMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1616
    :goto_7
    return-void

    .line 1614
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setHTCTestToken(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 1652
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setHTCTestToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1656
    :goto_7
    return-void

    .line 1653
    :catch_8
    move-exception v0

    .line 1654
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHTCTestToken failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "ask"

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 165
    :goto_7
    return-void

    .line 162
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 146
    :goto_7
    return-void

    .line 143
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public switchUser(I)Z
    .registers 4
    .parameter "userid"

    .prologue
    .line 1583
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1585
    :goto_8
    return v1

    .line 1584
    :catch_9
    move-exception v0

    .line 1585
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "values"

    .prologue
    .line 1631
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1635
    :goto_7
    return-void

    .line 1632
    :catch_8
    move-exception v0

    goto :goto_7
.end method
