.class public final Lcom/htc/utils/ulog/UPolicy;
.super Ljava/lang/Object;
.source "UPolicy.java"

# interfaces
.implements Lcom/htc/utils/ulog/Policy;


# static fields
.field private static final APPID_SENSE_DOT_COM:Ljava/lang/String; = "sense.com"

#the value of this static final field might be set in the static constructor
.field private static final IS_DEBUG_ULOG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_EFFECTIVE_DATE_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_LESS_THAN_SENSE_40:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_POLICY_ENABLED:Z = false

.field public static final KEY_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final KEY_DUE_DATE:Ljava/lang/String; = "due_date"

.field public static final KEY_SECOND_SWITCH_OF_ERROR_REPORT:Ljava/lang/String; = "second_switch_of_error_report"

.field public static final KEY_SECOND_SWITCH_OF_USER_PROFILING:Ljava/lang/String; = "second_switch_of_usage_report"

.field public static final KEY_SETTINGS_ERROR_REPORT:Ljava/lang/String; = "settings_error_report"

.field public static final KEY_SETTINGS_SENSE_DOT_COM:Ljava/lang/String; = "settings_sense_dot_com"

.field public static final KEY_SETTINGS_USER_PROFILING:Ljava/lang/String; = "settings_user_profiling"

.field private static final TAG:Ljava/lang/String; = "UPolicy"

.field private static sInit:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sPolicy:Landroid/os/Bundle;

.field private static final sRemoteCallback:Landroid/os/IRemoteCallback;

.field private static sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# instance fields
.field private mAllPolicies:Landroid/os/Bundle;

.field private mAppId:Ljava/lang/String;

.field private mAppPolicies:Landroid/os/Bundle;

.field private mIsSenseDotComAppId:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    .line 43
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense30()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_EFFECTIVE_DATE_ENABLED:Z

    .line 44
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    .line 45
    const-string/jumbo v0, "ulog.enable_logcat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    move v1, v2

    :cond_21
    sput-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    .line 271
    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 277
    new-instance v0, Lcom/htc/utils/ulog/UPolicy$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/UPolicy$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    return-void

    :cond_37
    move v0, v2

    .line 43
    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "appid"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v0, :cond_c

    .line 79
    :cond_b
    :goto_b
    return-void

    .line 64
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 65
    iput-object p1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "sense.com"

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/utils/ulog/UPolicy;->mIsSenseDotComAppId:Z

    .line 70
    :cond_22
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v0, :cond_29

    .line 71
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 72
    :cond_29
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v0, :cond_30

    .line 73
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V

    .line 75
    :cond_30
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_42

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] enabled in engineering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 78
    :cond_42
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_b

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] normal case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    return-object p0
.end method

.method private static canLog(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 13
    .parameter "appBundle"
    .parameter "category"

    .prologue
    const/4 v4, 0x0

    .line 311
    if-eqz p0, :cond_8d

    .line 312
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, cateBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_8d

    .line 314
    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 315
    .local v6, keyBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_8d

    .line 316
    const-string v7, "due_date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    .local v2, dueDate:J
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_83

    .line 318
    .local v4, expired:Z
    :cond_1d
    :goto_1d
    const-string v7, "1"

    const-string v8, "enable"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 319
    .local v5, isEnabled:Z
    const/4 v1, 0x0

    .line 320
    .local v1, defaultValue:Ljava/lang/String;
    if-eqz v4, :cond_3a

    const-string v7, "default_value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 321
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 322
    :cond_3a
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_82

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canLog] category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v2           #dueDate:J
    .end local v4           #expired:Z
    .end local v5           #isEnabled:Z
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_82
    :goto_82
    return v5

    .line 317
    .restart local v0       #cateBundle:Landroid/os/Bundle;
    .restart local v2       #dueDate:J
    .restart local v6       #keyBundle:Landroid/os/Bundle;
    :cond_83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_1d

    const/4 v4, 0x1

    goto :goto_1d

    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v2           #dueDate:J
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_8d
    move v5, v4

    .line 329
    goto :goto_82
.end method

.method private canLog(Ljava/lang/String;)Z
    .registers 4
    .parameter "category"

    .prologue
    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 178
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 179
    .local v0, appPolicy:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    .line 181
    .end local v0           #appPolicy:Landroid/os/Bundle;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private static canLog(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "appid"
    .parameter "category"

    .prologue
    .line 333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 334
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 335
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1b

    .line 336
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 337
    .local v1, appBundle:Landroid/os/Bundle;
    invoke-static {v1, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 340
    .end local v0           #allPolicy:Landroid/os/Bundle;
    .end local v1           #appBundle:Landroid/os/Bundle;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public static canLogErrorReport(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 349
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_6

    .line 358
    :cond_5
    :goto_5
    return v0

    .line 351
    :cond_6
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_d

    .line 352
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 353
    :cond_d
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_5

    .line 354
    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportSettingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 366
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_6

    .line 377
    :cond_5
    :goto_5
    return v0

    .line 368
    :cond_6
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_d

    .line 369
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 370
    :cond_d
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_5

    .line 373
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isEnabledByUser(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1f
    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method private declared-synchronized checkLatestPolicy()V
    .registers 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    if-eq v0, v1, :cond_11

    .line 187
    const-string v0, "UPolicy"

    const-string v1, "[checkLatestPolicy] policy changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 190
    :cond_11
    monitor-exit p0

    return-void

    .line 186
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static init()V
    .registers 5

    .prologue
    .line 287
    sget-object v3, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 288
    :try_start_3
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_33

    .line 289
    const-string/jumbo v2, "userbehavior"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 290
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_33

    .line 291
    invoke-static {v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    .line 292
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_3a

    if-eqz v2, :cond_3d

    .line 294
    :try_start_1a
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    sget-object v4, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v4}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->registerPolicyListener(Landroid/os/IRemoteCallback;)Z

    .line 295
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v2}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->getPolicy()Landroid/os/Bundle;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_35

    .line 299
    :goto_29
    :try_start_29
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is gotten !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 307
    :cond_33
    :goto_33
    monitor-exit v3

    .line 308
    return-void

    .line 296
    :catch_35
    move-exception v1

    .line 297
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29

    .line 307
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3a

    throw v2

    .line 303
    :cond_3d
    :try_start_3d
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is null !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    goto :goto_33
.end method

.method private static isEnabledByUser(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "policy"

    .prologue
    .line 208
    move-object v0, p0

    .line 209
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 210
    const-string/jumbo v2, "settings_user_profiling"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 211
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_27

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_user_profiling value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1           #b:Z
    :cond_27
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private static isErrorReportSettingEnabled(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "policy"

    .prologue
    .line 198
    move-object v0, p0

    .line 199
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 200
    const-string/jumbo v2, "settings_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 201
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_27

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1           #b:Z
    :cond_27
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private static isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "policy"

    .prologue
    .line 233
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_11

    .line 234
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_f

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_f
    const/4 v1, 0x1

    .line 246
    :cond_10
    :goto_10
    return v1

    .line 238
    :cond_11
    move-object v0, p0

    .line 239
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_39

    .line 240
    const-string/jumbo v2, "second_switch_of_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 241
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_10

    const-string v2, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "second_switch_of_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 245
    .end local v1           #b:Z
    :cond_39
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_44

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_44
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "policy"

    .prologue
    .line 255
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_11

    .line 256
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_f

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_f
    const/4 v1, 0x1

    .line 267
    :cond_10
    :goto_10
    return v1

    .line 260
    :cond_11
    move-object v0, p0

    .line 261
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_38

    .line 262
    const-string/jumbo v2, "second_switch_of_usage_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 263
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_10

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSecondSwitchOfUserProfilingEnabled, ver >= 4.0] second_switch_of_usage_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 266
    .end local v1           #b:Z
    :cond_38
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_43

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver > 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_43
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static isSenseDotComEnabled(Landroid/os/Bundle;)Z
    .registers 6
    .parameter "policy"

    .prologue
    .line 218
    move-object v0, p0

    .line 219
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 220
    const-string/jumbo v2, "settings_sense_dot_com"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 221
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_27

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_sense_dot_com value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1           #b:Z
    :cond_27
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private setPolicies()V
    .registers 3

    .prologue
    .line 168
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    .line 169
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 170
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 171
    :cond_1a
    return-void
.end method


# virtual methods
.method public canLogErrorReport(Ljava/lang/String;)Z
    .registers 4
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_6

    .line 97
    :cond_5
    :goto_5
    return v0

    .line 88
    :cond_6
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_d

    .line 89
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 90
    :cond_d
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_5

    .line 91
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 92
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportSettingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public canLogUserProfiling(Ljava/lang/String;)Z
    .registers 4
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 106
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_6

    .line 118
    :cond_5
    :goto_5
    return v0

    .line 108
    :cond_6
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_d

    .line 109
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 110
    :cond_d
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_5

    .line 111
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 115
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isEnabledByUser(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_22
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "category"
    .parameter "key"

    .prologue
    .line 128
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v7, :cond_7

    .line 129
    const-string v6, ""

    .line 160
    :cond_6
    :goto_6
    return-object v6

    .line 130
    :cond_7
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v7, :cond_e

    .line 131
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 132
    :cond_e
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v7, :cond_9c

    .line 133
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9c

    .line 135
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 136
    .local v0, appPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_9c

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, cateBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_9c

    .line 139
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 140
    .local v5, keyBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_9c

    .line 141
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, value:Ljava/lang/String;
    const-string v7, "due_date"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 145
    .local v3, dueDate:J
    const/4 v2, 0x0

    .line 146
    .local v2, defaultValue:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_4d

    .line 147
    const-string v7, "default_value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 148
    move-object v6, v2

    .line 150
    :cond_4d
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_96

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_96
    if-nez v6, :cond_6

    const-string v6, ""

    goto/16 :goto_6

    .line 160
    .end local v0           #appPolicy:Landroid/os/Bundle;
    .end local v1           #cateBundle:Landroid/os/Bundle;
    .end local v2           #defaultValue:Ljava/lang/String;
    .end local v3           #dueDate:J
    .end local v5           #keyBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_9c
    const-string v6, ""

    goto/16 :goto_6
.end method
